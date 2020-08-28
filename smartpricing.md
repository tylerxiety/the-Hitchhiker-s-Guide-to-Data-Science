# Notes for the Smart Pricing Project

The Smart Pricing project is to develop pricing strategies for a petrol station 
chain using machine learning and optimization algorithms. This project is under 
supervision of Noah Zhao.

## Topics
### 1. Data Diagnosis

- data validation and cleaning: keep as much data as possible in this stage.

### 2. Design Pattern
- folder structure, and naming
- coding pattern: scientific
- code organization: notebook, scripts, functions

### 3. Requirement Gathering
- business understanding and empathy
- boundary and pain points

### 4. Modeling
- machine learning + optimization algorithms
- ML part is to estimate the demand function
- requirements: accuracy, usability (ie, optimizable, fast computation)

- model building: 
get data -> validate data -> build target variable (demand curve) -> define metrics
-> baseline models -> model comparison -> model tuning -> model training -> feature engineering
-> model selection -> harden features -> harden model -> test -> deploy
- deliverables : model tracker, models, model APIs, docs
- metrics: MAE, RMSE, MSE, MAPE, RMSLE, runtime performance
- split data: random, random with stratification, time series, growing windows
- cross validation:LOOCV, K fold, K fold with stratification, time series,
- model levels: global, local
- model types: stats model, traditional ML models, DL models.


