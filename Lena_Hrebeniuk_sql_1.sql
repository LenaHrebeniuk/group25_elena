--1. ������� ��� ���� � ��� ������
select * from students;

--2. ������� ���� ��������� � �������
select*from students;

--3. ������� ������ Id �������������
select id from students;

 --4. ������� ������ ��� �������������
select name from students;

-- 5. ������� ������ email �������������
select email from students;

 --6. ������� ��� � email �������������
select name, email from students;

-- 7. ������� id, ���, email � ���� �������� �������������
select id, name, email, created_on from students;

-- 8. ������� ������������� ��� password 12333
select * from students 
where password = '12333';

-- 9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select * from students where created_on = '2021-03-26 00:00:00';

 --10. ������� ������������� ��� � ����� ���� ����� ����
select * from students where name like '%Anna%';

--11. ������� ������������� ��� � ����� � ����� ���� 8
select * from students where name like '%8';

--12. ������� ������������� ��� � ����� � ���� ����� �
select * from students where name like '%a%';

--13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
select * from students where created_on = '2021-07-12 00:00:00';

--14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
select * from students where created_on = '2021-07-12 00:00:00' or password = '1m313';

--15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
select * from students where created_on = '2021-07-12 00:00:00' or name like '%Andrey%';

--16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select * from students where created_on = '2021-07-12 00:00:00' or name like '%8%';

--17. ������� ������������ � ������� id ����� 110
select * from students where id = '110';

--18. ������� ������������ � ������� id ����� 153
select * from students where id = '153';

--19. ������� ������������ � ������� id ������ 140
select * from students where id > '140';

--20. ������� ������������ � ������� id ������ 130
select * from students where id < '130';