select * from 주문 order by 고객번호;

select sum(판매가격) as 총매출
from 주문
where 고객번호 = 2;

select sum(판매가격) as 총액,
	   avg(판매가격) as 평균,
	   min(판매가격) as 최소,
	   max(판매가격) as 최대
from 주문;

select count(*) as 판매건수
from 주문; 

select 고객번호, count(*) as 도서수량, sum(판매가격) as 판매총액
from 주문
group by 고객번호;

select 고객번호, count(*) 도서수량
from 주문
where 판매가격 >= 8000
group by 고객번호
having count(*) >= 2;

select * from 도서;

select * from 고객, 주문;

select * from 고객, 주문
where 고객.고객번호 = 주문.주문번호;

select * from 고객, 주문
where 고객.고객번호 = 주문.주문번호
order by 고객.고객번호;

SELECT 이름,  판매가격
FROM      고객, 주문
WHERE     고객.고객번호 = 주문.고객번호 ;

select 이름, sum(판매가격) as 총주문액
from 고객, 주문
where 고객.고객번호 = 주문.고객번호
group by 이름
order by 이름;

select 이름, 도서이름
from 고객, 주문, 도서
where 고객.고객번호 = 주문.고객번호 and 주문.도서번호 = 도서.도서번호;


select 이름, 도서이름
from 고객, 주문, 도서
where 고객.고객번호 = 주문.고객번호 and 주문.도서번호 = 도서.도서번호
and 판매가격 = 20000;

select 이름, 판매가격
from 고객 left outer join 주문
on 고객.고객번호 = 주문.고객번호;

SELECT ABS(-78), ABS(+78);
SELECT ROUND(6834.875, 1);
SELECT ROUND(6834.875, 2);
SELECT ROUND(6834.875, 0);
SELECT ROUND(6834.875, -1);
SELECT ROUND(6834.875, -2);

select 고객번호, round(sum(판매가격)/count(*), -2) as "평균 금액"
from 주문
group by 고객번호;

select 도서이름 as 제목, len(도서이름) as 길이
from 도서
where 출판사='굿스포츠';

select substring(이름, 1, 1) 성, count(*) 인원
from 고객
group by substring(이름, 1, 1) ;

select 도서번호, 도서이름, 출판사, 가격
from 도서;

select 도서번호, replace(도서이름, '야구', '농구') 도서이름, 출판사, 가격
from 도서;

select 주문번호, 판매일자, dateadd(dd, 10, 판매일자) as "확정 일자"
from 주문;

select 주문번호, 판매일자, dateadd(mm, 1, 판매일자) as "확정 일자"
from 주문;

select * from 주문;
SELECT SYSDATETIME() as "현재시간";
SELECT DAY(SYSDATETIME()) as "오늘날짜"
SELECT month(SYSDATETIME()) as "월"