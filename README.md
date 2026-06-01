# SkySafe Analytics: Indian Aviation Incident Analysis

## Overview

SkySafe Analytics is a data analysis project that explores historical aviation incidents in India using Exploratory Data Analysis (EDA) techniques in R. The project focuses on identifying patterns, trends, and risk factors associated with aviation incidents through data cleaning, statistical summaries, and visual analytics.

The analysis examines flight phases, aircraft manufacturers, flight types, incident causes, fatality patterns, and long-term trends to generate insights into aviation safety and operational risks.

---

## Objectives

* Clean and preprocess aviation incident data.
* Analyze incident distributions across different flight phases.
* Identify the most common aircraft manufacturers involved in incidents.
* Examine passenger and military flight incident proportions.
* Investigate the leading causes of aviation incidents.
* Analyze fatality trends and the most severe incident causes.
* Visualize long-term aviation incident trends over time.
* Generate actionable insights from historical aviation safety data.

---

## Dataset

The dataset contains historical Indian aviation incident records with information such as:

* Date of incident
* Flight phase
* Aircraft manufacturer
* Flight type
* Number of occupants
* Crew members
* Survivors
* Fatalities
* Incident reasons

---

## Technologies Used

* R Programming
* Tidyverse
* Lubridate
* Readxl
* Scales
* ggplot2

---

## Project Workflow

### 1. Data Inspection

* Loaded aviation incident dataset from Excel.
* Examined dataset structure and dimensions.
* Checked data types and missing values.

### 2. Data Cleaning

* Removed empty records.
* Corrected column naming inconsistencies.
* Converted date fields into proper date formats.
* Extracted year information for temporal analysis.
* Converted numerical variables into appropriate data types.

### 3. Exploratory Data Analysis

#### Flight Phase Analysis

Identified which stages of flight experience the highest number of incidents.

#### Aircraft Manufacturer Analysis

Analyzed the top aircraft manufacturers associated with reported incidents.

#### Flight Type Distribution

Compared incident frequencies between passenger and military aircraft operations.

#### Incident Cause Analysis

Investigated the most common causes contributing to aviation incidents.

#### Fatality Analysis

Examined the causes responsible for the highest number of fatalities.

#### Time Series Analysis

Visualized long-term aviation incident trends across decades using smoothed trend analysis.

---

## Key Insights

* Certain flight phases show significantly higher incident frequencies.
* A small number of manufacturers account for a large proportion of incidents.
* Specific incident causes contribute disproportionately to fatalities.
* Aviation incident patterns have evolved over time, reflecting changes in safety regulations and operational practices.
* Time-series analysis reveals long-term trends in aviation safety performance.

---

## Visualizations

The project includes:

* Bar Charts
* Horizontal Bar Charts
* Donut Charts
* Fatality Analysis Plots
* Time-Series Trend Visualizations

These visualizations help uncover patterns and support data-driven interpretation of aviation safety trends.

---

## Repository Structure

```text
├── indian aviation incidents.xlsx
├── aviation_eda.R
├── README.md
└── visualizations/
```

---

## Future Enhancements

* Correlation analysis between fatalities, occupants, and crew size.
* Geographic analysis of incident locations.
* Interactive dashboards using Shiny.
* Predictive modeling for aviation risk assessment.
* Machine learning-based incident severity prediction.

---

## Author

**Janhavee Singh**

Aspiring Data Analyst | AI & Machine Learning Enthusiast

This project demonstrates practical skills in data cleaning, exploratory data analysis, statistical interpretation, and data visualization using R.

