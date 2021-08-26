CREATE TABLE "clients" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "full_name" varchar,
  "email" varchar,
  "phone" varchar,
  "jeweler_id" int
);

CREATE TABLE "jewelers" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "full_name" varchar,
  "clients" int
);

CREATE TABLE "profession" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" varchar,
  "jeweler_id" int
);

CREATE TABLE "progress" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "client_id" int,
  "status" boolean
);

ALTER TABLE "clients" ADD FOREIGN KEY ("id") REFERENCES "jewelers" ("clients");

ALTER TABLE "jewelers" ADD FOREIGN KEY ("id") REFERENCES "profession" ("jeweler_id");

ALTER TABLE "progress" ADD FOREIGN KEY ("client_id") REFERENCES "clients" ("id");
