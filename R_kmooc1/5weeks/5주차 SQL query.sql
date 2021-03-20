SELECT 고객번호, SUM(판매가격) AS 총판매액
FROM 주문
GROUP BY 고객번호;

SELECT 고객번호, (SELECT 이름 
				  FROM 고객
				  WHERE 고객.고객번호=주문.고객번호) AS 이름,
				  SUM(판매가격) AS 총판매액
FROM 주문
GROUP BY 고객번호;

ALTER TABLE 주문
ADD 책이름 VARCHAR(20);

SELECT * FROM 주문;

UPDATE 주문
SET 책이름 = (SELECT 도서이름 FROM 도서 WHERE 도서.도서번호=주문.도서번호);

--고객별 판매액
SELECT 고객.고객번호, SUM(판매가격) AS 고객별_판매액
FROM 고객, 주문
WHERE 고객.고객번호 = 주문.고객번호
GROUP BY 고객.고객번호;


SELECT 주문.고객번호, SUM(판매가격) AS 고객별_판매액
FROM 고객, 주문
WHERE 고객.고객번호 = 주문.고객번호
GROUP BY 주문.고객번호;

ALTER TABLE 주문 ADD 고객이름 VARCHAR(20);

UPDATE 주문 
SET 고객이름 = (SELECT 이름 FROM 고객 WHERE 고객.고객번호=주문.고객번호);

SELECT * FROM 주문;

ALTER TABLE 주문 ADD 출판사 VARCHAR(20);

UPDATE 주문 
SET 출판사 = (SELECT 출판사 FROM 도서 WHERE 도서.도서번호=주문.도서번호);

SELECT 주문.출판사, SUM(판매가격) AS "출판사별 판매액"
FROM 주문
GROUP BY 출판사;

--평균 주문금액 이하의 주문에 대해서 주문번호와 금액을 보이시오.
SELECT 주문번호, 판매가격
FROM 주문
WHERE 판매가격 <= (SELECT AVG(판매가격) FROM 주문);

SELECT 주문번호, 고객번호, 판매가격
FROM 주문 MAIN
WHERE 판매가격 > (SELECT AVG(판매가격) FROM 주문 TEMP
WHERE MAIN.고객번호=TEMP.고객번호); --고객번호별 평균 판매가격

--대한민국에 거주하는 고객에게 판매한 도서의 총판매액
SELECT SUM(판매가격)
FROM 주문, 고객
WHERE 고객.고객번호=주문.고객번호 AND 고객.주소 LIKE '%대한민국%';
--GROUP BY 고객.이름;

SELECT SUM(판매가격) 총판매액
FROM 주문
WHERE 고객번호 IN (SELECT 고객번호 FROM 고객 WHERE 주소 LIKE '%대한민국%');

SELECT SUM(판매가격) 총판매액
FROM 주문
WHERE 도서번호 IN (SELECT 도서번호 FROM 도서 WHERE 출판사 LIKE '%굿스포츠%');


SELECT 주문번호, 판매가격
FROM 주문
WHERE 판매가격 > ALL(SELECT 판매가격 FROM 주문 WHERE 고객번호='3');

SELECT SUM(판매가격) "대한민국 총판매액"
FROM 주문
WHERE EXISTS (SELECT * FROM 고객 WHERE 주소 LIKE '%대한민국%' 
AND 고객.고객번호 = 주문.고객번호);

CREATE VIEW 주문뷰 AS
SELECT 주문번호, 주문.고객번호, 고객.이름, 주문.도서번호,
	   도서.도서이름, 주문.판매가격, 주문.판매일자
FROM 고객, 주문, 도서
WHERE 고객.고객번호=주문.고객번호 AND 주문.도서번호=도서.도서번호;

SELECT * FROM 주문뷰;

CREATE VIEW vw_Book 
AS SELECT *
FROM 도서
WHERE 도서이름 LIKE '%축구%';


CREATE VIEW 고객뷰
AS SELECT *
FROM 고객
WHERE 주소 LIKE '%대한민국%';

SELECT * FROM 고객뷰;

ALTER VIEW 고객뷰(고객번호, 고객명, 집주소)
AS SELECT 고객번호, 이름, 주소
FROM 고객
WHERE 주소 LIKE '%영국%';


SELECT 주문번호, 도서이름, 판매가격
FROM 주문뷰
WHERE 이름='김연아';

DROP VIEW 고객뷰;

SELECT 고객뷰.이름, SUM(주문.판매가격) AS 총판매액
FROM (SELECT 고객번호, 이름
FROM 고객
WHERE 고객번호 <= 2) 고객뷰, 주문
WHERE 고객뷰.고객번호 = 주문.고객번호
GROUP BY 고객뷰.이름;