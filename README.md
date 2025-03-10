# **Bike Buyers Dataset**

Analysis bike buyers based on my personal project

## **Background**

The project that I did which I used as an exercise to improve my analytical skill in the field of data analyst

The purpose of this project is to see how the features listed in the data affect the customer's decision to buy a bike

## **Data Collection**
this dataset consist of various features related to the factors that influence the customer's decision to buy a bike

these features include the following:
1. ID
2. marital status
3. gender
4. income
5. children
6. education
7. occupation
8. home owner
9. cars
10. commute distance
11. region
12. age
13. purchased bike

## **Dataset Source**
I got this bike purchases analysis from one of the YouTube data analyst channels which is studying Excel, then I tried to do further analysis using SQL and Python and data visualization using Power BI.

## **Exploratory Data Analysis**

### **Analysis using Excel**
The initial stage of the data analysis is to perform data cleansing using Excel, which I often use Google Sheets for. The first thing I do is remove duplicates from the data so that the data is clean and ready to be used for further analysis. When viewed from the data, there is nothing else to clean, because there are no nulls or empty data, or data that does not match.

### **Analysis using SQL**

I created a new tabble for the bike purchase analysis data

```sql
CREATE TABLE bike_buyers
(  ID integer,
   marital_status varchar,
   gender varchar,
   income float,
   children integer,
   education varchar,
   occupation varchar,
   home_owner varchar,
   cars integer,
   commute_distance varchar,
   region varchar,
   age integer,
   purchased_bike varchar
)
```
After creating a new table, the data file is imported into postgresql so that the data has been filled in.

Then I started analyzing several things using postgresql, such as:

1. Customer Demographics Analysis: Here I discuss general characteristics such as marital status, income, number of children, education and age of customers who buy bikes.

2. Effect of occupation on bike purchase: The relationship between a customer’s occupation and the decision to purchase a bike

3. Effect of Home Ownership on Bicycle Purchases: See if home ownership plays a role in bike purchases.

4. Relationship Between Number of Cars and Bike Purchases: Observe whether the number of cars owned (cars) affects the propensity to purchase a bike.

5. Effect of Commuting Distance to Work on Bike Purchases: Analyze how commute distance relates to the propensity to purchase a bike.

6. Geographic Area Analysis: Examine how bike sales vary across regions.

### **Analysis using python**
before I analyze, I would liek to attach the python library used along with the preparation data, perform inspection of data, check missing of data and missing values data

Then I load a data
```python
#load data
df = pd.read_csv('bike_buyers.csv')
inspect_data (df, n_rows=10)
```
![image](https://github.com/user-attachments/assets/2cf3f427-72e3-41b4-bf9f-c9bfe985d62e)

also, I checked missing data

then, I did analysis of regression linear for segmentation analysis and prediction analysis 

```python
#for segmentation analysis

#regression linear anaylsis

import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
import matplotlib.pyplot as plt

#load a data into pandas Dataframe
df = pd.read_csv('bike_buyers.csv')

#remove any special characters and convert to float
def clean_currency(value):
  return float(value.replace('$', '').replace(',', ''))

df['Income'] = df['Income'].apply(clean_currency)

#the features that using in the data
X = df[['Income', 'Age', 'Children', 'Cars']]

#the target variable (dependent variable) to be predicted
y = df['Income']

#divide data into training data and test data
#80% as training data and 20% as test data

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

#create a regression linear model
model = LinearRegression()
model.fit(X_train, y_train)

#make predictions using regression models on test data
y_pred = model.predict(X_test)

#model performance evaluation
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

print(f'Mean Squared Error (MSE): {mse}')
print(f'R-squared (R2): {r2}')

#visualization of regression results
plt.scatter(y_test, y_pred)
plt.xlabel('Actual Income')
plt.ylabel('Predicted Income')
plt.title('Scatter plot: Actual Income vs Predicted Income')
plt.show()
```
![image](https://github.com/user-attachments/assets/e6bdf3e5-f850-4fa1-805e-0ad9f6062504)

```python
#for prediction analysis

#Regression Linear Analysis

import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import mean_squared_error, r2_score

# Load data into a pandas DataFrame
dataframe = pd.read_csv('bike_buyers.csv')

# Remove dollar sign and commas, then convert to float
dataframe['Income'] = dataframe['Income'].replace('[\$,]', '', regex=True).astype(float)

y_train = dataframe['Income']

# Separate features (X) and targets (y)
X = dataframe[['Age', 'Children', 'Cars']]
y = dataframe['Income']

# Split data into train and test data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Perform data scaling
scaler = StandardScaler()
X_train_scaled = scaler.fit_transform(X_train)
X_test_scaled = scaler.transform(X_test)

# Create regression linear model
model = LinearRegression()

# Train the model on the training data
model.fit(X_train_scaled, y_train)

# Income prediction using test data
y_pred = model.predict(X_test_scaled)

# Model evaluation using Mean Squared Error (MSE) and R-squared metrics
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

print(f'Mean Squared Error (MSE): {mse}')
print(f'R-squared: {r2}')
print('Koefisien Regresi:', model.coef_)
print('Konstanta Regresi:', model.intercept_)
```
![image](https://github.com/user-attachments/assets/748d1af3-ba45-4866-8daa-e3646bb096f1)

for more detail on this project, you can go to my blog in here: https://medium.com/@nfathiaaa/bike-buyers-dataset-data-analysis-project-e379ed89c3a3

Thank you!
