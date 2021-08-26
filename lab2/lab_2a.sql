CREATE TABLE "clients" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "full_name" varchar,
  "email" varchar,
  "phone" varchar,
  "jeweler_id" int,
  "size" varchar
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

ALTER TABLE "jewelers" ADD FOREIGN KEY ("clients") REFERENCES "clients" ("id");

ALTER TABLE "jewelers" ADD FOREIGN KEY ("id") REFERENCES "profession" ("jeweler_id");

ALTER TABLE "progress" ADD FOREIGN KEY ("client_id") REFERENCES "clients" ("id");
