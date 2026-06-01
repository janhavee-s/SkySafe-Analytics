# ✈️ SkySafe Analytics: Indian Aviation Incident Analysis

## Overview

SkySafe Analytics is an Exploratory Data Analysis (EDA) project that investigates historical aviation incidents in India to uncover patterns, safety risks, and operational trends. Using R and data visualization techniques, the project transforms raw aviation incident records into actionable insights regarding flight safety, accident causes, fatality trends, and aircraft operations.

The analysis combines data cleaning, statistical exploration, and visual storytelling to provide a comprehensive understanding of aviation incident dynamics across different flight phases, aircraft manufacturers, and time periods.

---

## Objectives

* Clean and preprocess aviation incident data for analysis.
* Identify trends and patterns in aviation incidents.
* Analyze incidents across flight phases and aircraft manufacturers.
* Compare passenger and military flight incident distributions.
* Investigate the leading causes of aviation incidents.
* Examine fatality patterns and high-risk incident causes.
* Visualize long-term aviation safety trends over time.
* Generate data-driven insights to support aviation safety awareness.

---

## Dataset

The dataset contains historical Indian aviation incident records, including:

* Incident Date
* Flight Phase
* Aircraft Model
* Manufacturer
* Flight Type
* Number of Occupants
* Crew Members
* Survivors
* Fatalities
* Incident Cause/Reason

---

## Technologies Used

* **R Programming**
* **Tidyverse**
* **ggplot2**
* **Lubridate**
* **Readxl**
* **Scales**

---

## Project Workflow

### 1. Data Inspection

* Loaded aviation incident records from Excel.
* Examined dataset dimensions and structure.
* Checked data types and missing values.

### 2. Data Cleaning & Preparation

* Removed incomplete and empty records.
* Corrected column naming inconsistencies.
* Converted date fields into proper date formats.
* Extracted yearly information for trend analysis.
* Standardized numerical variables.

### 3. Exploratory Data Analysis

#### Flight Phase Analysis

Analyzed incident frequency across different stages of flight to identify high-risk operational phases.

#### Manufacturer Analysis

Examined aircraft manufacturers most frequently associated with reported incidents.

#### Flight Type Analysis

Compared incident distributions between passenger and military aviation operations.

#### Incident Cause Analysis

Identified the most common contributing factors behind aviation incidents.

#### Fatality Analysis

Evaluated which incident causes resulted in the highest number of fatalities.

#### Time-Series Analysis

Visualized long-term aviation incident trends using smoothed temporal analysis.

---

## Key Insights

* Certain flight phases experience significantly higher incident frequencies.
* A small number of manufacturers account for a substantial share of reported incidents.
* Specific incident causes contribute disproportionately to fatalities.
* Aviation safety patterns have evolved over time due to regulatory and operational changes.
* Long-term trend analysis highlights shifts in aviation risk and safety performance.

---

## Visualizations

The project includes:

* Flight Phase Distribution Analysis
* Aircraft Manufacturer Analysis
* Passenger vs Military Incident Distribution
* Incident Cause Analysis
* Fatality Analysis
* Time-Series Trend Analysis

These visualizations provide an intuitive understanding of aviation safety trends and risk factors.

---

## Repository Structure

```text
SkySafe-Analytics/
│
├── indian aviation incidents.xlsx
├── aviation_eda.R
├── README.md
└── visualizations/
```

---

## Future Enhancements

* Correlation analysis between fatalities, occupants, and crew size.
* Geographic visualization of incident locations.
* Interactive dashboards using R Shiny.
* Predictive modeling for aviation risk assessment.
* Machine learning-based incident severity prediction.

---

## Skills Demonstrated

* Data Cleaning & Preprocessing
* Exploratory Data Analysis (EDA)
* Data Visualization
* Statistical Analysis
* Time-Series Analysis
* R Programming
* Business Insight Generation

---

## Author

**Janhavee Singh**

B.Tech Computer Science | Data Analytics | Artificial Intelligence | Machine Learning

This project demonstrates practical expertise in transforming raw aviation data into meaningful insights through statistical analysis and visualization techniques.
