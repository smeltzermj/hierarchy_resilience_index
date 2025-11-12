# Great Power Influence and Hierarchy Resilience Index (HRI)

This project constructs a multidimensional dataset measuring the relative influence of great powers — the United States, Russia, China, and Germany — over 48 countries across Europe and Eurasia from 1991–2018. It operationalizes “hierarchy” across four domains (security, economic, informational, and diplomatic) and integrates them into composite models representing different theoretical conceptions of state influence.

## Overview

The project began under Dr. Yuval Weber’s supervision at the Daniel Morgan Graduate School of National Security (2018–2019). I designed and implemented the data collection, modeling, and coding process, combining more than a dozen open-source datasets into a unified dyadic time-series panel. The resulting Hierarchy Resilience Index (HRI) serves as an early prototype of what later evolved into the Great Powers Influence Index (GPII).

## Data and Methodology

Coverage: 48 countries, 1991–2018

Superpowers analyzed: United States, Russia, China, Germany

## Indicators:

Security Hierarchy – Arms sales, defense pacts, military bases (SIPRI, NATO, CSTO)

Economic Hierarchy – Export/import and FDI dependencies (OEC, Eurostat, IMF CDIS)

Informational Hierarchy – Press freedom and digital resilience (RSF, V-Dem Digital Society Project)

Diplomatic Hierarchy – UNGA voting congruence and head-of-state meetings (Voeten dataset, official archives)

Each indicator was normalized (0–1) and aggregated into category-level scores, which were then combined into theoretical model variants (All-Equal, Realist, Cordell Hull, Information, and Diplomatic).

## Tools and Techniques

Data scraping and cleaning with R and Python

Network analysis and dyadic modeling

Time-series visualization and GIS mapping (R/Plotly)

Data normalization, weighting, and model construction in R and Excel

## Next Steps

I designed the framework for further expansion, including:

Live API data pipelines for dynamic updates

NLP and machine learning models to quantify qualitative data (e.g., media tone, elite networks)

Integration with graph-based influence models for simulation and forecasting
