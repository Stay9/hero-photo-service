DROP DATABASE IF EXISTS hero;
CREATE DATABASE hero; 

USE hero; 

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT, 
  user_name VARCHAR(30) NOT NULL, 
  user_membership_date VARCHAR(30) NOT NULL,
  user_photo_url VARCHAR(250) NOT NULL, 
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
  listing_description TEXT, 
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

-- populating the users table 
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '10/3/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user12.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '3/28/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user10.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '1/10/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user14.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '5/28/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user9.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '9/26/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user6.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '3/5/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '10/20/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user0.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '3/26/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user0.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '12/29/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user8.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '1/2/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user15.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '8/7/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user8.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '10/4/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user0.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Jojo', '2/19/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user11.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '8/15/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user14.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '8/29/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user3.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '2/25/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user12.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '4/6/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Wicy', '8/25/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user8.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '5/1/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user8.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '7/9/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '9/21/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '4/29/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user7.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Jojo', '11/17/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '5/22/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '4/3/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user7.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '1/1/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user6.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '7/26/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '5/3/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '2/26/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user3.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '9/10/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '7/2/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user1.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '3/6/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '6/20/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user3.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '6/10/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user9.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Mayi', '9/19/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user8.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '8/11/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user10.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '3/22/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user11.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '8/5/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user5.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Mayi', '7/29/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Mayi', '7/4/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user15.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '1/24/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user0.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '4/9/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user1.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '6/24/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user3.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Wicy', '4/21/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user7.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Wicy', '2/3/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user10.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '6/20/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Wicy', '5/31/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user1.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '11/30/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user3.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Jojo', '8/8/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '6/21/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user15.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Mayi', '9/30/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Mayi', '2/10/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user7.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '3/23/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user1.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '8/4/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '5/21/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user14.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '5/27/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user7.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Jojo', '11/13/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user6.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '11/11/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '6/27/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '6/10/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user9.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '6/22/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '11/22/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Jojo', '4/17/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user9.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '3/19/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user5.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Wicy', '4/3/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user15.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '3/2/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user5.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '2/5/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user9.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '10/30/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user0.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '3/13/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user10.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Mayi', '7/24/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user14.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Wicy', '11/29/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user9.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '3/15/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user3.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '10/15/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user15.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '3/18/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user0.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '12/18/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user1.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Wicy', '11/14/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '12/11/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user5.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '5/15/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user7.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '12/29/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user14.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Blayi', '2/4/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user1.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '3/16/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '10/20/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user15.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Mayi', '12/1/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user9.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '6/4/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user9.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '11/15/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '9/8/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '3/30/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user5.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '11/16/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user11.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '7/12/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user12.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '2/21/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Nicky', '3/14/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user15.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '10/20/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user8.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '6/16/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user15.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Tibou', '4/17/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user3.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Jojo', '3/26/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user4.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Zaboka', '10/29/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user8.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Caramel', '1/9/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Spidy', '11/10/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user2.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Wicy', '4/15/2018', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user8.jpeg');
insert into users (user_name, user_membership_date, user_photo_url) values ('Pepito', '7/19/2017', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/user13.jpeg');


-- populating the lists table
insert into lists (list_name, list_user_id) values ('my favorite list 1', 1);
insert into lists (list_name, list_user_id) values ('my favorite list 2', 2);
insert into lists (list_name, list_user_id) values ('my favorite list 3', 3);
insert into lists (list_name, list_user_id) values ('my favorite list 4', 4);
insert into lists (list_name, list_user_id) values ('my favorite list 5', 5);
insert into lists (list_name, list_user_id) values ('my favorite list 6', 6);
insert into lists (list_name, list_user_id) values ('my favorite list 7', 7);
insert into lists (list_name, list_user_id) values ('my favorite list 8', 8);
insert into lists (list_name, list_user_id) values ('my favorite list 9', 9);
insert into lists (list_name, list_user_id) values ('my favorite list 10', 10);
insert into lists (list_name, list_user_id) values ('my favorite list 11', 11);
insert into lists (list_name, list_user_id) values ('my favorite list 12', 12);
insert into lists (list_name, list_user_id) values ('my favorite list 13', 13);
insert into lists (list_name, list_user_id) values ('my favorite list 14', 14);
insert into lists (list_name, list_user_id) values ('my favorite list 15', 15);
insert into lists (list_name, list_user_id) values ('my favorite list 16', 16);
insert into lists (list_name, list_user_id) values ('my favorite list 17', 17);
insert into lists (list_name, list_user_id) values ('my favorite list 18', 18);
insert into lists (list_name, list_user_id) values ('my favorite list 19', 19);
insert into lists (list_name, list_user_id) values ('my favorite list 20', 20);
insert into lists (list_name, list_user_id) values ('my favorite list 21', 21);
insert into lists (list_name, list_user_id) values ('my favorite list 22', 22);
insert into lists (list_name, list_user_id) values ('my favorite list 23', 23);
insert into lists (list_name, list_user_id) values ('my favorite list 24', 24);
insert into lists (list_name, list_user_id) values ('my favorite list 25', 25);
insert into lists (list_name, list_user_id) values ('my favorite list 26', 26);
insert into lists (list_name, list_user_id) values ('my favorite list 27', 27);
insert into lists (list_name, list_user_id) values ('my favorite list 28', 28);
insert into lists (list_name, list_user_id) values ('my favorite list 29', 29);
insert into lists (list_name, list_user_id) values ('my favorite list 30', 30);
insert into lists (list_name, list_user_id) values ('my favorite list 31', 31);
insert into lists (list_name, list_user_id) values ('my favorite list 32', 32);
insert into lists (list_name, list_user_id) values ('my favorite list 33', 33);
insert into lists (list_name, list_user_id) values ('my favorite list 34', 34);
insert into lists (list_name, list_user_id) values ('my favorite list 35', 35);
insert into lists (list_name, list_user_id) values ('my favorite list 36', 36);
insert into lists (list_name, list_user_id) values ('my favorite list 37', 37);
insert into lists (list_name, list_user_id) values ('my favorite list 38', 38);
insert into lists (list_name, list_user_id) values ('my favorite list 39', 39);
insert into lists (list_name, list_user_id) values ('my favorite list 40', 40);
insert into lists (list_name, list_user_id) values ('my favorite list 41', 41);
insert into lists (list_name, list_user_id) values ('my favorite list 42', 42);
insert into lists (list_name, list_user_id) values ('my favorite list 43', 43);
insert into lists (list_name, list_user_id) values ('my favorite list 44', 44);
insert into lists (list_name, list_user_id) values ('my favorite list 45', 45);
insert into lists (list_name, list_user_id) values ('my favorite list 46', 46);
insert into lists (list_name, list_user_id) values ('my favorite list 47', 47);
insert into lists (list_name, list_user_id) values ('my favorite list 48', 48);
insert into lists (list_name, list_user_id) values ('my favorite list 49', 49);
insert into lists (list_name, list_user_id) values ('my favorite list 50', 50);
insert into lists (list_name, list_user_id) values ('my favorite list 51', 51);
insert into lists (list_name, list_user_id) values ('my favorite list 52', 52);
insert into lists (list_name, list_user_id) values ('my favorite list 53', 53);
insert into lists (list_name, list_user_id) values ('my favorite list 54', 54);
insert into lists (list_name, list_user_id) values ('my favorite list 55', 55);
insert into lists (list_name, list_user_id) values ('my favorite list 56', 56);
insert into lists (list_name, list_user_id) values ('my favorite list 57', 57);
insert into lists (list_name, list_user_id) values ('my favorite list 58', 58);
insert into lists (list_name, list_user_id) values ('my favorite list 59', 59);
insert into lists (list_name, list_user_id) values ('my favorite list 60', 60);
insert into lists (list_name, list_user_id) values ('my favorite list 61', 61);
insert into lists (list_name, list_user_id) values ('my favorite list 62', 62);
insert into lists (list_name, list_user_id) values ('my favorite list 63', 63);
insert into lists (list_name, list_user_id) values ('my favorite list 64', 64);
insert into lists (list_name, list_user_id) values ('my favorite list 65', 65);
insert into lists (list_name, list_user_id) values ('my favorite list 66', 66);
insert into lists (list_name, list_user_id) values ('my favorite list 67', 67);
insert into lists (list_name, list_user_id) values ('my favorite list 68', 68);
insert into lists (list_name, list_user_id) values ('my favorite list 69', 69);
insert into lists (list_name, list_user_id) values ('my favorite list 70', 70);
insert into lists (list_name, list_user_id) values ('my favorite list 71', 71);
insert into lists (list_name, list_user_id) values ('my favorite list 72', 72);
insert into lists (list_name, list_user_id) values ('my favorite list 73', 73);
insert into lists (list_name, list_user_id) values ('my favorite list 74', 74);
insert into lists (list_name, list_user_id) values ('my favorite list 75', 75);
insert into lists (list_name, list_user_id) values ('my favorite list 76', 76);
insert into lists (list_name, list_user_id) values ('my favorite list 77', 77);
insert into lists (list_name, list_user_id) values ('my favorite list 78', 78);
insert into lists (list_name, list_user_id) values ('my favorite list 79', 79);
insert into lists (list_name, list_user_id) values ('my favorite list 80', 80);
insert into lists (list_name, list_user_id) values ('my favorite list 81', 81);
insert into lists (list_name, list_user_id) values ('my favorite list 82', 82);
insert into lists (list_name, list_user_id) values ('my favorite list 83', 83);
insert into lists (list_name, list_user_id) values ('my favorite list 84', 84);
insert into lists (list_name, list_user_id) values ('my favorite list 85', 85);
insert into lists (list_name, list_user_id) values ('my favorite list 86', 86);
insert into lists (list_name, list_user_id) values ('my favorite list 87', 87);
insert into lists (list_name, list_user_id) values ('my favorite list 88', 88);
insert into lists (list_name, list_user_id) values ('my favorite list 89', 89);
insert into lists (list_name, list_user_id) values ('my favorite list 90', 90);
insert into lists (list_name, list_user_id) values ('my favorite list 91', 91);
insert into lists (list_name, list_user_id) values ('my favorite list 92', 92);
insert into lists (list_name, list_user_id) values ('my favorite list 93', 93);
insert into lists (list_name, list_user_id) values ('my favorite list 94', 94);
insert into lists (list_name, list_user_id) values ('my favorite list 95', 95);
insert into lists (list_name, list_user_id) values ('my favorite list 96', 96);
insert into lists (list_name, list_user_id) values ('my favorite list 97', 97);
insert into lists (list_name, list_user_id) values ('my favorite list 98', 98);
insert into lists (list_name, list_user_id) values ('my favorite list 99', 99);
insert into lists (list_name, list_user_id) values ('my favorite list 100', 100);

-- populate the listings table
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 1, 93, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host15.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 2, 67, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host0.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 4, 41, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host15.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 2, 105, 'Jana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 3, 56, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is low and triangular and is covered with wheat straw. Two large chimneys sit at the side of the house. Several small windows let in just enough light to the rooms below the roof.', 4, 98, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host1.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 2, 7, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host7.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 2, 71, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 1, 29, 'Puppy', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host2.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 3, 60, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 3, 124, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host15.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 1, 13, 'Jana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 3, 6, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host7.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 2, 20, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 4, 17, 'Cana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host8.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a modern kitchen and one modern bathroom, it also has a small living room, four bedrooms, a large dining area, a lounge area and a snug storage room.', 4, 12, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 2, 125, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host8.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 2, 110, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host10.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 4, 0, 'Jana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host14.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 2, 79, 'Cana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host3.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 1, 7, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host15.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 4, 108, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host2.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 2, 67, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 4, 74, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 2, 76, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host9.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 3, 55, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host0.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is low and triangular and is covered with wheat straw. Two large chimneys sit at the side of the house. Several small windows let in just enough light to the rooms below the roof.', 4, 55, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host2.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 1, 56, 'Puppy', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host14.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 1, 47, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 1, 7, 'Cana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 3, 113, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host1.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 3, 108, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 1, 51, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host9.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is rectangular shaped. The house is partially surrounded by a garden path on two sides.The second floor is the same size as the first, but part of it hangs over the edge of the floor below, creating an overhang on one side and a balcony on the other. This floor follows the same style as the floor below.', 2, 37, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host6.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 1, 51, 'Jana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host10.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 3, 20, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host1.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is rectangular shaped. The house is partially surrounded by a garden path on two sides.The second floor is the same size as the first, but part of it hangs over the edge of the floor below, creating an overhang on one side and a balcony on the other. This floor follows the same style as the floor below.', 3, 102, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host2.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 2, 32, 'Puppy', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 1, 34, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host3.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 1, 14, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host9.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 1, 61, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host3.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 1, 113, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 3, 106, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host6.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 4, 8, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host9.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 2, 3, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host15.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is low and triangular and is covered with wheat straw. Two large chimneys sit at the side of the house. Several small windows let in just enough light to the rooms below the roof.', 1, 44, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 3, 13, 'Jana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a modern kitchen and one modern bathroom, it also has a small living room, four bedrooms, a large dining area, a lounge area and a snug storage room.', 2, 119, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host6.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 2, 101, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host6.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 1, 46, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host0.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 3, 52, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host9.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 4, 24, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 3, 39, 'Puppy', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host2.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 2, 10, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 4, 45, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is rectangular shaped. The house is partially surrounded by a garden path on two sides.The second floor is the same size as the first, but part of it hangs over the edge of the floor below, creating an overhang on one side and a balcony on the other. This floor follows the same style as the floor below.', 2, 52, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a modern kitchen and one modern bathroom, it also has a small living room, four bedrooms, a large dining area, a lounge area and a snug storage room.', 3, 26, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 3, 70, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is low and triangular and is covered with wheat straw. Two large chimneys sit at the side of the house. Several small windows let in just enough light to the rooms below the roof.', 1, 118, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host7.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 4, 91, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 2, 97, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host1.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 4, 37, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is rectangular shaped. The house is partially surrounded by a garden path on two sides.The second floor is the same size as the first, but part of it hangs over the edge of the floor below, creating an overhang on one side and a balcony on the other. This floor follows the same style as the floor below.', 4, 88, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host6.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 4, 80, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host1.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 3, 75, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 1, 25, 'Jana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 4, 122, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host0.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 2, 74, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 1, 72, 'Jana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host15.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 2, 98, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host9.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a modern kitchen and one modern bathroom, it also has a small living room, four bedrooms, a large dining area, a lounge area and a snug storage room.', 2, 84, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The second floor is smaller than the first, which allowed for several balconies on the sides of the house. This floor has roughly the same style as the floor below.', 4, 12, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 1, 9, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host3.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 4, 24, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host7.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 2, 25, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 2, 54, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 2, 1, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host8.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 2, 80, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 4, 45, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 2, 101, 'Sando', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host11.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is rectangular shaped. The house is partially surrounded by a garden path on two sides.The second floor is the same size as the first, but part of it hangs over the edge of the floor below, creating an overhang on one side and a balcony on the other. This floor follows the same style as the floor below.', 1, 93, 'Mycky', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is low and triangular and is covered with wheat straw. Two large chimneys sit at the side of the house. Several small windows let in just enough light to the rooms below the roof.', 2, 17, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host15.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 1, 121, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host8.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 1, 117, 'Cana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host4.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 2, 33, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host9.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 2, 82, 'Jana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host14.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 3, 84, 'Puppy', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host3.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a gorgeous garden with many hidden lights that make the garden come to life at night.', 1, 106, 'Maya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host3.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is rectangular shaped. The house is partially surrounded by a garden path on two sides.The second floor is the same size as the first, but part of it hangs over the edge of the floor below, creating an overhang on one side and a balcony on the other. This floor follows the same style as the floor below.', 2, 8, 'Yousi', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 4, 88, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host0.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 1, 23, 'Puppy', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host13.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house itself is surrounded by a well kept garden. Grass, flower patches and trees have been placed in a stylish way.', 2, 95, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host6.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 1, 85, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host5.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a large kitchen and three bathrooms, it also has a comfortable living room, four bedrooms, a cozy dining room and a small basement.', 4, 61, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host1.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The house is equipped with a modern kitchen and one modern bathroom, it also has a small living room, four bedrooms, a large dining area, a lounge area and a snug storage room.', 1, 34, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host9.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 1, 25, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host8.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is shaped like a circle. The house is half surrounded by a garden path.', 2, 112, 'Yoyo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('From the outside this house looks impressive. It has been built with wood covered in render and has tan brick decorations. Tall, wide windows add to the overall look of the house and have been added to the house in a fairly asymmetrical pattern.', 1, 58, 'Cana', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host15.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The roof is high and square shaped and is covered with wood shingles. One small chimney pokes out the center of the roof. There are no windows on the roof.', 2, 65, 'Yaya', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');
insert into listings (listing_description, listing_review_average, listing_review_total, listing_host_name, listing_host_photo_url) values ('The building is rectangular shaped. The house is partially surrounded by a garden path on two sides.The second floor is the same size as the first, but part of it hangs over the edge of the floor below, creating an overhang on one side and a balcony on the other. This floor follows the same style as the floor below.', 2, 58, 'Pipo', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/host12.jpeg');


-- populating the listings_lists tables
insert into listings_lists (listing_id, list_id) values (1, 1);
insert into listings_lists (listing_id, list_id) values (2, 2);
insert into listings_lists (listing_id, list_id) values (3, 3);
insert into listings_lists (listing_id, list_id) values (4, 4);
insert into listings_lists (listing_id, list_id) values (5, 5);
insert into listings_lists (listing_id, list_id) values (6, 6);
insert into listings_lists (listing_id, list_id) values (7, 7);
insert into listings_lists (listing_id, list_id) values (8, 8);
insert into listings_lists (listing_id, list_id) values (9, 9);
insert into listings_lists (listing_id, list_id) values (10, 10);
insert into listings_lists (listing_id, list_id) values (11, 11);
insert into listings_lists (listing_id, list_id) values (12, 12);
insert into listings_lists (listing_id, list_id) values (13, 13);
insert into listings_lists (listing_id, list_id) values (14, 14);
insert into listings_lists (listing_id, list_id) values (15, 15);
insert into listings_lists (listing_id, list_id) values (16, 16);
insert into listings_lists (listing_id, list_id) values (17, 17);
insert into listings_lists (listing_id, list_id) values (18, 18);
insert into listings_lists (listing_id, list_id) values (19, 19);
insert into listings_lists (listing_id, list_id) values (20, 20);
insert into listings_lists (listing_id, list_id) values (21, 21);
insert into listings_lists (listing_id, list_id) values (22, 22);
insert into listings_lists (listing_id, list_id) values (23, 23);
insert into listings_lists (listing_id, list_id) values (24, 24);
insert into listings_lists (listing_id, list_id) values (25, 25);
insert into listings_lists (listing_id, list_id) values (26, 26);
insert into listings_lists (listing_id, list_id) values (27, 27);
insert into listings_lists (listing_id, list_id) values (28, 28);
insert into listings_lists (listing_id, list_id) values (29, 29);
insert into listings_lists (listing_id, list_id) values (30, 30);
insert into listings_lists (listing_id, list_id) values (31, 31);
insert into listings_lists (listing_id, list_id) values (32, 32);
insert into listings_lists (listing_id, list_id) values (33, 33);
insert into listings_lists (listing_id, list_id) values (34, 34);
insert into listings_lists (listing_id, list_id) values (35, 35);
insert into listings_lists (listing_id, list_id) values (36, 36);
insert into listings_lists (listing_id, list_id) values (37, 37);
insert into listings_lists (listing_id, list_id) values (38, 38);
insert into listings_lists (listing_id, list_id) values (39, 39);
insert into listings_lists (listing_id, list_id) values (40, 40);
insert into listings_lists (listing_id, list_id) values (41, 41);
insert into listings_lists (listing_id, list_id) values (42, 42);
insert into listings_lists (listing_id, list_id) values (43, 43);
insert into listings_lists (listing_id, list_id) values (44, 44);
insert into listings_lists (listing_id, list_id) values (45, 45);
insert into listings_lists (listing_id, list_id) values (46, 46);
insert into listings_lists (listing_id, list_id) values (47, 47);
insert into listings_lists (listing_id, list_id) values (48, 48);
insert into listings_lists (listing_id, list_id) values (49, 49);
insert into listings_lists (listing_id, list_id) values (50, 50);
insert into listings_lists (listing_id, list_id) values (51, 51);
insert into listings_lists (listing_id, list_id) values (52, 52);
insert into listings_lists (listing_id, list_id) values (53, 53);
insert into listings_lists (listing_id, list_id) values (54, 54);
insert into listings_lists (listing_id, list_id) values (55, 55);
insert into listings_lists (listing_id, list_id) values (56, 56);
insert into listings_lists (listing_id, list_id) values (57, 57);
insert into listings_lists (listing_id, list_id) values (58, 58);
insert into listings_lists (listing_id, list_id) values (59, 59);
insert into listings_lists (listing_id, list_id) values (60, 60);
insert into listings_lists (listing_id, list_id) values (61, 61);
insert into listings_lists (listing_id, list_id) values (62, 62);
insert into listings_lists (listing_id, list_id) values (63, 63);
insert into listings_lists (listing_id, list_id) values (64, 64);
insert into listings_lists (listing_id, list_id) values (65, 65);
insert into listings_lists (listing_id, list_id) values (66, 66);
insert into listings_lists (listing_id, list_id) values (67, 67);
insert into listings_lists (listing_id, list_id) values (68, 68);
insert into listings_lists (listing_id, list_id) values (69, 69);
insert into listings_lists (listing_id, list_id) values (70, 70);
insert into listings_lists (listing_id, list_id) values (71, 71);
insert into listings_lists (listing_id, list_id) values (72, 72);
insert into listings_lists (listing_id, list_id) values (73, 73);
insert into listings_lists (listing_id, list_id) values (74, 74);
insert into listings_lists (listing_id, list_id) values (75, 75);
insert into listings_lists (listing_id, list_id) values (76, 76);
insert into listings_lists (listing_id, list_id) values (77, 77);
insert into listings_lists (listing_id, list_id) values (78, 78);
insert into listings_lists (listing_id, list_id) values (79, 79);
insert into listings_lists (listing_id, list_id) values (80, 80);
insert into listings_lists (listing_id, list_id) values (81, 81);
insert into listings_lists (listing_id, list_id) values (82, 82);
insert into listings_lists (listing_id, list_id) values (83, 83);
insert into listings_lists (listing_id, list_id) values (84, 84);
insert into listings_lists (listing_id, list_id) values (85, 85);
insert into listings_lists (listing_id, list_id) values (86, 86);
insert into listings_lists (listing_id, list_id) values (87, 87);
insert into listings_lists (listing_id, list_id) values (88, 88);
insert into listings_lists (listing_id, list_id) values (89, 89);
insert into listings_lists (listing_id, list_id) values (90, 90);
insert into listings_lists (listing_id, list_id) values (91, 91);
insert into listings_lists (listing_id, list_id) values (92, 92);
insert into listings_lists (listing_id, list_id) values (93, 93);
insert into listings_lists (listing_id, list_id) values (94, 94);
insert into listings_lists (listing_id, list_id) values (95, 95);
insert into listings_lists (listing_id, list_id) values (96, 96);
insert into listings_lists (listing_id, list_id) values (97, 97);
insert into listings_lists (listing_id, list_id) values (98, 98);
insert into listings_lists (listing_id, list_id) values (99, 99);
insert into listings_lists (listing_id, list_id) values (100, 100);

-- populating the listing_photos table
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing11.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing7.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing11.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing0.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing7.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing9.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing8.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing3.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing10.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing2.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing15.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing7.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing2.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing2.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing11.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing11.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing7.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing6.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing11.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing10.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing0.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing2.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing15.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing8.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing12.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing10.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing8.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing0.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing8.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing14.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing2.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing10.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing14.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing10.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing2.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing15.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing0.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing7.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing14.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing0.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing15.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing7.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing3.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing6.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing10.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing3.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing6.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing10.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing7.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing11.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing8.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing3.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing6.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing10.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing15.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing9.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing6.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('pool', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing13.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing5.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing4.jpeg');
insert into listing_photos (photo_description, photo_url) values ('true comfort', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing9.jpeg');
insert into listing_photos (photo_description, photo_url) values ('fancy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing3.jpeg');
insert into listing_photos (photo_description, photo_url) values ('4 paw rated room', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing0.jpeg');
insert into listing_photos (photo_description, photo_url) values ('comfy bed', 'https://s3-us-west-1.amazonaws.com/hackreactor-fec-hero/listings/listing1.jpeg');



