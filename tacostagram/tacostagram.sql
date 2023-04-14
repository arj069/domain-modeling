DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;

CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name TEXT,
    real_name TEXT,
    location TEXT
);

CREATE TABLE posts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    image_url TEXT,
    posted_at TEXT,
    user_id INTEGER
);

CREATE TABLE likes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    post_id INTEGER
);

CREATE TABLE comments(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    post_id INTEGER,
    body TEXT
);

CREATE TABLE follows(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    follower_id INTEGER,
    followed_id INTEGER
);