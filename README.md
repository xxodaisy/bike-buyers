# 🚴‍♂️ Bike Buyers Dataset – Data Analysis Project

## 📌 Overview

This is a personal project aimed at improving my analytical skills in data analysis. The goal of this project is to explore how various factors influence a customer’s decision to purchase a bike.

## 📊 Dataset Description

The dataset consists of multiple features that impact bike purchase decisions, including:

🆔 ID

💍 Marital Status

🚻 Gender

💰 Income

👶 Children

🎓 Education

💼 Occupation

🏠 Home Ownership

🚗 Number of Cars

🚶‍♂️ Commute Distance

🌍 Region

🎂 Age

🚲 Purchased Bike (Yes/No)

## 📥 Data Source
The dataset was sourced from a YouTube data analysis tutorial using Excel. I extended the analysis by incorporating SQL, Python, and Power BI to gain deeper insights.

## 🛠️ Data Processing & Analysis

1️⃣ Data Cleaning (Excel & Google Sheets)

✅ Removed duplicate records

✅ Checked for missing values (no nulls found)

✅ Ensured data consistency


2️⃣ SQL Analysis (PostgreSQL)

Created a structured database for bike buyers

Imported and queried the data to uncover key insights, such as:

🔹 Customer Demographics: Age, income, and family status of buyers

🔹 Occupation vs. Bike Purchase: Which professions are more likely to buy bikes?

🔹 Home Ownership Impact: Do homeowners buy more bikes?

🔹 Car Ownership vs. Bike Purchase: Does owning more cars reduce bike purchases?

🔹 Commute Distance Influence: How does daily commute distance affect bike-buying decisions?

🔹 Regional Trends: Which regions have higher bike sales?

## 💾 SQL Table Schema

```sql
CREATE TABLE bike_buyers (
   ID INTEGER,
   marital_status VARCHAR,
   gender VARCHAR,
   income FLOAT,
   children INTEGER,
   education VARCHAR,
   occupation VARCHAR,
   home_owner VARCHAR,
   cars INTEGER,
   commute_distance VARCHAR,
   region VARCHAR,
   age INTEGER,
   purchased_bike VARCHAR
);
```

**3️⃣ Python Analysis – Regression Modeling**
Using Python, I performed regression analysis to predict customer income based on key features.

📌 Steps Taken:

✔️ Loaded & cleaned the dataset

✔️ Checked for missing values

✔️ Applied Linear Regression for segmentation & prediction analysis

✔️ Visualized regression results using Matplotlib


## 📌 Regression Results:

Mean Squared Error (MSE): {value}

R-squared Score: {value}

Regression Coefficients: {value}

## 📌 Key Libraries Used:
```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
```

## 📈 Data Visualization (Power BI)

I used Power BI to create interactive dashboards, showcasing:

📊 Customer Demographics Distribution

📊 Income vs. Bike Purchases

📊 Commute Distance & Purchase Trends

📊 Occupation Influence on Bike Sales

## 📌 Conclusion

The analysis provided valuable insights into the factors influencing bike purchases. You can read the full report here on Medium.

Thank you for reading! 🚀
