-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  email VARCHAR,
  gender VARCHAR,
  country VARCHAR,
  city VARCHAR,
  "people-in-house" INTEGER,
  "marital-status" VARCHAR,
  age INTEGER
);

-- ---
-- Table 'have_dog'
-- 
-- ---

DROP TABLE IF EXISTS have_dog;

CREATE TABLE have_dog (
  id SERIAL PRIMARY KEY,
  id_users INTEGER,
  dog_name VARCHAR,
  dog_age INTEGER,
  dog_breed INTEGER,
  vet_frequency VARCHAR,
  how_many_pet VARCHAR,
  where_get VARCHAR,
  "was-paid" INTEGER,
  dog_personality INTEGER,
  dog_sex INTEGER,
  dog_breed2 VARCHAR,
  FOREIGN KEY (id_users) REFERENCES users (id)
);

-- ---
-- Table 'dont_have_but_want'
-- 
-- ---

DROP TABLE IF EXISTS dont_have_but_want;

CREATE TABLE dont_have_but_want (
  id SERIAL PRIMARY KEY,
  dog_name VARCHAR,
  dog_sex VARCHAR,
  dog_size VARCHAR,
  dog_breed VARCHAR,
  about_coast VARCHAR,
  personality_expect INTEGER,
  adopt_or_buy INTEGER,
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users (id)
);

-- ---
-- Table 'had_dog'
-- 
-- ---

DROP TABLE IF EXISTS had_dog;

CREATE TABLE had_dog (
  id SERIAL PRIMARY KEY,
  dog_name VARCHAR,
  dog_personality VARCHAR,
  time_with_the_dog VARCHAR,
  dog_breed VARCHAR,
  dog_age INTEGER,
  adopted_or_buyed TEXT,
  go_to_vet VARCHAR,
  time_with_the_dog2 VARCHAR,
  dog_origin VARCHAR,
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users (id)
);

-- ---
-- Table 'dont_had_and_dont_want'
-- 
-- ---

DROP TABLE IF EXISTS dont_had_and_dont_want;

CREATE TABLE dont_had_and_dont_want (
  id SERIAL PRIMARY KEY,
  why_dont_want TEXT,
  something_would_make_you_want_to_have_a_dog INTEGER,
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users (id)
);

-- ---
-- Table 'contact_users'
-- 
-- ---

DROP TABLE IF EXISTS contact_users;

CREATE TABLE contact_users (
  id SERIAL PRIMARY KEY,
  phone INTEGER,
  email VARCHAR,
  complete_name VARCHAR,
  id_users INTEGER,
  FOREIGN KEY (id_users) REFERENCES users (id)
);

-- ---
-- Test Data
-- ---

-- INSERT INTO users (name,email,gender,country,city,"people-in-house","marital-status",age) VALUES
-- ('','','','','','','',0);
-- INSERT INTO have_dog (id_users,dog_name,dog_age,dog_breed,vet_frequency,how_many_pet,where_get,"was-paid",dog_personality,dog_sex,dog_breed2) VALUES
-- (0,'','',0,0,'','','',0,0,'');
-- INSERT INTO dont_have_but_want (dog_name,dog_sex,dog_size,dog_breed,about_coast,personality_expect,adopt_or_buy,id_users) VALUES
-- ('','','','','',0,0,0);
-- INSERT INTO had_dog (dog_name,dog_personality,time_with_the_dog,dog_breed,dog_age,adopted_or_buyed,go_to_vet,time_with_the_dog2,dog_origin,id_users) VALUES
-- ('','','','','',0,'','',0,0);
-- INSERT INTO dont_had_and_dont_want (why_dont_want,something_would_make_you_want_to_have_a_dog,id_users) VALUES
-- ('',0,0);
-- INSERT INTO contact_users (phone,email,complete_name,id_users) VALUES
-- (0,'','','');
