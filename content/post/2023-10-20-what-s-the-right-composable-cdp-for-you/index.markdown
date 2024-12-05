---
title: Understanding Composable CDP's
author: Martijn van Vreeden
date: '2023-10-20'
slug: understanding-composable-cdp
categories:
  - cdp
tags:
  - data governance
  - data to value
  - google-analytics4
  - google analytics

---

# Understanding Composable CDP’s

One of the new hot topics in tech is the “Composable CDP.” Databricks is sharing a good definition of a Composable CDP in their article written together with [Hightouch](hightouch.com) and [Snowplow Analytics](https://snowplow.io/).

> “A Composable CDP consists of the same components as their off-the-shelf counterparts; Data Collection, Data Storage and Modeling, and Data Activation. By implementing a best-in-class product at each layer of the Composable CDP, organizations can achieve a far more extensible CDP solution that can solve problems well beyond the common use cases of off-the-shelf CDPs.” - [source](https://www.databricks.com/blog/2022/06/24/the-emergence-of-the-composable-customer-data-platform.html)

Experts all rave about the benefits of having a Composable CDP to drive value with your digital data. This doesn’t mean that they don’t disagree about the best approach to implement a Composable CDP. I’ve found two opposing perspectives on how to build a Composable CDP which I’m going to share with you in this article.

## Swiss army knife vs best of breed components

One could argue that if you want the best CDP, find specialty tools for each of the components of a CDP. This is a benefit of being composable. We will call this the Best of Breed method. Buy an amazing knife, scissors and corkscrew and you’ll have a great tool set, in which each of the tools is there only to serve its single purpose.

Others would say this is not necessary; simply find a great provider of many of the components and get started. Think of a Swiss army knife. The knife, scissors, corkscrew are all there and work fine, but they are not the best knife, scissors and corkscrew out there.

## Best of Breed components of a CDP

[Alex Dean](https://www.linkedin.com/in/alexdean/) from Snowplow Analytics wrote [an excellent article](https://sourceoftruth.substack.com/i/137891097/towards-switzerland-non-negotiables-for-your-primary-tag) that delivers a strong case to make your data collection tag be more like Switzerland; it should serve the purpose of collecting data and sending it to a place to be stored. Basically taking the knife from the Swiss army knife and buying a fancy Japanese Gyuto knife instead. From there on wards, also look for a great place to store data and another solution specialized in data activation to work those parts, etc. Let’s call them the fancy pair of scissors and corkscrew.

{{% webp alt="The Gyuto knife of CDP's" image="/img/gyuto_knife.jpg" %}}

By calling the data collection tag “Switzerland” Alex is stating that it works completely neutral of other parts of the Composable CDP. The tag doesn’t play favorites by supporting analytics better than data activation or vice versa. It also shouldn’t play an active role in other functions of the CDP like storage, modeling, analytics, reporting or data activation. Other technologies should pick up those tasks, hence being composable.

Some of the other benefits of this best of breed approach are:
- No vendor lock-in. Each individual part of the CDP can be replaced, without affecting other parts of the CDP. If you want to replace the knife, you can still use the corkscrew and scissors. They are disconnected.
- Neutral like Switzerland also means that the component is not leaning to support a small part of the functionality of the CDP more than others. This could happen when an analytics tool, or traditional CDP handles the data collection. The neutral tag would serve independently, to help all the other components of the CDP to excel.
- Alex argues that you get the best data collection tool in the business. Not just offering basic event tracking, but the Gyuto knife of data collection. Coming with some features a Swiss army knife doesn’t provide (ie data governance and compliance).

While Alex is making a good case for the data collection / Gyuto knife on behalf of Snowplow Analytics, other companies like Hightouch are making a case to be the best in breed for reverse ETL (excellent pair of scissors). There are companies out there focusing on each of the parts of the Composable CDP.

Unfortunately, there are also some downsides to this best of breed approach, which I’ll explain based on the other approach. The Swiss army knife.

## The Swiss army knife of Composable CDP’s

{{% webp alt="The Swiss Army Knife of CDP's" image="/img/swiss_army_knife.png" %}}

CDP’s are not new to our martech space. Companies like Segment have been around for many years, providing you with ways to manage you data and do all of the things a CDP should do (Data Collection, Data Storage and Modeling, and Data Activation). And even though many digital analysts complain about the features GA4 provides, it opens some interesting doors to the CDP world too. [Gunnar Griese](https://gunnargriese.com/posts/ga4-the-cdp-you-didnt-know-you-had/) and [Arjen Hettinga](https://turntwo.com/article/the-new-engine-of-google-analytics-4-four-powerful-examples) recently wrote some really interesting articles about how Google Analytics 4 data has opened doors to leveraging the GA4 - BigQuery connection and make it work for you like parts of a lightweight Composable CDP.

According to Arjen it opens a world of possibilities:
- Build your own Marketing Data Hub (data activation + analytics)
- Data Activation
- Machine learning with Google Cloud Platform (analytics)

The Google Cloud provides you with all of the basic CDP components, all-in-one.
Gunnar is calling GA4 a lightweight composable CDP. Which isn’t technically true (only together with the Google Cloud environment it is), but it does support several important components of a CDP.

Gunnar describes all the different components of the Google Cloud and how they could be leveraged as part of a composable CDP. And even though the components are all part of the Google Cloud, you can still replace some of them relatively easy with others from outside the Google realm.

The upsides of the Swiss army knife method are shared by Gunnar and Arjen.
- Use tools you may already have in place (ie GA4 and Big Query) and get started quickly
- Google is a one stop shop to build a CDP. No need to look anywhere else, you’ve got all you need in the Google Cloud
- It’s relatively cheap; Google provides excellent components at a decent price

## Which way to go? Swiss army knife or best of breed components?

There’s no easy answer to this question. My consultant knee jerk response is saying “it depends.”
While a Swiss army knife sounds pretty neat, it comes with some serious downsides. There is a real vendor lock to consider.

While Gunnar is giving detailed instructions on how to connect Google products, he’s avoiding the disconnect with 3rd parties.
What if we want to connect GA4 audiences to other advertising partners like LinkedIn, Facebook or Bing Ads? How easily can we activate the data with an email partner or CRM outside of the Google realm? This requires some real Google Cloud skills or additional components from outside Google for the data activation part of the Composable CDP.

And consider the data collection part of GA4. How are we governing the data, ensuring data quality is up to par? Are we able to leverage the data real-time or is there a big delay? These are not strong features of GA4 as a data collection component of the CDP.

And even though it’s easy to point out flaws of this Swiss army knife approach, it’s no different for the Best of Breed method. It will take a lot more time to on-board individual tools. Developing the skill set required to manage all the separate components properly is not going easy for small teams. The costs of managing these tools will also be significantly higher than a Swiss army knife.

And last but not least, it takes vision, practice and real data chops to get more out of a Gyuto knife than a Swiss army knife. Is your team able to deliver significantly higher value from the best of breed tools? Is the data maturity already at that level in the company?

## Conclusion

There is a lot to say for using one of the two types of composable CDP’s as described above. Considering everything that’s happening inside the martech space and outside factors (end of 3rd party cookies, privacy/GDPR, etc), I believe a lot of companies will slowly move into the CDP space. Starting with the best of breed method is probably a step too far.

I’d recommend most companies to start with finding the easiest way to drive business value from their simple composable CDP and slowly moving into a more mature CDP stack. The Swiss army knife is a great place to start and a great way to start driving value from your data for the business. Once you see a part of your CDP become an obstacle to drive more business value, there’s always a Gyuto knife alternative out there to replace it.
