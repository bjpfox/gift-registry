-- To initiatilise we run
-- createdb gift_registry
-- psql -d gift_registry < schema.sql
-- psql -d gift_registry < seed.sql


DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS gifts CASCADE;
DROP TABLE IF EXISTS gift_lists CASCADE;
DROP TABLE IF EXISTS gift_list_members CASCADE;


-- Lists all of the users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,-- id 
    name VARCHAR(320),
    email VARCHAR(320), 
    dob DATE
); 


-- Contains the data for each particular gift 
CREATE TABLE gifts (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(320), 
    description VARCHAR(320), 
    price INT, 
    link VARCHAR(2048)
);

CREATE TABLE gift_lists (
    id SERIAL PRIMARY KEY, -- list id
    name VARCHAR(320), -- list name
    status VARCHAR(6) -- options: OPEN, CLOSED
);

-- Relates each gift to a specific gift list and has its status 
CREATE TABLE gift_list_items (
    gift_list_id INT, -- list id 
    CONSTRAINT fk_gift_list_items_gift_lists
        FOREIGN KEY(gift_list_id)
        REFERENCES gift_lists(id),
    gift_id INT, 
    CONSTRAINT fk_gift_list_items_gifts
        FOREIGN KEY(gift_id)
        REFERENCES gifts(id),
    gift_status VARCHAR(9) -- Is gift still available, or already purchased? Options: PURCHASED / AVAILABLE
);

-- Lists which users have access to the list, and their status (giver, reciever) 
CREATE TABLE gift_list_members (
    gift_list_id INT, -- list id, 
    CONSTRAINT fk_gift_list_members_gift_lists
        FOREIGN KEY (gift_list_id)
        REFERENCES gift_lists(id), 
    user_id INT,
    CONSTRAINT fk_gift_list_members_users
        FOREIGN KEY (user_id)
        REFERENCES users(id), 
    user_status VARCHAR(8) -- Gift reciever or gift giver? Options: GIVER / RECIEVER (better to use boolean?) 
);




-- Note: the below is likely not required, but kept in case needed in future:
-- -- Groups are simply a list of email addresses that a user can Contains details of family, name, maybe admin 
-- CREATE TABLE groups (
--     id SERIAL PRIMARY KEY, -- Family id, 
--     name VARCHAR(255), -- family / group name
--     admin_id -- admin user id (TBC)
--     )

-- -- Assigns each user to one or more families (family/group of friends) 
-- CREATE TABLE group_members (
--     family_id, 
--     user_id
--     )

-- OPTION B: combine gift details and list details into one table (does this provide less flexibility?) 
-- CREATE TABLE gift_lists (
--     id SERIAL PRIMARY KEY, -- list id, 
--     gift_name VARCHAR(255), -- gift name, 
--     description VARCHAR(255), -- gift description
--     price INT, -- gift price, 
--     link VARCHAR(255) -- gift link
--     )