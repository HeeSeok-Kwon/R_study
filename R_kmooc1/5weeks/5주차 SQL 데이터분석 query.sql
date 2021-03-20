SELECT * FROM fpop;

SELECT LEFT('장동건_외계인',CHARINDEX('_','장동건_외계인')-1);

ALTER TABLE fpop
ADD A1 VARCHAR(20);

SELECT A1 FROM fpop;

--update fpop
--set A1 = left(PNU_NAME, CHARINDEX('',PNU_NAME)-1);

UPDATE  FPOP
SET A1 = LEFT(PNU_NAME, CHARINDEX(' ', PNU_NAME)-1);
------------------------------------------------------------------
ALTER TABLE fpop
ADD PNU_NAME1 VARCHAR(50);

UPDATE fpop
SET PNU_NAME1=SUBSTRING(PNU_NAME, CHARINDEX(' ',PNU_NAME)+1,LEN(PNU_NAME));

SELECT PNU_NAME1 FROM fpop;
------------------------------------------------------------------
alter table fpop
add A2 varchar(20);

update fpop
set A2=left(pnu_name1, charindex(' ',pnu_name1)-1);
--문자열의 시작위치에서 1을 뺀 것만큼 왼쪽에서 추출
select A2 from fpop;

alter table fpop
add PNU_NAME2 VARCHAR(50);

UPDATE FPOP
SET PNU_NAME2=SUBSTRING(PNU_NAME1, CHARINDEX(' ',PNU_NAME1)+1,LEN(PNU_NAME1));

SELECT PNU_NAME2 FROM FPOP;
------------------------------------------------------------------
ALTER TABLE fpop
ADD A3 VARCHAR(20);

UPDATE fpop
SET A3 = LEFT(PNU_NAME2, CHARINDEX(' ',PNU_NAME2)-1);

SELECT A3 FROM fpop;

SELECT * FROM fpop;

alter table fpop add 남자합 float;
alter table fpop add 여자합 numeric(10,5);
alter table fpop add TOTAL float;

UPDATE fpop SET 남자합 = M10+M20+M30+M40+M50+M60;
UPDATE fpop SET 여자합 = W10+W20+W30+W40+W50+W60;
UPDATE fpop SET TOTAL = 남자합+여자합;

SELECT 남자합, 여자합, TOTAL FROM fpop;

SELECT A3, SUM(남자합) AS 읍면동별_남자합, SUM(여자합) AS 읍면동별_여자합, SUM(TOTAL) AS 읍면동별_TOTAL
FROM fpop
GROUP BY A3
ORDER BY SUM(TOTAL) DESC, SUM(여자합) DESC, SUM(남자합) DESC;

CREATE VIEW 읍면동별_유동인구수2  AS 
SELECT A3, SUM(남자합) AS 읍면동별_남자합, SUM(여자합) AS 읍면동별_여자합, SUM(TOTAL) AS 읍면동별_TOTAL
FROM fpop
GROUP BY A3;
--ORDER BY SUM(TOTAL) DESC, SUM(여자합) DESC, SUM(남자합) DESC;

SELECT * FROM 읍면동별_유동인구수2;

SELECT * FROM 읍면동별_유동인구수2 ORDER BY A3;

--SELECT * FROM 읍면동별_유동인구수2 GROUP BY A3;
  