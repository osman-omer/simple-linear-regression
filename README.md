# Project 1 — Simple Linear Regression (Insurance Dataset)

## 📌 Project Goal
Examine how **age** affects **insurance charges** using a simple linear regression model.

## 📊 Dataset
- Source: `insurance.csv`  
- Variables:  
  - `age` (Age of the policyholder in years)  
  - `charges` (Insurance charges in USD)  
  - Other variables present in dataset but not used in this simple regression  

## 🧪 Analysis Overview
- Data inspection with `glimpse()`  
- Scatter plot with regression line to visualize relationship between age and charges  
- Fit a simple linear regression model (`charges ~ age`)  
- Model summary using `broom::tidy()`  
- Model performance check (`R²`, adjusted R², F-statistic)  
- Diagnostic checks:  
  - Linearity and homoscedasticity (residuals vs fitted)  
  - Normality of residuals (QQ plot)  
  - Scale-location plot  
  - Cook's distance for influential points  

## 📈 Key Findings
- Age has a **significant positive effect** on insurance charges.  
- Each additional year of age increases charges by approximately **$258**.  
- R² ≈ 0.089 → age alone explains ~9% of variability in charges.  
- Diagnostic plots reveal slight deviations from linearity, normality, and mild heteroscedasticity.  

## 🖼️ Visualization
Scatter plot with regression line showing relationship between age and charges:  

![Age vs Insurance Charges](plots/scatter_plot.png)  

## 🧠 Conclusion
The simple linear regression model shows a **statistically significant positive relationship** between age and insurance charges. Although age explains only a small portion of the variability, this analysis provides a foundational understanding of how age impacts charges and serves as a basis for future multivariate modeling.  

> Note: This analysis is intended for **learning and methodological practice**, not for insurance decision-making.
