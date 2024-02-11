CREATE TABLE "customers" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "tickets" (
  "ticket_id" SERIAL,
  "oder_date" DATE default CURRENT_DATE,
  "total_cost" NUMERIC(3,2),
  "customer_id" INTEGER,
  "movie_id" INTEGER ,
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "concessions" (
  "concession_id" SERIAL,
  "concession_name" VARCHAR(100),
  "concession_cost" NUMERIC(3,2),
  "customer_id" INTEGER,
  PRIMARY KEY ("concession_id"),
  CONSTRAINT "FK_concessions.concession_id"
    FOREIGN KEY ("concession_id")
      REFERENCES "customers"("customer_id")
);

CREATE TABLE "movies" (
  "movie_id" SERIAL,
  "movie_name" VARCHAR(100),
  "movie_rating" VARCHAR(100),
  PRIMARY KEY ("movie_id")
);

