select * from �ֹ� order by ����ȣ;

select sum(�ǸŰ���) as �Ѹ���
from �ֹ�
where ����ȣ = 2;

select sum(�ǸŰ���) as �Ѿ�,
	   avg(�ǸŰ���) as ���,
	   min(�ǸŰ���) as �ּ�,
	   max(�ǸŰ���) as �ִ�
from �ֹ�;

select count(*) as �ǸŰǼ�
from �ֹ�; 

select ����ȣ, count(*) as ��������, sum(�ǸŰ���) as �Ǹ��Ѿ�
from �ֹ�
group by ����ȣ;

select ����ȣ, count(*) ��������
from �ֹ�
where �ǸŰ��� >= 8000
group by ����ȣ
having count(*) >= 2;

select * from ����;

select * from ��, �ֹ�;

select * from ��, �ֹ�
where ��.����ȣ = �ֹ�.�ֹ���ȣ;

select * from ��, �ֹ�
where ��.����ȣ = �ֹ�.�ֹ���ȣ
order by ��.����ȣ;

SELECT �̸�,  �ǸŰ���
FROM      ��, �ֹ�
WHERE     ��.����ȣ = �ֹ�.����ȣ ;

select �̸�, sum(�ǸŰ���) as ���ֹ���
from ��, �ֹ�
where ��.����ȣ = �ֹ�.����ȣ
group by �̸�
order by �̸�;

select �̸�, �����̸�
from ��, �ֹ�, ����
where ��.����ȣ = �ֹ�.����ȣ and �ֹ�.������ȣ = ����.������ȣ;


select �̸�, �����̸�
from ��, �ֹ�, ����
where ��.����ȣ = �ֹ�.����ȣ and �ֹ�.������ȣ = ����.������ȣ
and �ǸŰ��� = 20000;

select �̸�, �ǸŰ���
from �� left outer join �ֹ�
on ��.����ȣ = �ֹ�.����ȣ;

SELECT ABS(-78), ABS(+78);
SELECT ROUND(6834.875, 1);
SELECT ROUND(6834.875, 2);
SELECT ROUND(6834.875, 0);
SELECT ROUND(6834.875, -1);
SELECT ROUND(6834.875, -2);

select ����ȣ, round(sum(�ǸŰ���)/count(*), -2) as "��� �ݾ�"
from �ֹ�
group by ����ȣ;

select �����̸� as ����, len(�����̸�) as ����
from ����
where ���ǻ�='�½�����';

select substring(�̸�, 1, 1) ��, count(*) �ο�
from ��
group by substring(�̸�, 1, 1) ;

select ������ȣ, �����̸�, ���ǻ�, ����
from ����;

select ������ȣ, replace(�����̸�, '�߱�', '��') �����̸�, ���ǻ�, ����
from ����;

select �ֹ���ȣ, �Ǹ�����, dateadd(dd, 10, �Ǹ�����) as "Ȯ�� ����"
from �ֹ�;

select �ֹ���ȣ, �Ǹ�����, dateadd(mm, 1, �Ǹ�����) as "Ȯ�� ����"
from �ֹ�;

select * from �ֹ�;
SELECT SYSDATETIME() as "����ð�";
SELECT DAY(SYSDATETIME()) as "���ó�¥"
SELECT month(SYSDATETIME()) as "��"