CREATE TABLE "Category" (
    "category_id" VARCHAR NOT NULL,
    "category" VARCHAR NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "sub_category_id" VARCHAR NOT NULL,
    "subcategory" VARCHAR NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "sub_category_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "email" VARCHAR NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" int NOT NULL,
    "contact_id" int NOT NULL,
    "company_name" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,
    "goal" float8 NOT NULL,
    "pledged" float8 NOT NULL,
    "outcome" VARCHAR NOT NULL,
    "backers_count" int NOT NULL,
    "country" VARCHAR NOT NULL,
    "currency" VARCHAR NOT NULL,
    "launched_date" date NOT NULL,
    "end_date" date NOT NULL,
    "category_id" VARCHAR NOT NULL,
    "subcategory_id" VARCHAR NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("sub_category_id");

SELECT *
FROM "Category";

SELECT *
FROM "Subcategory";

SELECT *
FROM "Contacts";

SELECT *
FROM "Campaign";