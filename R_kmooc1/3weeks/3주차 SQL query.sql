--고객 테이블 생성
create table 고객 (
고객번호 int,
이름 varchar(40),
주소 varchar(40),
전화번호 varchar(30),
primary key(고객번호)); 

--도서 테이블 생성
CREATE TABLE 도서(
도서번호  INT,
도서이름    VARCHAR(20),
출판사      VARCHAR(20),
가격       INT,
primary key(도서번호));

--주문 테이블 생성
create table 주문(
주문번호 int,
고객번호 int not null,
도서번호 int not null,
판매가격 int,
판매일자 date,
primary key(주문번호),
foreign key(고객번호) references 고객(고객번호) on delete cascade,
foreign key(도서번호) references 도서(도서번호) on delete cascade);

-- 고객데이터 추가
INSERT INTO 고객 VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO 고객 VALUES (2, '김연아', '대한민국 서울', '000-6000-0001'); 
INSERT INTO 고객 VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO 고객 VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO 고객 VALUES (5, '박세리', '대한민국 대전', NULL);
 -- 도서 데이터 추가
INSERT INTO 도서 VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO 도서 VALUES(2, '축구 아는 여자', '나무수', 13000);
INSERT INTO 도서 VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO 도서 VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO 도서 VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO 도서 VALUES(6, '역도 단계별 기술', '굿스포츠', 6000);
INSERT INTO 도서 VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO 도서 VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO 도서 VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO 도서 VALUES(10, 'Olympic Champions', 'Pearson', 13000);
 -- 주문 데이터 추가
INSERT INTO 주문 VALUES (1, 1, 1, 6000, '2013-07-01');
INSERT INTO 주문 VALUES (2, 1, 3, 21000, '2013-07-03');
INSERT INTO 주문 VALUES (3, 2, 5, 8000, '2013-07-03');
INSERT INTO 주문 VALUES (4, 3, 6, 6000, '2013-07-04');
INSERT INTO 주문 VALUES (5, 4, 7, 20000, '2013-07-05');
INSERT INTO 주문 VALUES (6, 1, 2, 12000, '2013-07-07');
INSERT INTO 주문 VALUES (7, 4, 8, 13000, '2013-07-07');
INSERT INTO 주문 VALUES (8, 3, 10, 12000, '2013-07-08');
INSERT INTO 주문 VALUES (9, 2, 10, 7000, '2013-07-09');
INSERT INTO 주문 VALUES (10, 3, 8, 13000, '2013-07-10');