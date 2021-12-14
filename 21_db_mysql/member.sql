show tables;
-- INSERT SELECT UPDATE DELETE
-- CREATE READ   UPDATE DELETE

DROP TABLE member;

CREATE TABLE IF NOT EXISTS member(
	num int PRIMARY KEY auto_increment,
	name VARCHAR(50),
	addr VARCHAR(300)
);

DESC member;

SELECT * FROM member;

INSERT INTO member(name,addr) VALUES('배민구','금정');

SELECT * FROM member;
commit;

