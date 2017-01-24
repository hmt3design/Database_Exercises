use codeup_test_db;
DROP DATABASE IF EXISTS albums;
CREATE TABLE albums(
id int(10) unsigned not null auto_increment,
artist varchar(300) not null,
name VARCHAR(300) NOT NULL,
release_date INT,
sales DECIMAL(10),
genre VARCHAR(300),
primary key(id)
);

