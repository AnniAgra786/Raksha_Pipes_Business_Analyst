# Raksha_Pipes_Business_Analyst

![Screenshot 2024-05-17 175112](https://github.com/AnniAgra786/Raksha_Pipes_Business_Analyst/assets/109506450/21b08d02-4057-43ef-a0d8-d1fc2c8d96ae)

## Fake Data Generation and Database Connection Guide

This repository provides a guide on how to generate fake data using Python's Faker library, create a database using SQL, and connect the SQL database to Power BI for data visualization.

## Fake Data Generation

#### 1. Importing Libraries:


from faker import Faker 
import pandas as pd 
import random 

#### Initialize Faker 
fake = Faker()

#### 2. Creating Dataframes:
customers = pd.DataFrame({ 
    'Customer_ID': range(1001, 1501), 
    'First_Name': [fake.first_name() for _ in range(500)], 
    'Last_Name': [fake.last_name() for _ in range(500)], 
    'Email': [fake.email() for _ in range(500)], 
    'Phone': [fake.phone_number() for _ in range(500)], 
    'Address': [fake.address() for _ in range(500)] 
})
![Screenshot 2024-05-16 235904](https://github.com/AnniAgra786/Raksha_Pipes_Business_Analyst/assets/109506450/e805e788-adad-4b37-9180-b3d51a532b23)

#### 3. Add Primary keys to Ensure relation between all tables:

Copy code
customers.set_index('Customer_ID', inplace=True)
#### 4. Convert Dataframes to CSV:
Copy code
customers.to_csv('customers.csv', index=False)
## Creating Database
#### 1. Create Database:
CREATE DATABASE raksha_pipes;
#### 2. Use Database:
USE raksha_pipes;
3. Showing Tables:
C
SHOW TABLES;
#### Create tables
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
    ![SQL_Querry_1](https://github.com/AnniAgra786/Raksha_Pipes_Business_Analyst/assets/109506450/e27dd10e-c1dc-4553-ab07-8caf9799c326)

## Connecting SQL Database to Power BI
#### Open Power BI Desktop.
#### In the Home tab, click on 'Get Data'.
#### Select 'Database' > 'MySQL Database' (assuming MySQL).
#### Enter Server and Database information (Server: localhost or your server address, Database: raksha_pipes).
#### Click 'OK' and authenticate if necessary.
#### Choose the tables you want to import (e.g., customers).
#### Click 'Load' to import the data into Power BI.
![Dashboard](https://github.com/AnniAgra786/Raksha_Pipes_Business_Analyst/assets/109506450/361ccdb7-350c-486f-9a8a-f5c7fd7d88db)
## KPIs

#### Sales by SubCategory:
Analyzing sales by subcategories helps identify top-performing product lines, guiding inventory management, marketing strategies, and product development efforts efficiently.

#### Percentage of Orders by Payment Mode:
Understanding payment mode preferences aids in optimizing payment processing systems, enhancing customer satisfaction, and tailoring promotional offers to incentivize preferred payment methods.

#### Percentage of Orders by Each Supplier:
Monitoring supplier-wise order distribution facilitates supplier relationship management, quality control assessments, and strategic sourcing decisions to ensure a robust and diversified supply chain.

#### Orders by Month and Year:
Tracking orders over time enables spotting seasonal trends, forecasting demand accurately, scheduling resources effectively, and planning marketing campaigns aligned with peak buying periods.

#### Profit by Month and Year:
Analyzing profit variations over months and years guides financial planning, cost optimization strategies, and business expansion decisions by identifying periods of profitability and areas for improvement.

#### Sales by Category: 
Categorizing sales data provides insights into product segment performance, facilitating targeted marketing efforts, assortment planning, and resource allocation for maximizing revenue generation.
Orders Delivered by Shippers: Monitoring shipping performance ensures timely order fulfillment, enhances customer satisfaction, and enables negotiation with shipping partners for cost-effective and efficient delivery services.

#### Profit and Count of Orders from Each City: 
Evaluating profitability and order frequency by city assists in geographic market analysis, identifying lucrative markets, and tailoring marketing strategies and inventory management to local demand patterns.

#### Average Delivery Days for Day of Order:
Calculating average delivery times helps in managing customer expectations, improving operational efficiency, and identifying bottlenecks in the supply chain for timely order fulfillment and enhanced customer satisfaction.



