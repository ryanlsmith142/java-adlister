USE adlister_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(50) NOT NULL,
    description VARCHAR(500) NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users (id),
    PRIMARY KEY(id)
);

INSERT INTO users (username, email, password)
VALUES ('ryan_smith', 'ryan_smith@email.com', 'password');