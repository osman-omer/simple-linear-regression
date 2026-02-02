--------------------------------------------------------
# Project: Medical Insurance Cost Prediction
# Goal: Build a Simple Linear Regression model to quantify 
#       the relationship between age and insurance charges
#
# Variables:
#   - Predictor (X): Age (Years) — Continuous
#   - Outcome (Y): Charges (USD) — Continuous
#
# Methodology:
#   1. Exploratory Data Analysis (EDA)
#   2. Model Fitting (Ordinary Least Squares - OLS)
#   3. Checking Model Assumptions (Residual Analysis)
#   4. Interpretation of Results
#
# Author: Osman Omer Mustafa (Medical Student & Data Analyst Trainee)
# Date: February 2026
  --------------------------------------------------------
  
# 0) Load required libraries
library(tidyverse)
library(broom)
library(ggfortify)

# 1) Read data
data <- read_csv("insurance.csv")

# 2) Quick structure check
glimpse(data)


# 4) Scatter plot with regression line 
scatter_plot <- ggplot(data, aes(x = age, y = charges)) +
  geom_point(alpha = 0.6) +  
  geom_smooth(method = "lm", se = TRUE) +    
  labs(
    x = "Age (Years)",
    y = "Insurance Charges (USD)",
    title = "Age vs Insurance Charges (Simple Linear Regression)"
  )
scatter_plot

# 5) Fit model
model <- lm(charges ~ age, data = data)

# 6) view model
result <- summary(model)
result

model_perf <- glance(model)
model_perf



# 1. Residuals vs Fitted
p1 <- autoplot(model, which = 1)
ggsave("plots/residuals_vs_fitted.png", plot = p1, width = 6, height = 4)

# 2. Normal Q-Q
p2 <- autoplot(model, which = 2)
ggsave("plots/qq_residuals.png", plot = p2, width = 6, height = 4)

# 3. Scale-Location
p3 <- autoplot(model, which = 3)
ggsave("plots/scale_location.png", plot = p3, width = 6, height = 4)

# 4. Cook's Distance
p4 <- autoplot(model, which = 5)
ggsave("plots/cooks_distance.png", plot = p4, width = 6, height = 4)
