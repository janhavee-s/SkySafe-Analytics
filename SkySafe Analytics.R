# EXPLORATORY DATA ANALYSIS (EDA) - INDIAN AVIATION INCIDENTS 
# ==============================================================================


library(tidyverse) #a collection of R packages (like dplyr, ggplot2, readr, etc.) for data manipulation and visualization.
library(lubridate) #simplifies date/time conversions
library(scales) #provides formatting tools (like percentages and axis scaling).
library(readxl) #reads Excel (.xlsx) files.
# ==============================================================================

#Step 1: Basic inspection → Data overview
# 1. Load & initial inspection
df <- read_excel("indian aviation incidents.xlsx") #creates a dataframe
view(df)
str(df) #datatype, obs, var, sample

cat("--- Data Shape ---\n")
print(dim(df)) #dimension (row, column)

cat("\n--- Initial Data Types & Preview/ Data Structure Before Cleaning ---\n")
glimpse(df) #same as str()

cat("\n--- Missing Values (Before Cleaning) ---\n")
print(colSums(is.na(df)))
# ==============================================================================

#Step 2: Cleaning → Making data usable
# 2. Clean & prepare
df_clean <- df %>%
  filter(!if_all(everything(), is.na)) %>%        #Removes rows where all columns are NA (completely blank entries)
  rename(Date_Raw = Year,
         Survivors = Surviours) %>%              #Corrects typos and gives columns consistent names
  mutate(
    Date = dmy(Date_Raw),                        #Converts DD-MM-YYYY(string) to Date(object)
    Year = year(Date),                           #Extracted year from Date(object)
    Deaths = as.numeric(Deaths),                 #Converts numeric fields into numeric data type
    Crew = as.numeric(Crew),
    Occupants = as.numeric(Occupants),
    Survivors = as.numeric(Survivors)
  )

cat("\n--- Data Structure After Cleaning ---\n")
glimpse(df_clean)

cat("\n--- Missing Values (After Clean) ---\n")
print(colSums(is.na(df_clean)))
# ==============================================================================

#Step 3: Summary → Understanding numeric variables
# 3. Numerical summary
cat("\n--- Numerical Summary ---\n")
df_clean %>% #print selective summary (imp variables)
  select(Survivors, Deaths, Crew, Occupants, Year) %>%
  summary() %>%
  print()
# ==============================================================================

#Step 4: Visual EDA → Spotting patterns & insights
# 4. Categorical analyses (PLOTS) EDA viasualization- exploratory part
# 4.1 Flight Phase
#Shows how many incidents occurred during different phases (takeoff, landing, cruise, etc.). Uses a bar chart (geom_col).
plot_phase <- df_clean %>%
  count(`Flight Phase`) %>%
  mutate(`Flight Phase` = fct_reorder(`Flight Phase`, n, .desc = TRUE)) %>%
  ggplot(aes(x = `Flight Phase`, y = n, fill = `Flight Phase`)) +
  geom_col(show.legend = FALSE) +
  labs(title = "Incidents by Flight Phase", y = "Count", x = "") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
print(plot_phase)

# 4.2 Top 10 Manufacturers
#Filters, counts, and plots the top aircraft manufacturers involved in incidents. It adds labels (geom_text) to show counts above bars.
plot_mfg <- df_clean %>%
  filter(!is.na(Manufacturer) & Manufacturer != "NA") %>%
  count(Manufacturer) %>%
  slice_max(n, n = 10) %>%
  mutate(Manufacturer = fct_reorder(Manufacturer, n, .desc = TRUE)) %>%
  ggplot(aes(x = Manufacturer, y = n)) +
  geom_col(fill = "deepskyblue4") +
  geom_text(aes(label = n), vjust = -0.5, size = 3) +
  labs(title = "Top 10 Aircraft Manufacturers Involved in Incidents", y = "Count", x = "") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
print(plot_mfg)

# 4.3 Flight Type (Donut)
#Passenger vs Military. Creates a donut chart using coord_polar() — visualizing proportions between flight types.
plot_type_pie <- df_clean %>%
  count(Type) %>%
  mutate(prop = n / sum(n)) %>%
  ggplot(aes(x = 2, y = prop, fill = Type)) +
  geom_col(width = 1, color = "white", stat = "identity") +
  coord_polar("y", start = 0) +
  xlim(0.5, 2.5) +
  theme_void() +
  geom_text(aes(label = percent(prop, accuracy = 0.1)), position = position_stack(vjust = 0.5)) +
  labs(title = "Proportion of Passenger vs. Military Incidents", fill = "Flight Type")
print(plot_type_pie)

# 4.4 Top 10 Incident Reasons
#Counts and plots the top 10 reasons for incidents (like weather, technical failure, etc.). Uses a horizontal bar chart for clarity.
plot_reason <- df_clean %>%
  filter(!is.na(Reason) & Reason != "NA") %>%
  count(Reason) %>%
  slice_max(n, n = 10) %>%
  mutate(Reason = fct_reorder(Reason, n)) %>%
  ggplot(aes(x = n, y = Reason)) +
  geom_col(fill = "coral4") +
  geom_text(aes(label = n), hjust = -0.2, size = 3) +
  labs(title = "Top 10 Reasons for Incident", x = "Count", y = "") +
  theme_minimal()
print(plot_reason)

# 4.5 Top 10 Deaths Reason
#Aggregates total deaths per reason, selects the top 10 most fatal causes, and plots them. Gives insight into which reasons led to the highest loss of life.
plot_deaths_by_reason <- df_clean %>%
  filter(!is.na(Reason) & Reason != "NA") %>%
  group_by(Reason) %>%
  summarise(Total_Deaths = sum(Deaths, na.rm = TRUE), .groups = "drop") %>%
  slice_max(Total_Deaths, n = 10) %>%
  ggplot(aes(x = Total_Deaths, y = fct_reorder(Reason, Total_Deaths))) +
  geom_col(fill = "darkslategrey") +
  geom_text(aes(label = Total_Deaths), hjust = -0.2, size = 3) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.1))) +
  labs(title = "Top 10 Reasons of Death",
       x = "Total Deaths",
       y = "Reason") +
  theme_minimal()
print(plot_deaths_by_reason)
# ==============================================================================

cat("\n--- EDA Finished ---\n")



