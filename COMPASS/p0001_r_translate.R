# used in tandem with the tab 3 cleaning program- -- translated from john brintons code of same name
# Load necessary libraries
library(dplyr)
library(haven)   # For reading SAS datasets
library(zscorer) # For WHO growth calculations
library(anthro)  # For CDC growth calculations
library(readr)   # For writing CSV files

# Read the dataset
play$weight_oz = as.numeric(play$weight_oz)
play$height_in = as.numeric(play$height_in)
play$BSA_sqm = as.numeric(play$BSA_sqm)
play$weight_kg = play$weight_oz*0.0283495
play$height_cm = ifelse(play$height_in==0,NA,play$height_in*2.54)
play = play %>% mutate(sex12 = case_when(Sex == "Male" ~ 1, Sex == "Female" ~ 2, TRUE ~ NA))
data <- play

# Convert column names to lowercase
colnames(data) <- tolower(colnames(data))

# Define age in months
data <- data %>%
  mutate(age_months = agedays/30)

# Calculate BMI
data <- data %>%
  mutate(bmi = weight_kg / (height_cm / 100) ^ 2)

# Calculate WHO z-scores for weight-for-age, height-for-age, and BMI-for-age
# data <- data %>%
#   mutate(
#     waz = getWGS(sexObserved= sex,firstPart=weight_kg, secondPart = age_months, index = "wfa")$z,
#     haz = getWGS(age_months, sex, height_cm, index = "hfa")$z,
#     bmiz = getWGS(age_months, sex, bmi, index = "bfa")$z
#   )

data2 = data %>% filter(!is.na((sex12)))%>% filter(!is.na((age_months)))%>% filter(!is.na((weight_kg))) %>% select(arbpersonid, sex12, weight_kg, age_months) %>% filter(age_months > 0)
getCohortWGS(data = data2,sexObserved="sex12",firstPart="weight_kg", secondPart = "age_months", index = "wfa")


# Calculate CDC z-scores
data <- data %>%
  mutate(
    waz_cdc = anthro_zscores(age = age_months, sex=sex, weight=weight_kg, "wfa")$zwei,
    haz_cdc = anthro_zscores(age=age_months, sex=sex, lenhei=height_cm, "hfa")$zlen,
    bmiz_cdc = anthro_zscores(age=age_months,lenhei=height_cm,weight=weight_kg, sex=sex, "bfa")$zbmi
  )

# Categorize nutritional status based on WHO criteria
data <- data %>%
  mutate(
    stunted = ifelse(haz < -2, 1, 0),
    underweight = ifelse(waz < -2, 1, 0),
    overweight = ifelse(bmiz > 1, 1, 0)
  )

# Select required columns and export to CSV
data %>%
  select(arbpersonid, age_months, sex, weight_kg, height_cm, waz, haz, bmiz, waz_cdc, haz_cdc, bmiz_cdc, stunted, underweight, overweight) %>%
  write_csv("growth_zscores.csv")
