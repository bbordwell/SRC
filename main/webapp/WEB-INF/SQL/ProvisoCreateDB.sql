SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS reservations;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS hotels;
DROP TABLE IF EXISTS possessed_features;
DROP TABLE IF EXISTS features;
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE customers (
    customer_id int NOT NULL AUTO_INCREMENT,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    pword varchar(255),
    phone_number varchar(15),
    PRIMARY KEY (customer_id)
);

CREATE TABLE hotels (
    hotel_id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    address varchar(255),
    city varchar(255),
    state char(2),
    zip_code varchar(255),
    phone_number char(10),
    standard_kings int,
    standard_queens int,
    double_queens int, 
    double_fulls int,
    PRIMARY KEY (hotel_id)
);

CREATE TABLE reservations (
    reservation_id int NOT NULL AUTO_INCREMENT,
    customer_id int NOT NULL,
    hotel_id int NOT NULL,
    number_of_guests int,
    check_in date,
    check_out date,
    earned_points int,
    canceled BOOLEAN DEFAULT '0',
    room_type varchar(255),
    FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    PRIMARY KEY (reservation_id)
);

CREATE TABLE payments (
    payment_id int NOT NULL AUTO_INCREMENT,
    name_on_card varchar(255),
    expiration char(4),
    card_number bigint,
    transaction_time datetime,
    amount int,
    FOREIGN KEY (payment_id) REFERENCES reservations(reservation_id),
    PRIMARY KEY (payment_id)
);

CREATE TABLE possessed_features (
    reservation_id int,
    feature_id int,
    PRIMARY KEY (reservation_id, feature_id),
    FOREIGN KEY (reservation_id) REFERENCES reservations(reservation_id)
);

CREATE TABLE features (
    feature_id int NOT NULL AUTO_INCREMENT,
    feature_name varchar(255),
    PRIMARY KEY (feature_id)
);

/*Add our 3 current features to the features table*/
INSERT INTO features (feature_id, feature_name) VALUES ('1','wifi');
INSERT INTO features (feature_id, feature_name) VALUES ('2','breakfast');
INSERT INTO features (feature_id, feature_name) VALUES ('3','parking');

/*Insert test user*/
INSERT INTO customers (first_name, last_name, email, pword, phone_number)
VALUES ('John', 'Doe', 'example@my365.bellevue.edu', '12345', '4025555555');