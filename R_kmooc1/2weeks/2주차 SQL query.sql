create table test(
고객번호 int primary key,
고객이름 varchar(40),
주소 varchar(40),
전화번호 varchar(30)
);

insert into test values(1, '박지성', '영국 맨체스타', '000-5000-0001');
insert into test values(2, '김연아', '대한민국 서울', '000-6000-0001');
insert into test values(3, '장미란', '대한민국 강원도', '000-7000-0001');
insert into test values(4, '추신수', '미국 클리블랜드', '000-8000-0001');
insert into test values(5, '박세리;', '대한민국 대전', NULL);

select * from test;