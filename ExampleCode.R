#### Load required packages ####

# For data analysis and plotting
require(pryr) # for evaluating object_size()
require(lubridate) # work with time stamps of tweets
require(data.table)
require(reshape2)
require(RColorBrewer) # Good color for word clouds
require(ggplot2)

# Twitter API Authentication
require("twitteR")
require("ROAuth")

# For natural language processing (NPL)
require(quanteda)

# For sentiment analysis
require(syuzhet)

# Use Google Geocoding API to get location data
require(dismo)
require(maps)
require(XML)

workDir = getwd()
dir.create("data")
dataDir = file.path(workDir, "data")
dir.create("intermediate")
interDir = file.path(workDir, "intermediate")
dir.create("out")
outDir = file.path(workDir, "out")

#### Work with Twitter Search API ####

# Set key, secret, token, token_secret correctly, and authenticate to Twitter API
setup_twitter_oauth(key, secret, token, token_secret)

# Set up Keywords for Twitter Search
keywords1 <- c("integrative", "alternative", "complementary", "holistic", "herbal", "oriental",
               "chiropractic", "osteopathic", "electromagnetic", "traditional+chinese")
keywords2 <- c("+health", "+medicine", "+therapy", "+treatment")
keywords <- c(as.vector(outer(keywords1, keywords2, paste0)), "acupuncture", "cupping", "ayurveda", 
              "homeopathy", "naturopathy", "massage", "tai+chi", "yoga", "dietary+supplement", 
              "nutrition", "reiki", "qigong", "meditation", "biofeedback", "hypnosis", 
              "visualization+guided+imagery", "energy+healing", "folk+remedies", "folk+medicine", 
              "lifestyle+diets")

keynames <- paste0("t.", gsub("\\+","_",keywords)) # file names

for (i in 1:length(keywords)) {
  name <- keynames[i]
  tweets  <- searchTwitter(keywords[i], n=50000, lang="en")
  saveRDS(tweets, file=file.path(dataDir, paste0(name,'.rda' )))
}

#### Text Cleaning and Formatting ####

for (name in keynames) {
  df.name <- sub("t", "df", name)
  df.file <- twListToDF(readRDS(file=file.path(dataDir, paste0(name,'.rda' ))))
  assign(df.name, df.file)
}

dnames <- ls(pattern = "^df\\.")
tweetsDF0709 <- rbindlist(lapply(dnames, get))
object_size(tweetsDF0709) # reduced size by 90 % from the original data.

cleanText <- function(tweetsDF) {
        text <- tweetsDF$text
        text <- toLower(text)
        text <- gsub("http.*\\s*", "", text)
        text <- gsub("rt", "", text) # Remove ReTweet labels
        text <- gsub("&amp", " ", text) # HTML code behind the symbol & (an ampersand)
        text <- gsub("_", " ", text) 
        text <- text[!grepl("^\\s*$", text)] # Remove empty text documents if exists
}
text <- cleanText(tweetsDF0709)
text <- unique(text) # This removes a lot of noise in data

#### Content Mining ####
# Group different types of therapies for analysis
general <- paste0(c("integrative", "alternative", "complementary", "holistic", "oriental"),
                  collapse = "|")
intervention <-  paste0(c("chiropractic", "osteopathic", "electromagnetic", "massage",
                  "acupuncture", "cupping"), collapse = "|")
medicin <- paste0(c("herb", "ayurveda", "homeopathy", "naturopathy", "traditional chinese medicine"),
             collapse = "|")
excercise <- paste0(c("yoga", "tai chi", "qigong"), collapse = "|")
meditat <- paste0(c("meditation", "reiki", "biofeedback", "hypnosis", "imagery"), collapse = "|")

groupnames <- c("general", "intervention", "medicin", "excercise", "meditat")
groups <- paste("t", groupnames, sep=".")
st <- paste("st", groupnames, sep=".")

# Create document-feature matrices of unigrams and bigrams
gram1 <- dfm(text, toLower = F, ngrams = 1, stem = T, removeTwitter = T, 
             removeHyphens = T, ignoredFeatures = c(stopwords()))
saveRDS(gram1, 'out/t0709gram1_meditat.rda')
gram2stem <- dfm(text, toLower = F, ngrams = 2, removeTwitter = T, 
                 removeHyphens = T, stem = T, ignoredFeatures = c(stopwords())) 
saveRDS(gram2stem, 'out/t0709gram2_meditat.rda')

# The document-term matrix can be easily visualized as a Word Cloud:
par(mfrow=c(1,2))
plot(gram1, max.words=160, random.order=F, # min.freq=60,
     colors = brewer.pal(6, "Dark2"), scale = c(5, 0.5))
plot(gram2stem, max.words=60, random.order=F, # min.freq=60,
     colors = brewer.pal(6, "Dark2"), scale = c(3, 0.3))

#### Sentiment Analysis ####
tweets0708only <- tweetsDF0709[created > ymd_hms('2016-07-08 00:00:00') & created < ymd_hms('2016-07-09 00:00:00') ]
text <- cleanText(tweets0708only)

for (i in 1:5 ) {
  assign(groups[i], text[grepl(pattern = get(groupnames[i]), text)])
  tw.texts <- tokenize(tt, what = "word", removeNumbers = T, removePunct = T, simplify = T,
                       removeSeparators = T, removeTwitter = T, removeHyphens = T)  
  sentiment_vector <- get_nrc_sentiment(tw.texts)
  sentiment_total <- sort(colSums(sentiment_vector), decreasing = T)
  st.table <- data.frame(count=sentiment_total, sentiment=names(sentiment_total))
  names(st.table)[1] <- paste0("count.", groupnames[i])
  assign(st[i], st.table)
}

st.all <- cbind(st.general, st.intervention, st.medicin, st.excercise, st.meditat)
st.all <- data.table(st.all[, !duplicated(colnames(st.all))])
names(st.all) <- c("Concept","Sentiment","Intervention","Medicine","Excercise", "Meditation")
st.long <- melt(st.all, id.vars="Sentiment")

#### Plot 1 ####
par(mfrow=c(1,1))
g.st <- ggplot(st.long, aes(x=Sentiment, y=value, fill=variable)) + 
        geom_bar(stat="identity", position = "stack") +
        labs(title="Sentiment Scores for Tweets about Different CAI Approaches on July 8th, 2016", 
             x="", 
             y="Counts") +
        theme(axis.text.x=element_text(angle=45, hjust=1), axis.text=element_text(size=16),
              axis.title=element_text(size=18,face="bold"), legend.text=element_text(size=12),
              title=element_text(size=18,face="bold"))
print(g.st)

####  Location Analysis ####

# Analyze tweets locations with examples on April 21
tweets0421 <- readRDS('../Apr30pc/data/tweets0421.rda')

dfYoga0421 <- tweets0421[grepl("yoga", tweets0421$text, ignore.case = T)]

# Since Google Geocoding API has a usage limit (per hour per IP address)
# Choose random samples from the dataframe for the proof-of-concept analysis:
n = round(0.1 * nrow(dfYoga0421))
set.seed(0)
dfYoga <- dfYoga0421[sample(nrow(dfYoga0421), n)]

userInfo <- lookupUsers(dfYoga$screenName)  
userFrame <- twListToDF(userInfo) 

locatedUsers <- !is.na(userFrame$location)

# Approximate lat/lon from textual location data.
locations <- geocode(userFrame$location[locatedUsers],override_limit=TRUE)  
with(locations, plot(longitude, latitude))

# Save the location data
YogaLoc <- locations

# Do the same for other therapies of interest, or load previously saved data
HypLoc <- readRDS('data/HypUserLocations0421.rda')
HerbLoc <- readRDS('data/HerbUserLocations0421.rda')
AcupLoc <- readRDS('data/AcupUserLocations0421.rda')
AyurLoc <- readRDS('data/AyurUserLocations0421.rda')
ReikiLoc <- readRDS('data/ReikiUserLocations0421.rda')

#### Plot 2 ####
# Compare locations of people who tweeted about different therapies 
worldMap <- map_data("world") 

zp1 <- ggplot(worldMap)
zp1 <- zp1 + geom_path(aes(x = long, y = lat, group = group), 
                       colour = gray(2/3), lwd = 1/3)
zp1 <- zp1 + geom_point(data = AyurLoc, 
                        aes(x = longitude, y = latitude),
                        colour = "red", alpha = 1/3, size = 0.5) +
  geom_point(data = HypLoc,  
             aes(x = longitude, y = latitude),
             colour = "darkgreen", alpha = 1/3, size = 0.5) +
  geom_point(data = AcupLoc, 
             aes(x = longitude, y = latitude),
             colour = "blue", alpha = 1/3, size = 0.5) 

zp1 <- zp1 + coord_equal() 
zp1 <- zp1 + theme_minimal() 
zp1 <- zp1 + xlab("longitude") + ylab("latitude") + 
  ggtitle("English Tweets about Ayurveda (Red), Hypnosis (Green), and Acupuncture (Blue)") 

print(zp1)

AyurLoc_usa <- AyurLoc[grepl("USA", AyurLoc$interpretedPlace),]
AcupLoc_usa <- AcupLoc[grepl("USA", AcupLoc$interpretedPlace),]
ReikiLoc_usa <- ReikiLoc[grepl("USA", ReikiLoc$interpretedPlace),]
HypLoc_usa <- HypLoc[grepl("USA", HypLoc$interpretedPlace),]

usaMap <- map_data("state")

zp2 <- ggplot(usaMap) 
zp2 <- zp2 + geom_path(aes(x = long, y = lat, group = group), 
                       colour = gray(2/3), lwd = 1/3)
zp2 <- zp2 + geom_point(data = AyurLoc_usa,  
                        aes(x = longitude, y = latitude),
                        colour = "red", alpha = 1/3, size = 1) +
  geom_point(data = HypLoc_usa,  
             aes(x = longitude, y = latitude),
             colour = "darkgreen", alpha = 1/3, size = 1) +
  geom_point(data = AcupLoc_usa,  
             aes(x = longitude, y = latitude),
             colour = "blue", alpha = 1/3, size = 1) 
zp2 <- zp2 + coord_equal()  
zp2 <- zp2 + theme_minimal() 
zp2 <- zp2 + xlab("longitude") + ylab("latitude") + 
  scale_x_continuous(limits = c(-125, -65)) +
  scale_y_continuous(limits = c(23, 50)) +
  ggtitle("English Tweets about Top Alternative Therapies in the Contiguous 48 States") 
print(zp2) 
