--DROP TABLE "Time_Period";
--DROP TABLE "Weather_Table";
--DROP TABLE "TK_Stock_Price";
--DROP TABLE ""TK_Traffic_Update" ";

CREATE TABLE "Time_Period" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Time_Period" PRIMARY KEY (
        "Year","Month"
     )
);

Select * FROM "Time_Period"

CREATE TABLE "Weather_Table" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "Condition" VARCHAR   NOT NULL,
    "Condition_Count" INT   NOT NULL
);

Select * FROM "Weather_Table"


CREATE TABLE "TK_Stock_Price" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "Avg_Close" Decimal   NOT NULL,
    "Avg_High" Decimal   NOT NULL,
    "Avg_Low" Decimal   NOT NULL,
    "Avg_Volume" Decimal   NOT NULL
);

Select * FROM "TK_Stock_Price"

CREATE TABLE "TK_Traffic_Update" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "No_Landing" Decimal   NOT NULL,
    "Available_Seats_Km" Decimal   NOT NULL,
    "Revenue_Passenger_Km" Decimal   NOT NULL,
    "Passenger_Load_Factor" Decimal   NOT NULL,
    "Passengers_Carried" Decimal   NOT NULL,
    "Cargo_and_Mail" Decimal   NOT NULL,
    "Km_Flown" Decimal   NOT NULL,
    "Int_Trns_Pass_Carried" Decimal   NOT NULL
);

Select * FROM "TK_Traffic_Update"


ALTER TABLE "Weather_Table" ADD CONSTRAINT "fk_Weather_Table_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");

ALTER TABLE "TK_Stock_Price" ADD CONSTRAINT "fk_TK_Stock_Price_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");

ALTER TABLE "TK_Traffic_Update" ADD CONSTRAINT "fk_TK_Traffic_Update_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");