-- Deletes data in table but not table itself
TRUNCATE TABLE users CASCADE;
TRUNCATE TABLE gifts CASCADE;
TRUNCATE TABLE gift_lists CASCADE;
TRUNCATE TABLE gift_list_items CASCADE;
TRUNCATE TABLE gift_list_members CASCADE;

-- Resets the auto incrementing primary keys 
ALTER SEQUENCE users_id_seq RESTART WITH 1;
ALTER SEQUENCE gifts_id_seq RESTART WITH 1;
ALTER SEQUENCE gift_lists_id_seq RESTART WITH 1;
ALTER SEQUENCE gift_list_members_id_seq RESTART WITH 1;

INSERT INTO users (name, email, dob) VALUES ('John', 'john@hello.com', '1990-05-30');
INSERT INTO users (name, email, dob) VALUES ('Mary', 'mary@hello.com', '1980-04-24');
INSERT INTO users (name, email, dob) VALUES ('Martin Smith', 'martin@hello.com', '1976-03-10');
INSERT INTO users (name, email, dob) VALUES ('Jude', 'jude@hello.com', '1954-10-29');
INSERT INTO users (name, email, dob) VALUES ('Mario', 'mario@hello.com', '1990-03-20');
INSERT INTO users (name, email, dob) VALUES ('Cam Jones', 'cameron@hello.com', '1985-05-10');

INSERT INTO gifts (name, description, price, link) VALUES ('Sunglasses', 'New sunnies for the beach!', '12000', 'http://www.amazon.com');
INSERT INTO gifts (name, description, price, link) VALUES ('Wallet', 'Black leather wallet', '3000', 'http://www.amazon.com');
INSERT INTO gifts (name, description, price, link) VALUES ('Phone case', 'New case for my new phone', '2000', 'http://www.amazon.com');
INSERT INTO gifts (name, description, price, link) VALUES ('Shaver', 'My old shaver is getting old.', '10000', 'http://www.amazon.com');
INSERT INTO gifts (name, description, price, link) VALUES ('Lego', 'Titanic set', '20000', 'http://www.amazon.com');
INSERT INTO gifts (name, description, price, link) VALUES ('Playstation', 'New playstation', '40000', 'http://www.amazon.com');


INSERT INTO gift_lists (name, status) VALUES ('Joe''s 50th!', 'OPEN');
INSERT INTO gift_lists (name, status) VALUES ('Martin''s 21st bday', 'OPEN');

INSERT INTO gift_list_items (gift_list_id, gift_id, gift_status) VALUES ('1', '1', 'PURCHASED');
INSERT INTO gift_list_items (gift_list_id, gift_id, gift_status) VALUES ('1', '2', 'AVAILABLE');
INSERT INTO gift_list_items (gift_list_id, gift_id, gift_status) VALUES ('1', '3', 'PURCHASED');
INSERT INTO gift_list_items (gift_list_id, gift_id, gift_status) VALUES ('2', '4', 'AVAILABLE');
INSERT INTO gift_list_items (gift_list_id, gift_id, gift_status) VALUES ('2', '5', 'AVAILABLE');
INSERT INTO gift_list_items (gift_list_id, gift_id, gift_status) VALUES ('2', '6', 'PURCHASED');
INSERT INTO gift_list_items (gift_list_id, gift_id, gift_status) VALUES ('2', '7', 'PURCHASED');

INSERT INTO gift_list_members (gift_list_id, user_id, user_status) VALUES ('1', '1', 'RECIEVER');
INSERT INTO gift_list_members (gift_list_id, user_id, user_status) VALUES ('1', '2', 'GIVER');
INSERT INTO gift_list_members (gift_list_id, user_id, user_status) VALUES ('1', '3', 'GIVER');
INSERT INTO gift_list_members (gift_list_id, user_id, user_status) VALUES ('2', '4', 'GIVER');
INSERT INTO gift_list_members (gift_list_id, user_id, user_status) VALUES ('2', '5', 'GIVER');
INSERT INTO gift_list_members (gift_list_id, user_id, user_status) VALUES ('2', '6', 'RECIEVER');