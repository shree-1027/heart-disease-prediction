💖 **Heart Disease Prediction Dashboard** 💡

📋 **Overview:**
This project involves the development of a **Heart Disease Prediction Dashboard** that leverages data analysis and visualization techniques to predict the likelihood of heart disease in patients. The project integrates **Excel** for data cleaning and processing, **SQL** for querying and data manipulation, and **Power BI** for creating a comprehensive, interactive dashboard for visualizing key insights.

🎯 **Objective:**
The goal of this project is to develop an easy-to-use, interactive dashboard that healthcare professionals can use to assess patients' heart disease risk based on key features. The project combines data manipulation and predictive analysis to help users gain meaningful insights into heart disease factors.

⚙️ **Technologies Used:**
- 📊 **Excel**: Data cleaning, formatting, pivot tables, and dashboard creation.
- 💾 **SQL**: Writing queries based on questions to retrieve, manipulate, and filter data.
- 🖼️ **Power BI**: Creating custom columns, DAX measures, and interactive visuals.

🔍 **Key Features:**

**Excel**:
- ✅ **Data Cleaning**: The dataset is cleaned by removing duplicates, handling missing values, and standardizing column names.
- 🎨 **Data Formatting**: The dataset is formatted for better readability and consistency (e.g., converting data types, handling outliers).
- 📊 **Pivot Tables**: Pivot tables are used to summarize and aggregate key information (e.g., Heart Disease Distribution by Gender, Depression Induced by Exercise, etc.).
- 💻 **Dashboard**: An Excel dashboard is created to present an overview of key metrics, including visualizations like bar charts and summary tables.

**SQL**:
- 📝 **Questions-Based Queries**: SQL queries are written to answer specific questions, such as:
  - Patients with high cholesterol or Resting_Bps and heart disease?
  - Chest Pain Type and risk percentage?
  
These queries help filter and manipulate the raw data to generate insights.

**Power BI**:
- 📊 **Custom Columns**: Custom columns are added to the dataset to generate new labels or categories based on existing data. For example:
  - **Age Group**: A custom column categorizes patients into age groups such as `<30`, `30-39`, `40-49`, etc.
  - **Resting Bps Categories**: A custom column categorizes patients' resting blood pressure (Resting Bps) into groups like Low, Normal, High, and Very High based on thresholds.

- 📐 **DAX Measures**: DAX (Data Analysis Expressions) measures are used to calculate key metrics dynamically, such as:
  - **Risk Score**: A measure to calculate the overall risk score based on multiple factors like age, cholesterol, and blood pressure.
  - **Risk Category**: A DAX measure that dynamically assigns the risk category (Low Risk, Medium Risk, High Risk) to each patient based on calculated risk scores or thresholds.

- 📈 **Visuals**: Interactive visuals like bar charts, pie charts, and scatter plots are created to display:
  - Heart disease risk prediction based on various patient features.
  - Correlation between risk factors (e.g., age, gender, cholesterol level,etc).
  - Distribution of heart disease occurrences across different demographics.
  
These visuals allow users to explore the data interactively, identify patterns, and make informed decisions.

📊 **Data:**
The dataset used in this project contains multiple attributes related to heart disease, including:

- **Patients**: Identifier for each patient.
- **Age**: The age of the patient (e.g., 45, 60).
- **Gender**: The gender of the patient (e.g., Male, Female).
- **Chest Pain Type**: The type of chest pain experienced by the patient (e.g., Typical Angina, Atypical Angina, Non-Anginal Pain).
- **Resting Bps**: The patient's resting blood pressure in mm Hg.
- **Cholesterol**: Cholesterol level in mg/dl.
- **Fasting Blood Sugar**: Whether the patient's fasting blood sugar is greater than 120 mg/dl (1 = true; 0 = false).
- **Resting ECG**: Resting electrocardiographic results (0, 1, 2).
- **Max Heart Rate**: Maximum heart rate achieved by the patient during exercise.
- **Exercise Angina**: Whether the patient experiences exercise-induced angina (1 = Yes; 0 = No).
- **Oldpeak**: Depression induced by exercise relative to rest.
- **St Slope**: Slope of the peak exercise ST segment (e.g., Upsloping, Flat, Downsloping).
- **Target**: Whether the patient has heart disease (1 = Yes; 0 = No).

🖥️ **Usage:**
To interact with the dashboard, follow these steps:
1. **Power BI**:
   - Download the Power BI file (`Heart_Disease_Prediction.pbix`).
   - Open the `.pbix` file in Power BI Desktop to explore the interactive visuals and analyses.
2. **SQL**:
   - Use the provided SQL queries to interact with the raw data in a database.
3. **Excel**:
   - Open the Excel file to view the cleaned data and summary dashboard with pivot tables and basic visualizations.

📚 **Instructions:**
1. Download the Power BI file to your system.
2. Open the `.pbix` file in Power BI Desktop.
3. Use the Excel file for additional data processing and to view the summary pivot tables and visualizations.
4. Run the SQL queries on your database to retrieve insights based on specific questions about heart disease.

🤝 **Contributing:**
Feel free to fork this repository, contribute, or open issues for improvements. Pull requests are welcome!

📜 **License:**
This project is licensed under the [MIT License](./LICENSE). See the LICENSE file for details.

