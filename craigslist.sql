DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE post_location
(
    id SERIAL PRIMARY KEY,
    City TEXT NOT NULL,
    current_state TEXT NOT NULL
);
CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);
CREATE TABLE post_info
(
    id SERIAL PRIMARY KEY,
    user INTEGER REFERENCES users NOT NULL
    title TEXT NOT NULL,
    post_desc TEXT NOT NULL,
    current_location INTEGER REFERENCES post_location NOT NULL
);
CREATE TABLE categories
(
    id SERIAL PRIMARY KEY,
    info TEXT NOT NULL
);

CREATE TABLE post_cat
(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users NOT NULL,
    post_id INTEGER REFERENCES post_info,
    categorie INTEGER REFERENCES categories
);