CREATE TABLE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

# Inner join
SELECT join_test_db.users.name as user_name, join_test_db.roles.name as role_name
FROM join_test_db.users
  JOIN join_test_db.roles ON join_test_db.users.role_id = join_test_db.roles.id;

# Left join
SELECT join_test_db.users.name AS user_name, join_test_db.roles.name AS role_name
FROM join_test_db.users
  LEFT JOIN join_test_db.roles ON join_test_db.users.role_id = join_test_db.roles.id;

# Right join
SELECT join_test_db.users.name AS user_name, join_test_db.roles.name AS role_name
FROM join_test_db.users
  RIGHT JOIN join_test_db.roles ON join_test_db.users.role_id = join_test_db.roles.id;

# show number of users with role
SELECT join_test_db.roles.name AS role_name, count(join_test_db.users.name) as "users with this role"
FROM join_test_db.users
  RIGHT JOIN join_test_db.roles ON join_test_db.users.role_id = join_test_db.roles.id
GROUP BY join_test_db.roles.name ORDER BY "users with this role";