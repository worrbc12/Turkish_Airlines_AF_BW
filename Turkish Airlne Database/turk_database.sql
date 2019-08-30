--DROP TABLE Time_Period;
--DROP TABLE Weather_Table;
--DROP TABLE TK_Stock_Price;
--DROP TABLE TK_Traffic_Update;

CREATE TABLE "Time_Period" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Time_Period" PRIMARY KEY (
        "Year","Month"
     )
);

CREATE TABLE "Weather_Table" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "Weather_Type" VARCHAR   NOT NULL,
    "Mnthly_Wthr_Type_Cnt" INT   NOT NULL,
    CONSTRAINT "pk_Weather_Table" PRIMARY KEY (
        "Year","Month"
     )
);

CREATE TABLE "TK_Stock_Price" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "Avg_Close" INT   NOT NULL,
    "Avg_High" INT   NOT NULL,
    "Avg_Low" INT   NOT NULL,
    "Avg_Volume" INT   NOT NULL,
    CONSTRAINT "pk_TK_Stock_Price" PRIMARY KEY (
        "Year","Month"
     )
);

CREATE TABLE "TK_Traffic_Update" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "No_Landing" INT   NOT NULL,
    "Available_Seats_Km" INT   NOT NULL,
    "Revenue_Passenger_Km" INT   NOT NULL,
    "Passenger_Load_Factor" INT   NOT NULL,
    "Passengers_Carried" INT   NOT NULL,
    "Cargo_and_Mail" INT   NOT NULL,
    "Km_Flown" INT   NOT NULL,
    "Int-to-Int_Trns_Pass_Carried" INT   NOT NULL,
    CONSTRAINT "pk_TK_Traffic_Update" PRIMARY KEY (
        "Year","Month"
     )
);

ALTER TABLE "Weather_Table" ADD CONSTRAINT "fk_Weather_Table_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");

ALTER TABLE "TK_Stock_Price" ADD CONSTRAINT "fk_TK_Stock_Price_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");

ALTER TABLE "TK_Traffic_Update" ADD CONSTRAINT "fk_TK_Traffic_Update_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");