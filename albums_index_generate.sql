ALTER TABLE codeup_test_db.albums
    ADD UNIQUE (artist, name);

DESCRIBE albums