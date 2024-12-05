---
title: Updates to Google Consent Management
author: Martijn van Vreeden
date: '2023-12-19'
slug: updates-to-google-consent-management
categories:
  - google-analytics
  - google tag manager
tags:
  - data governance
  - google-analytics4
  - google tag manager
---

# Updates to Google Consent Management

In March 2024, a new European privacy regulation will be implemented. This will have an impact on how we collect and process data.

Why is this important?
* [A new European regulation (Digital Markets Act) requires big tech to protect its users. They are responsible for respecting and collecting user consent](#chapter1)
* [As a result, we need to update our way of collecting data in GTM to "Consent Mode v2"](#chapter2)
* [All Google Advertising tracking will go through GA4](#chapter2)
* Consent Management will look different in GTM, as a result of the update
* If we don't use this new technique, we cannot effectively use Google advertising products, starting **march 2024**
* Coincidentally, Google Chrome will stop accepting 3rd party cookies end of March 2024 too, which means the urgency to shift is even higher

What do we need to do to migrate?
* Implement the new consent mode by Google in GTM
* Check integrations between GA4 and Google Ads products
* Create conversions in GA4 to import in Google Advertising platforms as replacements for Google Ads Conversion tags
* Create audiences in GA4 to import in Google Advertising platforms as replacements for Google Remarketing tags

## Digital Markets Act (DMA){#chapter1}

The new Digital Markets Act (DMA), also known as Regulation 2022/1925, was approved in 2023 and will come into force in March 2024. DMA introduces various requirements to Google and other big companies, nominated as gatekeepers, in particular stating that the gatekeepers will be responsible for collecting the user consent.

### What does Google do to comply to DMA?
In response to this and other privacy regulations, Google has updated its Consent Mode to version 2

As a result, without implementing Consent Mode V2, no data about new EEA users will be captured by advertising platforms like Google Ads and GA4 after March 2024, significantly impacting advertising strategies and effectiveness. 

Google Consent Mode V2, introduced in late November 2023, is an updated version of the original Consent Mode developed by Google.

## What is Consent Mode?{#chapter2}
Google’s Consent Mode is a mechanism that allows businesses to pass consent signals from their cookie banner to Google, ensuring that their users’ consent choices are respected. Essentially, it lets you communicate whether your website visitors have agreed to share their personal data with Google for the use of advertising, including measurement and personalization.

### How it works
When a user consents, the cookie banner communicates this to Google via the Google Consent Mode, allowing normal data collection. And vice-versa: if consent is rejected, Google reduces data collection of those users.

### What’s new in Consent mode v2?
The main difference is the introduction of two additional consent states: ad_user_data and ad_personalization, which can be attributed to a user’s consent.

* ad_user_data is used to determine whether the user gives consent for Google’s advertising purposes. This will be set to ‘granted’ when the user actively agrees to their data being shared with Google through a consent banner interaction. – Used to share personal data (ie email, hashed email) with Google platforms
* ad_personalization controls whether data can be used for ads personalization (e.g. for remarketing). It can only be set to ‘granted’ when users specifically agree (through the consent banner) that their data is shared with Google for the purpose of ad personalization for marketing purposes – Used to run personalized ads (ie remarketing)

These additional consent levels help us get the required consent to continue our work as-is.

## GA4 data for Advertising purposes{#chapter3}
We collect data in GA4. For GA4 we need analytics consent in the Netherlands (it’s an analytics tool). If advertising consent is also given, we also provide the same data from GA4 to the additional advertising tools.

The additional data is sent in 2 different ways:

* Audiences to target with ads
* Conversions to measure the performance of ads
