-- Create the Users table
CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(50)
);

-- Create the Posts table
CREATE TABLE Posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(id),
    title VARCHAR(255),
    content TEXT
);

-- Create the Comments table
CREATE TABLE Comments (
    id SERIAL PRIMARY KEY,
    post_id INTEGER REFERENCES Posts(id),
    user_id INTEGER REFERENCES Users(id),
    comment TEXT
);
