CREATE TABLE IF NOT EXISTS test_guest(
	id INT PRIMARY KEY auto_increment,
	guestName VARCHAR(20) NOT NULL,
	password VARCHAR(30) NOT NULL,
	message TEXT
);

DESC test_guest;

SELECT * FROM test_guest;

PREPARE sql1 FROM 'DELETE FROM test_guest WHERE id=? AND password=?';
SET @id = 2;
SET @pass = ' ORD 1=1 --';
EXECUTE sql1 USING @id, @pass;