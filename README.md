# Turkish_Airlines_AF_BW
This is an ETL project which we collected data surrounding the operations of Turkish Airlines: (major hub weather data, airlines traffic data & stock data) to determine if weather & flight traffic has any effect on the stock price between 2014 - 2018.


DATA DESCRIPTION:
CSV Files utilized:
   1. Turkish Airline Traffic Data 2014-18 (multiple files)
   2. Turkish Airline Stock Data 2009-2018 (single file)
   3. Instanbul Weather Data 2009-2018 (single file)
Step One: Data Extract (view Extract - copy 1)
   1. Read csv files into Python/Pandas using "pd.read_csv(".csv")
   2. Run the following for data inspection:
       1. .describe()
       2. .shape()
       3. .isna().sum()
Step Two: Data Transformation (view Extract - copy 1)
   1. Weather Data:
       -create new time series for Weather data
       -merge new time series to existing Weather data
       -rename columns
       -groupby weather Year/Month/Condition/Condition Count
       -export clean weather data back to csv
   2. Stock Data:
       -translate Turkish Months to English Months
       -remove unwanted columns & rename columns
       -groupby Year/Month .mean() for averages/month/year
       -export clean stock data to csv
   3. Traffic Data:
       -read in seperate CSV files
       -merge CSV files on year and month to create single source
       -export clean Traffic Data to csv
Step Three: Load (view turk_database.sql)
   1. QuickDB Diagram for visual of Tables/PK/FK (view .png)
   2. Export Diagram to pgAdmin
   3. Loaded CSV files created in pandas to tables in pgAdmin
