# README: ECON1313 - Assessment 3: Econometrics Project in R

## Overview
This project is a group assignment for the ECON1313 course, focusing on econometric analysis using R. The script demonstrates data preparation, cleaning, descriptive statistics, regression modeling, and hypothesis testing on economic data.

## Author Information
- **Group Members:**
  - **ID 1:** s3938354
  - **ID 2:** s4000175
  - **ID 3:** s3837364
  - **ID 4:** s3877030
  - **ID 5:** s3926760

## Dataset
- **Source Files:**
  - `Data.Rdata`: Raw data used for initial exploration.
  - `CleanData.xlsx`: Cleaned dataset imported for analysis.
  - `CleanData_noNA.xlsx` and `CleanData_noNA_noOUTL_FINAL.xlsx`: Processed datasets with missing values and outliers handled.
- **Description:** The dataset contains economic indicators such as GDP, inflation, unemployment, and Gini coefficients for various countries.

## Key Features
1. **Data Import and Cleaning:**
   - Load raw and cleaned datasets in `.Rdata` or `.xlsx` formats.
   - Handle missing values by replacing them with means or dropping observations.
   - Identify and remove outliers.
2. **Descriptive Statistics:**
   - Summarize variables (e.g., Gini, inflation, GDP growth).
   - Calculate measures such as mean, standard deviation, and more.
3. **Visualization:**
   - Scatter plots to explore relationships between Gini and economic indicators.
   - Boxplots for outlier detection and visualization of transformed variables.
4. **Econometric Modeling:**
   - Fit multiple linear regression models (`lm`) with various predictors.
   - Test for multicollinearity (VIF) and heteroskedasticity (Breusch-Pagan test).
   - Implement log transformations for better model performance.
5. **Hypothesis Testing:**
   - Conduct t-tests and calculate critical values.
6. **Additional Analysis:**
   - Region-specific analysis with binary indicators (e.g., Africa).
   - Export results and summaries using `stargazer`.

## Prerequisites
- **R Version:** 4.x
- **Required Libraries:**
  - `fpp2`, `fpp3`, `readxl`, `dplyr`, `car`, `lmtest`, `stargazer`, `pastecs`
  - Install missing libraries using `install.packages("<library_name>")`.

## How to Use
1. **Set Up the Environment:**
   - Ensure R and RStudio are installed.
   - Install all required libraries.
2. **Run the Script:**
   - Load the script in RStudio.
   - Execute code blocks sequentially for data cleaning, visualization, and modeling.
3. **Modify File Paths:**
   - Update file paths for datasets if they differ from the default paths.

## Notes
- All data cleaning and modeling steps assume datasets are in the specified format.
- Ensure `CleanData.xlsx` is available in the working directory.
- Results from econometric models are exported as `.txt` files for reporting purposes.

## Deliverables
- Cleaned and processed dataset in `.xlsx` and `.Rdata` formats.
- Regression model summaries and hypothesis test results.
- Visualization plots for exploratory and statistical analysis.

## Contact
For any questions or assistance with the script, please contact any group member via the course communication channels.
