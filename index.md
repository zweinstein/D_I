---
title       : Real World Insights into Complementary, Alternative, and Integrative Health Approaches
subtitle    : A Twitter Text Minding Study
author      : Zhen Wang, Ph.D.
job         : Albert Einstein College of Medicine 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : default      # 
widgets     : [mathjax, bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---



## Motivation

* Chronic diseases cause [70% of all deaths worldwide](http://www.who.int/ncds/introduction/en/) and [88% deaths in USA](http://www.who.int/nmh/countries/usa_en.pdf?ua=1). 
* Conventional medicine can treat the symptoms but not cure a chronic disease; treating people with chronic diseases account for [86% of health care costs in US](http://www.cdc.gov/chronicdisease/overview/).
* Healthcare reform from disease control to preventative and personalized care.
* Strategic plans of [World Health Organization (WHO)](http://www.who.int/medicines/publications/traditional/trm_strategy14_23/en/) and [US government](https://nccih.nih.gov/about/ataglance) to integrate orthodox medicine with alternative approaches to health and wellness. 
* [33% American adults](https://nccih.nih.gov/research/statistics/NHIS/2012/key-findings) use complementary, alternative, and integrative (CAI) approaches to health and wellness. 
* **Prompt analysis of real-time real-world use of and attitudes toward CAI approaches can help decision-making in healthcare reform and determining potential market value of CAI approaches.** 
* **Try my [App](https://zw-einstein.shinyapps.io/ShinyMap/)!**

--- 

## Twitter Provides Real-time Real-world Insights
    
![flowchart](FlowChart.png)

---

## CAI Uses Reflected by Tweets on April 21, 2016

* Tweets were collected for April 10-29, 2016, using [60 search keywords](https://github.com/zweinstein/D_I/blob/gh-pages/keywords.txt) defined based on [examples given by the White House](http://www.whccamp.hhs.gov/fr2.html).
* Nutrition, yoga, massage, and meditation are the 4 most frequently tweeted CAI approaches. 
* When those keywords are disabled, ayurveda, hypnosis, and acupuncture appear to be the top approaches. Other top approaches include reiki, homeopathy, herbal medicine, tai chi.


```r
require(RColorBrewer)
load("data/gram0421.Rdata")
par(mfrow=c(1,2))
plot(gram1, max.words=160, random.order=F, # min.freq=60,
     colors = brewer.pal(6, "Dark2"), scale = c(4, 0.4))
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): hypnosi
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): acupunctur
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): medicin
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): treatment
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): homeopathi
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): supplement
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): chines could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): stage could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): music could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): massag could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): benefit
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): mani could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): lifestyl
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): may could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): way could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): youtub could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): system could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): respons
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): option could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): give could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): spiritu
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): relax could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): becom could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): ayurv could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): women could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): come could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): patanjali
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): treat could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): dietari
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): chakra could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): credibl
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): bst could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): insharupa
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): patient
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): hand could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): follow could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): join could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): weightloss
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): rise could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): homeopath
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): world could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): chang could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): healthrang
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): balanc could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): post could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): long could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): share could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): indian could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): scienc could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## complementari could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): bigpharma
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): ayurved
## could not be fit on page. It will not be plotted.
```

```r
plot(gram2, max.words=80, random.order=F, # min.freq=60,
     colors = brewer.pal(6, "Dark2"), scale = c(3, 0.3))
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## incurable_diseas could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## providing_treat could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## alternative_medicin could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## ayurveda_research could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## ayurveda_product could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## based_ayurveda could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## alternative_therapi could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## stage_hypnosi could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## treatment_opt could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## healthranger_bigpharma could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## bigpharma's_war could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## singing_dragon could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## healthy_lifestyl could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## integrative_medicin could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## traditional_chines could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## social_homeopathi could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## chiropractic_car could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## traditional_medicin could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## osteopathic_medicin could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## ayurveda_help could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## herbal_product could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## perform_rapid could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## stage_hypnotist could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## followayurveda_arbuda could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## hypnosis_everyth could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## functional_medicin could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): herbal_suppl
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## healing_reiki could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## homeopathy_saynotobullshit could not be fit on page. It will not be
## plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## herbalcure_healthyliv could not be fit on page. It will not be plotted.
```

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)

---

## CAI Approaches Are Used Everywhere in the World

English tweets about <span style="color:red"> Ayurveda </span>,
<span style="color:green"> Hypnosis </span>, and 
<span style="color:blue"> Acupuncture </span> in the World.


```r
require(maps)
require(ggplot2)
HypLoc <- readRDS('data/HypUserLocations0421.rda')
AcupLoc <- readRDS('data/AcupUserLocations0421.rda')
AyurLoc <- readRDS('data/AyurUserLocations0421.rda')
worldMap <- map_data("world") 
zp1 <- ggplot(worldMap)
zp1 <- zp1 + geom_path(aes(x = long, y = lat, group = group),  # Draw map
                       colour = gray(2/3), lwd = 1/3)
zp1 <- zp1 + geom_point(data = AyurLoc,  # Add points indicating users
                        aes(x = longitude, y = latitude),
                        colour = "red", alpha = 1/3, size = 0.5) +
  geom_point(data = HypLoc,  # Add points indicating users
             aes(x = longitude, y = latitude),
             colour = "darkgreen", alpha = 1/3, size = 0.5) +
  geom_point(data = AcupLoc,  # Add points indicating users
             aes(x = longitude, y = latitude),
             colour = "blue", alpha = 1/3, size = 0.5) 
zp1 <- zp1 + coord_equal()  
zp1 <- zp1 + theme_minimal()  # Drop background annotations
zp1 <- zp1 + xlab("longitude") + ylab("latitude") + 
  ggtitle("English Tweets about Alternative Therapies on April 21, 2016") 
  
print(zp1)
```

```
## Warning: Removed 390 rows containing missing values (geom_point).
```

```
## Warning: Removed 318 rows containing missing values (geom_point).
```

```
## Warning: Removed 217 rows containing missing values (geom_point).
```

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png)

---

## CAI Approaches Are Used Everywhere in USA

English tweets about <span style="color:red"> Ayurveda </span>,
<span style="color:green"> Hypnosis </span>, and 
<span style="color:blue"> Acupuncture </span> in USA.


```r
require(ggplot2)
HypLoc_usa <- readRDS('data/HypUserLocatUSA0421.rda')
AcupLoc_usa <- readRDS('data/AcupUserLocatUSA0421.rda')
AyurLoc_usa <- readRDS('data/AyurUserLocatUSA0421.rda')
usaMap <- map_data("state")
zp2 <- ggplot(usaMap) 
zp2 <- zp2 + geom_path(aes(x = long, y = lat, group = group),  # Draw map
                       colour = gray(2/3), lwd = 1/3)
zp2 <- zp2 + geom_point(data = AyurLoc_usa,  # Add points indicating users
                        aes(x = longitude, y = latitude),
                        colour = "red", alpha = 1/3, size = 1) +
  geom_point(data = HypLoc_usa,  # Add points indicating users
             aes(x = longitude, y = latitude),
             colour = "darkgreen", alpha = 1/3, size = 1) +
  geom_point(data = AcupLoc_usa,  # Add points indicating users
             aes(x = longitude, y = latitude),
             colour = "blue", alpha = 1/3, size = 1) 
zp2 <- zp2 + coord_equal()  
zp2 <- zp2 + theme_minimal()  # Drop background annotations
zp2 <- zp2 + xlab("longitude") + ylab("latitude") + 
  scale_x_continuous(limits = c(-125, -65)) +
  scale_y_continuous(limits = c(23, 50)) +
  ggtitle("English Tweets about Alternative Therapies in the Contiguous 48 States on April 21, 2016")

print(zp2)
```

```
## Warning: Removed 1 rows containing missing values (geom_point).
```

```
## Warning: Removed 7 rows containing missing values (geom_point).
```

![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.png)

---

## Acupuncture: What for? How? Opinions?

English Tweets about Acupuncture during April 10-29, 2016:
* People use acupuncture for weight loss, back pain, hot flash, breast cancer...
* People use various types of acupuncture including needle, massage, cupping, moxibustion, and electro-acupuncture.
* Positive opinions indicated by "can help", "great", "like", "relax"...


```r
gram1acup <- readRDS('data/gram1acup.rda')
gram2acup <- readRDS('data/gram2acup.rda')
par(mfrow=c(1,2))
plot(gram1acup, max.words=160, random.order=F, # min.freq=60,
     colors = brewer.pal(6, "Dark2"), scale = c(4, 0.4))
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): offer could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): medic could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): electr could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): clinic could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): patient
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): bodi could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): session
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): heal could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): read could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): altern could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): find could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): magic could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): studi could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): fact could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): herb could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): way could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): becom could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): cancer could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): learn could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): may could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): peopl could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): cure could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): deep could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): stress could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): genit could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): best could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): chiropract
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): love could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): meridian
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): candid could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): holist could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): moxibust
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): knive could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): empti could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): truck could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): mere could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): reggiemil
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): infeil could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): cuistyjon
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): reliev could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): thank could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): prevent
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): moxa could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): stimul could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): right could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): thing could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): doctor could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): allergi
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): migrain
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): feiliti
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): improv could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): xhnew could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): better could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): center could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): headach
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): reduc could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): life could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): suppo could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): electron
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): year could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): line could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): appoint
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): packag could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): patch could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): week could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): will could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): thin could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): anim could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): mani could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): flash could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): chronic
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): news could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): treatment
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): burn could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): pad could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): haci could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): think could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): glass could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): explain
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): call could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): pen could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): yoga could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): output could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): practic
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): show could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): done could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): give could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): ever could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): follow could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): acupressur
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): manag could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): spa could
## not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): communiti
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): healthi
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): trust could
## not be fit on page. It will not be plotted.
```

```r
plot(gram2acup, max.words=80, random.order=F, # min.freq=60,
     colors = brewer.pal(6, "Dark2"), scale = c(3, 0.3))
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): back_becom
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): become_mer
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): needles_help
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): burning_moxa
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## cupping_glass could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## moxibustion_cup could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## electronic_massag could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## stimulator_electron could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## magical_meridian could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## health_electr could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## therapy_devic could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): good_health
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## magnetic_reson could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## quantum_magnet could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## resonance_bodi could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## health_analyz could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): brand_med
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## professional_rubb could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): rubber_educ
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## acumassage_wel could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## actually_work could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): lyapko_appl
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## applicator_mag could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): magic_ribbon
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): ribbon_strap
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): strap_health
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## doctor_explain could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## cupping_packag could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## educational_figur could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): pain_relief
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): low_back
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## menopausal_hot could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): reduce_pain
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): tension_typ
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): neck_pain
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): pain_manag
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## candidate_stand could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## genuine_appreci could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## appreciation_gratitud could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): type_headach
## could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...):
## massage_therapi could not be fit on page. It will not be plotted.
```

```
## Warning in wordcloud::wordcloud(features(x), colSums(x), ...): chronic_pain
## could not be fit on page. It will not be plotted.
```

<img src="assets/fig/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" style="display: block; margin: auto;" />

---

## Overall Positive Feelings About CAI and Acupuncture

* Sentiment score based on [NRC Word-Emotion Association Lexicon](http://saifmohammad.com/WebPages/NRC-Emotion-Lexicon.htm). 
* Mixed feelings, overall positive... 


```r
require(ggplot2)
load("data/st.dataframe_acup.Rdata")
st.all <- readRDS('data/stAll0421.rda')
par(mfrow=c(2,1))
ggplot(st.all, aes(sentiment, count)) +
        geom_bar(stat = "identity", aes(fill = sentiment)) +
        theme(legend.position = "none", axis.text=element_text(size=8),
              axis.title=element_text(size=9,face="bold"),
              title=element_text(size=9,face="bold")) +
        xlab("") + ylab("Total Count") + 
        ggtitle("Total Sentiment Score for Tweets about CAI Approaches April 21, 2016")
```

![plot of chunk unnamed-chunk-6](assets/fig/unnamed-chunk-6-1.png)

```r
ggplot(st, aes(sentiment, count)) +
        geom_bar(stat = "identity", aes(fill = sentiment)) +
        theme(legend.position = "none", axis.text=element_text(size=8),
              axis.title=element_text(size=9,face="bold"),
              title=element_text(size=9,face="bold")) +
        xlab("") + ylab("Total Count") + 
        ggtitle("Sentiment Score for Tweets about Acupuncture April 10-29, 2016")
```

![plot of chunk unnamed-chunk-6](assets/fig/unnamed-chunk-6-2.png)

---

## Conclusions and Future Work
* People are tweeting about CAI approaches all over the world and in USA.
* Top CAI approaches are nutrition, yoga, massage, meditation, ayurveda, hypnosis, acupuncture, reiki, homeopathy, herbal medicine, and tai chi.
 - People use acupuncture for weight loss, pain relief, hot flash, breast cancer.
 - People use needle, massage, cupping, moxibustion, and electro-acupuncture methods.
* Some of my discoveries agree with the two most recent National Health Survey Data in [2007](https://nccih.nih.gov/research/statistics/2007/camsurvey_fs1.htm#health) and [2012](https://nccih.nih.gov/research/statistics/NHIS/2012/key-findings), but the twitter analysis is real time.
* Future work:
 - Conduct the topic mining for other CAI approaches;
 - Explore different methods for opinion mining.
 - Deploy an [App on ShinyApps.io](https://zw-einstein.shinyapps.io/ShinyMap/) or Heroku.
