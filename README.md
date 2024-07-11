# HR-Analysis
## Objective: 
*To develop predictive analysis for identifying the employees most likely to get promoted based on various factors such as training performance, KPI completion etc.*
## Key Skills:
*Data collection and preprocessing using Pandas 
Exploratory data analysis(EDA) using Matplotlib and Seaborn
Feature engineering
Model building and evaluation using Scikit-learn*
## Step-by-step guide:
1.Data collection & cleaning:
*Using Pandas 'read_csv' to collect data from training and testing csv files.*
![Screenshot 2024-07-11 192201](https://github.com/MDSoleh/HR-Analysis/assets/99492800/d1b1269d-46fc-4096-a722-47fe2fa214f1)
![Screenshot 2024-07-11 192223](https://github.com/MDSoleh/HR-Analysis/assets/99492800/1089b1d9-d515-4250-a648-e776a35a8d2f)

2.Descriptive statistics:
*Using .describe() to get information about statistical measures like max, min, average etc.*
![Screenshot 2024-07-11 192259](https://github.com/MDSoleh/HR-Analysis/assets/99492800/0b37285c-b40f-4faa-aa47-e8e8b001dfb1)

3.Data exploration:
*Employing countplot, displot, histograms from seaborn, matplotlib libraries for various graphical insights about the datasets.*

Count of employees who got promoted:
![Screenshot 2024-07-11 192555](https://github.com/MDSoleh/HR-Analysis/assets/99492800/ed469e53-128c-4470-9fe3-403613e39ad8)

Count of employees who got promoted wrt to education:
![Screenshot 2024-07-11 192604](https://github.com/MDSoleh/HR-Analysis/assets/99492800/19f34a22-60c6-451d-8b14-06999504e71c)

Count of employees who got promoted wrt to age:
![Screenshot 2024-07-11 192636](https://github.com/MDSoleh/HR-Analysis/assets/99492800/260a758b-da77-44a4-8fca-77f67f397842)

Count of employees who got promoted wrt to previous_year_rating:
![Screenshot 2024-07-11 192656](https://github.com/MDSoleh/HR-Analysis/assets/99492800/95d0c6c4-c83f-484b-816c-ea3ab5fa688d)

Count of employees who got promoted wrt to age & length of service:
![Screenshot 2024-07-11 192721](https://github.com/MDSoleh/HR-Analysis/assets/99492800/f44558ae-f89c-4312-81e7-a41f54cc8b78)
![Screenshot 2024-07-11 192734](https://github.com/MDSoleh/HR-Analysis/assets/99492800/bb6f2b3d-d875-45aa-a61a-3c428289aaad)

Scatter plot for dataset exploration:
![Screenshot 2024-07-11 192749](https://github.com/MDSoleh/HR-Analysis/assets/99492800/407eaa74-8e62-4201-ae25-dda54f9ca764)
![Screenshot 2024-07-11 192832](https://github.com/MDSoleh/HR-Analysis/assets/99492800/7c673a7f-38e6-4bb0-b091-fa6fe1e5fec2)

4.Label conversion for categorical data attributes using LabelEncoder from preprocessing module:
![Screenshot 2024-07-11 192901](https://github.com/MDSoleh/HR-Analysis/assets/99492800/5104b998-d35f-4d21-9cd0-ec20065bf487)
![Screenshot 2024-07-11 192917](https://github.com/MDSoleh/HR-Analysis/assets/99492800/c97f609b-ecd0-4df5-a75d-ef8cb6c909b1)

5.Correlation:
Analyzing inter-dependency between different attributes, here KPI's, award's won & avg_training_score attributes have positive correlation thus having high impact on target variable('is_promoted')
![Screenshot 2024-07-11 192936](https://github.com/MDSoleh/HR-Analysis/assets/99492800/e1ba7221-d1e3-41f3-a497-7d8ce30ac12a)
![Screenshot 2024-07-11 192950](https://github.com/MDSoleh/HR-Analysis/assets/99492800/b3f46737-ce1f-45bc-95a6-aa50c2c3bcb4)
![Screenshot 2024-07-11 193035](https://github.com/MDSoleh/HR-Analysis/assets/99492800/13c1bca5-e383-4ce8-842f-4cfbb5c146e0)

6.Splitting the data:
![Screenshot 2024-07-11 193100](https://github.com/MDSoleh/HR-Analysis/assets/99492800/f1e363c5-a455-4c9a-994d-7fd9e69c1433)

7.XGBoost-classifier:
![Screenshot 2024-07-11 193115](https://github.com/MDSoleh/HR-Analysis/assets/99492800/a5733003-6fa6-4ab1-9728-efaef132ebae)
![Screenshot 2024-07-11 193147](https://github.com/MDSoleh/HR-Analysis/assets/99492800/cc203101-5f68-4a85-9b4d-0d29a76a2ac7)
![Screenshot 2024-07-11 193159](https://github.com/MDSoleh/HR-Analysis/assets/99492800/31d67553-5b0c-4183-aff5-a5751d914dc7)

8.RandomForest:
![Screenshot 2024-07-11 193217](https://github.com/MDSoleh/HR-Analysis/assets/99492800/1af0a135-8f4d-41a8-b623-3485d5e079d2)
![Screenshot 2024-07-11 193230](https://github.com/MDSoleh/HR-Analysis/assets/99492800/dfc0cf23-a2f4-4a0c-bc3f-29855e68cfae)
*Accuracy is not a good parameter for classification models, here focus is on recall or f1-score to make it close to 1.0*
![Screenshot 2024-07-11 203813](https://github.com/MDSoleh/HR-Analysis/assets/99492800/f57b6c06-dc7e-43d0-a10a-6abb869e87c4)

9.Gradient boosting model(GBM):
![Screenshot 2024-07-11 203825](https://github.com/MDSoleh/HR-Analysis/assets/99492800/cea0b2d5-1734-4c07-a768-bc6b26e6027a)

10.Predictions for target variable by different models:
![Screenshot 2024-07-11 203843](https://github.com/MDSoleh/HR-Analysis/assets/99492800/9081bdcc-6e9d-4770-a9dd-863c8c09d034)



















