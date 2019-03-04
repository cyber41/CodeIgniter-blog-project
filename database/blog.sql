CREATE DATABASE blog;

CREATE TABLE categories (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
CREATE TABLE subCategories (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  parent_id INT UNSIGNED NOT NULL
);

CREATE TABLE comments (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  post_id INT UNSIGNED NOT NULL,
  author_id INT UNSIGNED NOT NULL,
  author_name INT UNSIGNED NOT NULL,
  comment VARCHAR(500) NOT NULL
);

CREATE TABLE posts (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cat_id INT UNSIGNED NOT NULL,
  sub_cat_id INT UNSIGNED NOT NULL,
  title VARCHAR(100) NOT NULL,
  author_id INT UNSIGNED NOT NULL,
  author_name VARCHAR(100) NOT NULL,
  image VARCHAR(100),
  content VARCHAR(1000) NOT NULL
);


CREATE TABLE users (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL,
  fullname VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL
);
