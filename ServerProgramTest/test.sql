show tables;

CREATE TABLE test_guestbook(
	id INT PRIMARY KEY auto_increment,
	guestName VARCHAR(20) NOT NULL,
	password VARCHAR(30) NOT NULL,
	message TEXT
);
commit;
SELECT * FROM test_guestbook;

INSERT INTO test_guestbook(guestName,password,message) SELECT guestName,password,message FROM test_guestbook;

DELETE FROM test_guestbook WHERE id = 2 AND password = 124;
DESC test_guestbook;