SELECT * FROM fpop;

SELECT LEFT('�嵿��_�ܰ���',CHARINDEX('_','�嵿��_�ܰ���')-1);

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
--���ڿ��� ������ġ���� 1�� �� �͸�ŭ ���ʿ��� ����
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

alter table fpop add ������ float;
alter table fpop add ������ numeric(10,5);
alter table fpop add TOTAL float;

UPDATE fpop SET ������ = M10+M20+M30+M40+M50+M60;
UPDATE fpop SET ������ = W10+W20+W30+W40+W50+W60;
UPDATE fpop SET TOTAL = ������+������;

SELECT ������, ������, TOTAL FROM fpop;

SELECT A3, SUM(������) AS ���鵿��_������, SUM(������) AS ���鵿��_������, SUM(TOTAL) AS ���鵿��_TOTAL
FROM fpop
GROUP BY A3
ORDER BY SUM(TOTAL) DESC, SUM(������) DESC, SUM(������) DESC;

CREATE VIEW ���鵿��_�����α���2  AS 
SELECT A3, SUM(������) AS ���鵿��_������, SUM(������) AS ���鵿��_������, SUM(TOTAL) AS ���鵿��_TOTAL
FROM fpop
GROUP BY A3;
--ORDER BY SUM(TOTAL) DESC, SUM(������) DESC, SUM(������) DESC;

SELECT * FROM ���鵿��_�����α���2;

SELECT * FROM ���鵿��_�����α���2 ORDER BY A3;

--SELECT * FROM ���鵿��_�����α���2 GROUP BY A3;
  