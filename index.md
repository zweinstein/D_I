---
title       : Real World Insights into Complementary, Alternative, and Integrative Health Approaches
subtitle    : A Twitter Text Minding Study
author      : Zhen Wang
job         : Albert Einstein College of Medicine
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : default      # 
widgets     : [mathjax, bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---



## Motivation

Both the World Health Organization (WHO) and the US National Institutes of Health (NIH) have made strategic plans to integrate orthodox medicine with complementary and alternative approaches for promoting public health and developing patient-centered and prevention-focused healthcare. Based on the most recent National Health Interview Survey in 2012, more than 3 in 10 American adults use complementary, alternative, and integrative (CAI) approaches to health and wellness. Prompt analysis of real-time real-world use of and attitudes toward CAI approaches in American population can help decision-making in healthcare reform and determining potential market value of CAI approaches. 

Disclaimer: All rights reserved. I initiated this project at the semi-finalist stage of my Data Incubator fellowship application, and plan to continue developing this project regardless of my application status. You are most welcome to contact me if you also have a passion for investigating CAI health with data science and would like to work together.

--- 

## Data Source and Objectives
    
Twitter is a microblogging system with over 100 million users generating 500 million tweets per day, and half of Twitter users are located in US. I am using Twitter text mining to discover what people are tweeting about CAI approaches and the sentiment associated with them. 
In the end, an interactive online App can be developed based on this data project, with functions to explore and visualize the use of and attitudes toward CAI approaches in different regions and the changes over time. Potential users of the App include government policy makers, CAI practitioners, health insurers, investors interested in CAI approaches, and text-mining hobbyists.

I scraped tweets from [Twitter API](https://dev.twitter.com/overview/api) using the TwitteR package for R. Jeffrey Breen has published a twitter sentiment analysis tutorial in his [GitHub repository](https://github.com/jeffreybreen/twitter-sentiment-analysis-tutorial-201107). 

---

## Word Clouds Visualization

Tweets about CAI Approaches during the Week of April 10, 2016 suggest some of the most popular CAI approaches are associated with acne treatment, breast cancer, and weight loss. The world clouds also illustrate overall positive sentiment regarding CAI approaches as indicated by words such as “extremely powerful”, “powerful herb”. 

<img src="assets/fig/unnamed-chunk-2-1.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

---

## Total Sentiment Score

The algorithms calculate the sentiment score of each word based on [NRC Word-Emotion Association Lexicon](http://saifmohammad.com/WebPages/NRC-Emotion-Lexicon.htm), and sum up all the sentiment scores for the entire collection of tweet data. The tweets are mostly positive regarding CAI approaches. Deeper text mining will be conducted to identify more specific contexts for the positive and negative sentiment, respectively. 

<img src="assets/fig/unnamed-chunk-3-1.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />


