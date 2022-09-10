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

/*Insert Hotels*/
INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls)
VALUES ('Proviso Bellevue', '1001 Galvin Road S', 'Bellevue', 'NE', '68005','4025551357', '30','20','30','20');
INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls)
VALUES ('Proviso Kearney', '600 Talmadge Street', 'Kearney', 'NE', '68845','3085552468', '30','20','30','20');
INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls)
VALUES ('Proviso Lincoln', '501 Stadium Drive', 'Lincoln', 'NE', '68508','4025559876', '100','75','100','50');
INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls)
VALUES ('Proviso North Platte', '3110 S Jeffers Street', 'North Platte', 'NE', '69101','3085551234', '30','20','30','20');
INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls)
VALUES ("Proviso O'Neill", '1030 E Douglas Street', "O'Neill", 'NE', '68763','4025554567', '25','15','25','10');
INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls)
VALUES ('Proviso Omaha', '1170 Capitol Ave', 'Omaha', 'NE', '68102','4025552097', '100','75','100','50');
INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls)
VALUES ('Proviso Scottsbluff', '229 US-26', 'Scottsbluff', 'NE', '69361','3085557632', '25','15','25','10');
INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls)
VALUES ('Proviso South Sioux City', '384 E 4th Street', 'South Sioux City', 'NE', '68776','4025555000', '30','20','30','20');

/*Insert one test reservation with payment for testing.*/
INSERT INTO reservations (customer_id, hotel_id, number_of_guests, check_in, check_out, earned_points, room_type) VALUES ('1','1','1','2022-9-10', '2022-9-11', '150', 'standard king');
INSERT INTO payments (name_on_card, expiration, card_number, transaction_time, amount)
VALUES ('John Doe', '0724', '4012888888881881',  CURRENT_DATE, '11500');