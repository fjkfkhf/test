
--테이블 2개 create 
--테이블마다 데이터 insert 
--학생조회, 학생성적조회 쿼리문(select) 만들기

select * from MEMBER_TBL;
select * from score_tbl;

CREATE TABLE MEMBER_TBL (
	  ID		VARCHAR2(5) PRIMARY KEY
	, NAME		VARCHAR2(20)
	, GENDER 	VARCHAR2(3)
);

CREATE TABLE SCORE_TBL (
	  ID		VARCHAR2(5) PRIMARY KEY
	, KOREAN	NUMBER(3)
	, ENGLISH 	NUMBER(3)
	, MATH 		NUMBER(3)
	, HISTORY	NUMBER(3)
);

INSERT INTO MEMBER_TBL VALUES ('10301', '권기현', '남');
INSERT INTO MEMBER_TBL VALUES ('10302', '구지우', '여');
INSERT INTO MEMBER_TBL VALUES ('10303', '권태준', '남');
INSERT INTO MEMBER_TBL VALUES ('10304', '금기연', '여');
INSERT INTO MEMBER_TBL VALUES ('10305', '김영진', '남');
INSERT INTO MEMBER_TBL VALUES ('10401', '김주현', '남');
INSERT INTO MEMBER_TBL VALUES ('10402', '김태민', '여');
INSERT INTO MEMBER_TBL VALUES ('10403', '임수민', '여');
INSERT INTO MEMBER_TBL VALUES ('10404', '남상도', '남');
INSERT INTO MEMBER_TBL VALUES ('10405', '조은호', '여');

INSERT INTO SCORE_TBL VALUES ('10301', 70,  80,  75, 95);
INSERT INTO SCORE_TBL VALUES ('10302', 80,  76,  80, 85);
INSERT INTO SCORE_TBL VALUES ('10303', 45,  75,  45, 75);
INSERT INTO SCORE_TBL VALUES ('10304', 65,  73,  65, 65);
INSERT INTO SCORE_TBL VALUES ('10305', 90, 100,  68, 95);
INSERT INTO SCORE_TBL VALUES ('10401', 95,  75,  84, 60);
INSERT INTO SCORE_TBL VALUES ('10402', 65,  70,  50, 94);
INSERT INTO SCORE_TBL VALUES ('10403', 80,  60, 100, 80);
INSERT INTO SCORE_TBL VALUES ('10404', 64,  50,  40, 65);
INSERT INTO SCORE_TBL VALUES ('10405', 55,  70,  80, 75);

SELECT id,
       name,
       SUBSTR(id, 1, 1) AS year,
       SUBSTR(id, 2, 2) AS class,
       SUBSTR(id, 4, 2) AS num,
       gender
FROM member_tbl;

SELECT M.id, M.name,
       SUBSTR(M.id, 1, 1) AS year,
       SUBSTR(M.id, 2, 2) AS class,
       SUBSTR(M.id, 4, 2) AS num,
       M.gender, S.korean, S.math, S.english, S.history,
       S.korean + S.math + S.english + S.history AS sum,
       (S.korean + S.math + S.english + S.history) / 4 AS avg,
       ROW_NUMBER() OVER(ORDER BY (S.korean + S.math + S.english + S.history)/4 DESC) rank
FROM member_tbl M INNER JOIN score_tbl S ON M.id = S.id;

SELECT SUM(korean) AS sum, SUM(math) AS math, SUM(english) AS english, SUM(history) AS history, 
	   SUM(korean + math + english + history) AS total, AVG((korean + math + english + history)/4) AS avg
  FROM score_tbl;
GROUP BY id;









