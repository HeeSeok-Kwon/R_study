SELECT ����ȣ, SUM(�ǸŰ���) AS ���Ǹž�
FROM �ֹ�
GROUP BY ����ȣ;

SELECT ����ȣ, (SELECT �̸� 
				  FROM ��
				  WHERE ��.����ȣ=�ֹ�.����ȣ) AS �̸�,
				  SUM(�ǸŰ���) AS ���Ǹž�
FROM �ֹ�
GROUP BY ����ȣ;

ALTER TABLE �ֹ�
ADD å�̸� VARCHAR(20);

SELECT * FROM �ֹ�;

UPDATE �ֹ�
SET å�̸� = (SELECT �����̸� FROM ���� WHERE ����.������ȣ=�ֹ�.������ȣ);

--���� �Ǹž�
SELECT ��.����ȣ, SUM(�ǸŰ���) AS ����_�Ǹž�
FROM ��, �ֹ�
WHERE ��.����ȣ = �ֹ�.����ȣ
GROUP BY ��.����ȣ;


SELECT �ֹ�.����ȣ, SUM(�ǸŰ���) AS ����_�Ǹž�
FROM ��, �ֹ�
WHERE ��.����ȣ = �ֹ�.����ȣ
GROUP BY �ֹ�.����ȣ;

ALTER TABLE �ֹ� ADD ���̸� VARCHAR(20);

UPDATE �ֹ� 
SET ���̸� = (SELECT �̸� FROM �� WHERE ��.����ȣ=�ֹ�.����ȣ);

SELECT * FROM �ֹ�;

ALTER TABLE �ֹ� ADD ���ǻ� VARCHAR(20);

UPDATE �ֹ� 
SET ���ǻ� = (SELECT ���ǻ� FROM ���� WHERE ����.������ȣ=�ֹ�.������ȣ);

SELECT �ֹ�.���ǻ�, SUM(�ǸŰ���) AS "���ǻ纰 �Ǹž�"
FROM �ֹ�
GROUP BY ���ǻ�;

--��� �ֹ��ݾ� ������ �ֹ��� ���ؼ� �ֹ���ȣ�� �ݾ��� ���̽ÿ�.
SELECT �ֹ���ȣ, �ǸŰ���
FROM �ֹ�
WHERE �ǸŰ��� <= (SELECT AVG(�ǸŰ���) FROM �ֹ�);

SELECT �ֹ���ȣ, ����ȣ, �ǸŰ���
FROM �ֹ� MAIN
WHERE �ǸŰ��� > (SELECT AVG(�ǸŰ���) FROM �ֹ� TEMP
WHERE MAIN.����ȣ=TEMP.����ȣ); --����ȣ�� ��� �ǸŰ���

--���ѹα��� �����ϴ� ������ �Ǹ��� ������ ���Ǹž�
SELECT SUM(�ǸŰ���)
FROM �ֹ�, ��
WHERE ��.����ȣ=�ֹ�.����ȣ AND ��.�ּ� LIKE '%���ѹα�%';
--GROUP BY ��.�̸�;

SELECT SUM(�ǸŰ���) ���Ǹž�
FROM �ֹ�
WHERE ����ȣ IN (SELECT ����ȣ FROM �� WHERE �ּ� LIKE '%���ѹα�%');

SELECT SUM(�ǸŰ���) ���Ǹž�
FROM �ֹ�
WHERE ������ȣ IN (SELECT ������ȣ FROM ���� WHERE ���ǻ� LIKE '%�½�����%');


SELECT �ֹ���ȣ, �ǸŰ���
FROM �ֹ�
WHERE �ǸŰ��� > ALL(SELECT �ǸŰ��� FROM �ֹ� WHERE ����ȣ='3');

SELECT SUM(�ǸŰ���) "���ѹα� ���Ǹž�"
FROM �ֹ�
WHERE EXISTS (SELECT * FROM �� WHERE �ּ� LIKE '%���ѹα�%' 
AND ��.����ȣ = �ֹ�.����ȣ);

CREATE VIEW �ֹ��� AS
SELECT �ֹ���ȣ, �ֹ�.����ȣ, ��.�̸�, �ֹ�.������ȣ,
	   ����.�����̸�, �ֹ�.�ǸŰ���, �ֹ�.�Ǹ�����
FROM ��, �ֹ�, ����
WHERE ��.����ȣ=�ֹ�.����ȣ AND �ֹ�.������ȣ=����.������ȣ;

SELECT * FROM �ֹ���;

CREATE VIEW vw_Book 
AS SELECT *
FROM ����
WHERE �����̸� LIKE '%�౸%';


CREATE VIEW ����
AS SELECT *
FROM ��
WHERE �ּ� LIKE '%���ѹα�%';

SELECT * FROM ����;

ALTER VIEW ����(����ȣ, ����, ���ּ�)
AS SELECT ����ȣ, �̸�, �ּ�
FROM ��
WHERE �ּ� LIKE '%����%';


SELECT �ֹ���ȣ, �����̸�, �ǸŰ���
FROM �ֹ���
WHERE �̸�='�迬��';

DROP VIEW ����;

SELECT ����.�̸�, SUM(�ֹ�.�ǸŰ���) AS ���Ǹž�
FROM (SELECT ����ȣ, �̸�
FROM ��
WHERE ����ȣ <= 2) ����, �ֹ�
WHERE ����.����ȣ = �ֹ�.����ȣ
GROUP BY ����.�̸�;