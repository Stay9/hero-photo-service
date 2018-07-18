DROP DATABASE IF EXISTS hero;
CREATE DATABASE hero; 

USE hero; 

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT, 
  user_name VARCHAR(30) NOT NULL, 
  user_membership_date VARCHAR(30) NOT NULL,
  PRIMARY KEY(id)
);



CREATE TABLE lists (
  id INT NOT NULL AUTO_INCREMENT,
  list_name VARCHAR(50) NOT NULL, 
  list_user_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(list_user_id) REFERENCES users(id)
);



CREATE TABLE listings (
  id INT NOT NULL AUTO_INCREMENT, 
  listing_description VARCHAR(255), 
  listing_review_average INT,
  listing_review_total INT,
  listing_host_name VARCHAR(50),
  listing_host_photo_url VARCHAR(255),
  PRIMARY KEY(id)

);



CREATE TABLE listings_lists (
  listing_id INT NOT NULL, 
  list_id INT NOT NULL,
  FOREIGN KEY (listing_id) REFERENCES listings(id),
  FOREIGN KEY (list_id) REFERENCES lists(id)
);



CREATE TABLE listing_photos (
	id INT NOT NULL AUTO_INCREMENT, 
	photo_description VARCHAR(255),
	photo_url VARCHAR(200) NOT NULL,
	PRIMARY KEY(id)

);

-- populating the different tables with some sample data 
INSERT INTO users (user_name, user_membership_date) VALUES ('JP Vertil', '06/25/2017' );
INSERT INTO users (user_name, user_membership_date) VALUES ('Jean Luc', '03/22/2016' );




