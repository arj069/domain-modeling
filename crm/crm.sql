-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS industries;

-- CREATE TABLES

CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone INTEGER,
    title TEXT,
    company_id INTEGER
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    activity_type TEXT,
    date TEXT,
    time TEXT,
    notes TEXT,
    contact_id INTEGER,
    salesperson_id INTEGER
);

CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    contact_id INTEGER
);

CREATE TABLE salespeople(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE industries(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    company_id INTEGER 
);

CREATE TABLE industry_memberships(
    company_id INTEGER,
    industry_id INTEGER
);