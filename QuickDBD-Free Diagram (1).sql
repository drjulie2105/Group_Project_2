-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/VNWqPM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "2000_Democrate" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2000_Democrate" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2004_Democrate" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2004_Democrate" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2008_Democrate" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2008_Democrate" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2012_Democrate" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2012_Democrate" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2016_Democrate" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2016_Democrate" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2000_Republican" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2000_Republican" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2004_Republican" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "writein" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2004_Republican" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2008_Republican" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "writein" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2008_Republican" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2012_Republican" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "writein" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2012_Republican" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "2016_Republican" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "writein" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_2016_Republican" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "turnout_2000" (
    "Year" INT   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "VEP_Total" VARCHAR   NOT NULL,
    "Total_Ballots" INT   NOT NULL,
    "VEP" INT   NOT NULL,
    CONSTRAINT "pk_turnout_2000" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "turnout_2004" (
    "Year" INT   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "VEP_Total" VARCHAR   NOT NULL,
    "Total_Ballots" INT   NOT NULL,
    "VEP" INT   NOT NULL,
    CONSTRAINT "pk_turnout_2004" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "turnout_2008" (
    "Year" INT   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "VEP_Total" VARCHAR   NOT NULL,
    "Total_Ballots" INT   NOT NULL,
    "VEP" INT   NOT NULL,
    CONSTRAINT "pk_turnout_2008" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "turnout_2012" (
    "Year" INT   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "VEP_Total" VARCHAR   NOT NULL,
    "Total_Ballots" INT   NOT NULL,
    "VEP" INT   NOT NULL,
    CONSTRAINT "pk_turnout_2012" PRIMARY KEY (
        "Year"
     )
);

CREATE TABLE "turnout_2016" (
    "Year" INT   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "VEP_Total" VARCHAR   NOT NULL,
    "Total_Ballots" INT   NOT NULL,
    "VEP" INT   NOT NULL,
    CONSTRAINT "pk_turnout_2016" PRIMARY KEY (
        "Year"
     )
);

ALTER TABLE "2000_Democrate" ADD CONSTRAINT "fk_2000_Democrate_state_year" FOREIGN KEY("state", "year")
REFERENCES "2000_Republican" ("state", "year");

ALTER TABLE "2004_Democrate" ADD CONSTRAINT "fk_2004_Democrate_state" FOREIGN KEY("state")
REFERENCES "2000_Democrate" ("state");

ALTER TABLE "2004_Democrate" ADD CONSTRAINT "fk_2004_Democrate_year" FOREIGN KEY("year")
REFERENCES "2004_Republican" ("year");

ALTER TABLE "2008_Democrate" ADD CONSTRAINT "fk_2008_Democrate_state_year" FOREIGN KEY("state", "year")
REFERENCES "2008_Republican" ("state", "year");

ALTER TABLE "2012_Democrate" ADD CONSTRAINT "fk_2012_Democrate_state_year" FOREIGN KEY("state", "year")
REFERENCES "2012_Republican" ("state", "year");

ALTER TABLE "2016_Democrate" ADD CONSTRAINT "fk_2016_Democrate_state_year" FOREIGN KEY("state", "year")
REFERENCES "2016_Republican" ("state", "year");

ALTER TABLE "2000_Republican" ADD CONSTRAINT "fk_2000_Republican_state_year" FOREIGN KEY("state", "year")
REFERENCES "turnout_2000" ("State", "Year");

ALTER TABLE "2004_Republican" ADD CONSTRAINT "fk_2004_Republican_state" FOREIGN KEY("state")
REFERENCES "2004_Democrate" ("state");

ALTER TABLE "2008_Republican" ADD CONSTRAINT "fk_2008_Republican_state" FOREIGN KEY("state")
REFERENCES "turnout_2008" ("State");

ALTER TABLE "2012_Republican" ADD CONSTRAINT "fk_2012_Republican_state" FOREIGN KEY("state")
REFERENCES "turnout_2012" ("State");

ALTER TABLE "2016_Republican" ADD CONSTRAINT "fk_2016_Republican_state" FOREIGN KEY("state")
REFERENCES "2012_Republican" ("state");

ALTER TABLE "turnout_2004" ADD CONSTRAINT "fk_turnout_2004_Year" FOREIGN KEY("Year")
REFERENCES "2004_Republican" ("year");

ALTER TABLE "turnout_2008" ADD CONSTRAINT "fk_turnout_2008_Year" FOREIGN KEY("Year")
REFERENCES "2008_Republican" ("year");

ALTER TABLE "turnout_2012" ADD CONSTRAINT "fk_turnout_2012_Year" FOREIGN KEY("Year")
REFERENCES "2012_Republican" ("year");

ALTER TABLE "turnout_2016" ADD CONSTRAINT "fk_turnout_2016_Year_State" FOREIGN KEY("Year", "State")
REFERENCES "2016_Republican" ("year", "state");

