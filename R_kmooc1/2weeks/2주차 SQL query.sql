create table test(
����ȣ int primary key,
���̸� varchar(40),
�ּ� varchar(40),
��ȭ��ȣ varchar(30)
);

insert into test values(1, '������', '���� ��ü��Ÿ', '000-5000-0001');
insert into test values(2, '�迬��', '���ѹα� ����', '000-6000-0001');
insert into test values(3, '��̶�', '���ѹα� ������', '000-7000-0001');
insert into test values(4, '�߽ż�', '�̱� Ŭ������', '000-8000-0001');
insert into test values(5, '�ڼ���;', '���ѹα� ����', NULL);

select * from test;