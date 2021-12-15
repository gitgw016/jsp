CREATE TABLE IF NOT EXISTS board_test(
	board_num int PRIMARY KEY auto_increment,	-- 게시물 번호
	board_title VARCHAR(50),					-- 제목
	board_auth VARCHAR(50),						-- 작성자
	board_content TEXT,							-- 내용
	board_date TIMESTAMP DEFAULT now()			-- 작성시간
);

INSERT INTO board_test VALUES(null,'가렵다','배민구','어디가 가려울까 ㅎ?',now());
INSERT INTO board_test VALUES(null,'왜 나만','오정만','안주는 건데 왜?',now());
commit;

SELECT * FROM board_test;

UPDATE board_test SET board_title ='좀 긁어도 가려워 듸지겄다' WHERE board_num=1;

-- mysql 5.x 버전에서 rownum(행번호 구하기)
SELECT @ROWNUM := @ROWNUM+1 AS rnum, A.* FROM (SELECT * FROM board_test WHERE (@ROWNUM:=0) = 0 ORDER BY board_num ASC) AS A ORDER BY rnum DESC;

-- mysql 8.x 버전에서 추가 ROW_NUMBER()
SELECT ROW_NUMBER() OVER(ORDER BY board_num ASC) AS rnum, board_test.* FROM board_test ORDER BY rnum DESC;

-- test 게시글 개수 증가
INSERT INTO board_test(board_title,board_auth,board_content)
SELECT board_title,board_auth,board_content FROM board_test;

SELECT * FROM board_test ORDER BY board_num DESC;
													 -- 0 ~ 9
SELECT * FROM board_test ORDER BY board_num DESC limit 0, 10;
													 -- 10 ~ 19
SELECT * FROM board_test ORDER BY board_num DESC limit 10, 10;

SELECT count(*) FROM board_Test;