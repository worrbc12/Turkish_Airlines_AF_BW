DROP TABLE "Time_Period";
DROP TABLE "Weather_Table";
DROP TABLE "TK_Stock_Price";
DROP TABLE "TK_Traffic_Update";

CREATE TABLE "Time_Period" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Time_Period" PRIMARY KEY (
        "Year","Month"
     )
);

SELECT * FROM "Time_Period";


CREATE TABLE "Weather_Table" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "Condition" VARCHAR   NOT NULL,
    "Condition_Count" INT   NOT NULL
);

SELECT * FROM "Weather_Table";

CREATE TABLE "TK_Stock_Price" (
    "Year" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "Avg Close" INT   NOT NULL,
    "Avg High" INT   NOT NULL,
    "Avg Low" INT   NOT NULL,
    "Avg Volume" INT   NOT NULL
);

SELECT * FROM "TK_Stock_Price";


CREATE TABLE "TK_Traffic_Update" (
    "Month" VARCHAR   NOT NULL,
	"Year" INT   NOT NULL,
    "No_Landing" INT   NOT NULL,
    "Available_Seats_Km" INT   NOT NULL,
    "Revenue_Passenger_Km" INT   NOT NULL,
    "Passenger_Load_Factor" INT   NOT NULL,
    "Passengers_Carried" INT   NOT NULL,
    "Cargo_and_Mail" INT   NOT NULL,
    "Km_Flown" INT   NOT NULL,
    "Int_Trns_Pass_Carried" INT   NOT NULL
);

SELECT * FROM "TK_Traffic_Update";


ALTER TABLE "Weather_Table" ADD CONSTRAINT "fk_Weather_Table_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");

ALTER TABLE "TK_Stock_Price" ADD CONSTRAINT "fk_TK_Stock_Price_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");

ALTER TABLE "TK_Traffic_Update" ADD CONSTRAINT "fk_TK_Traffic_Update_Year_Month" FOREIGN KEY("Year", "Month")
REFERENCES "Time_Period" ("Year", "Month");
