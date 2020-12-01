-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/VNWqPM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Democrat_2000" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Democrat_2000" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Democrat_2004" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Democrat_2004" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Democrat_2008" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Democrat_2008" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Democrat_2012" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Democrat_2012" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Democrat_2016" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Democrat_2016" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Republican_2000" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Republican_2000" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Republican_2004" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Republican_2004" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Republican_2008" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Republican_2008" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Republican_2012" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Republican_2012" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "Republican_2016" (
    "state" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "state_po" VARCHAR   NOT NULL,
    "candidate" VARCHAR   NOT NULL,
    "party" VARCHAR   NOT NULL,
    "candidatevotes" INT   NOT NULL,
    "totatlvotes" INT   NOT NULL,
    CONSTRAINT "pk_Republican_2016" PRIMARY KEY (
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

ALTER TABLE "Democrat_2000" ADD CONSTRAINT "fk_Democrat_2000_state_year" FOREIGN KEY("state")
REFERENCES "Republican_2000" ("state");

ALTER TABLE "Democrat_2004" ADD CONSTRAINT "fk_Democrat_2004_state" FOREIGN KEY("state")
REFERENCES "Democrat_2000" ("state");

ALTER TABLE "Democrat_2004" ADD CONSTRAINT "fk_Democrat_2004_year" FOREIGN KEY("state")
REFERENCES "Republican_2004" ("state");

ALTER TABLE "Democrat_2008" ADD CONSTRAINT "fk_Democrat_2008_state" FOREIGN KEY("state")
REFERENCES "Democrat_2004" ("state");

ALTER TABLE "Democrat_2008" ADD CONSTRAINT "fk_Democrat_2008_year" FOREIGN KEY("state")
REFERENCES "Republican_2008" ("state");

ALTER TABLE "Democrat_2012" ADD CONSTRAINT "fk_Democrat_2012_state" FOREIGN KEY("state")
REFERENCES "Democrat_2008" ("state");

ALTER TABLE "Democrat_2012" ADD CONSTRAINT "fk_Democrat_2012_year" FOREIGN KEY("state")
REFERENCES "Republican_2012" ("state");

ALTER TABLE "Democrat_2016" ADD CONSTRAINT "fk_Democrat_2016_state" FOREIGN KEY("state")
REFERENCES "Democrat_2012" ("state");

ALTER TABLE "Democrat_2016" ADD CONSTRAINT "fk_Democrat_2016_year" FOREIGN KEY("state")
REFERENCES "Republican_2016" ("state");

ALTER TABLE "Republican_2000" ADD CONSTRAINT "fk_Republican_2000_state_year" FOREIGN KEY("state", "year")
REFERENCES "turnout_2000" ("State", "Year");

ALTER TABLE "Republican_2004" ADD CONSTRAINT "fk_Republican_2004_state" FOREIGN KEY("state")
REFERENCES "Republican_2000" ("state");

ALTER TABLE "Republican_2008" ADD CONSTRAINT "fk_Republican_2008_state" FOREIGN KEY("state")
REFERENCES "Republican_2004" ("state");

ALTER TABLE "Republican_2012" ADD CONSTRAINT "fk_Republican_2012_state" FOREIGN KEY("state")
REFERENCES "Republican_2008" ("state");

ALTER TABLE "Republican_2016" ADD CONSTRAINT "fk_Republican_2016_state" FOREIGN KEY("state")
REFERENCES "Republican_2012" ("state");

ALTER TABLE "turnout_2000" ADD CONSTRAINT "fk_turnout_2000_State" FOREIGN KEY("State")
REFERENCES "turnout_2004" ("State");

ALTER TABLE "turnout_2004" ADD CONSTRAINT "fk_turnout_2004_Year" FOREIGN KEY("Year")
REFERENCES "Republican_2004" ("year");

ALTER TABLE "turnout_2004" ADD CONSTRAINT "fk_turnout_2004_State" FOREIGN KEY("State")
REFERENCES "turnout_2008" ("State");

ALTER TABLE "turnout_2008" ADD CONSTRAINT "fk_turnout_2008_Year" FOREIGN KEY("Year")
REFERENCES "Republican_2008" ("year");

ALTER TABLE "turnout_2012" ADD CONSTRAINT "fk_turnout_2012_Year" FOREIGN KEY("Year")
REFERENCES "Republican_2012" ("year");

ALTER TABLE "turnout_2012" ADD CONSTRAINT "fk_turnout_2012_State" FOREIGN KEY("State")
REFERENCES "turnout_2016" ("State");

ALTER TABLE "turnout_2016" ADD CONSTRAINT "fk_turnout_2016_Year_State" FOREIGN KEY("Year", "State")
REFERENCES "Republican_2016" ("year", "state");

