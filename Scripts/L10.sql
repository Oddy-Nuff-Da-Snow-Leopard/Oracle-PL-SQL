DROP TABLE FACULTY;
CREATE TABLE FACULTY (
    FACULTY CHAR(10) NOT NULL,
    FACULTY_NAME VARCHAR2(100),
    CONSTRAINT PK_FACULTY PRIMARY KEY(FACULTY)
);

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('����', '����������� ���� � ����������');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('����', '���������� ���������� � �������');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('���', '����������������� ���������');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('���', '���������-������������� ���������');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('����', '���������� � ������� ������ ��������������');

INSERT INTO FACULTY (FACULTY, FACULTY_NAME)
VALUES ('���', '���������� ������������ �������');
--------------------------------------------------------------------------------

DROP TABLE PULPIT;
CREATE TABLE PULPIT (
    PULPIT CHAR(20) NOT NULL,
    PULPIT_NAME VARCHAR2(200),
    FACULTY CHAR(10) NOT NULL,
    CONSTRAINT PK_PULPIT PRIMARY KEY(PULPIT),
    CONSTRAINT FK_PULPIT_FACULTY FOREIGN KEY(FACULTY) REFERENCES FACULTY(FACULTY)
);

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('����', '������������� ������ � ����������', '����');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('������', '���������������� ������������ � ������ ��������� ����������', '����');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('��', '�����������', '���');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('��', '������������', '���');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('��', '��������������', '���');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('�����', '���������� � ����������������', '���');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('������', '������������ �������������� � ������-��������� �������������', '���');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('��', '���������� ����', '����');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('�����', '������ ����� � ���������� �������������', '����');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('��', '������������ �����', '���');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('��������', '���������� ���������������� ������� � ����������� ���������� ����������', '���');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('�������', '���������� �������������� ������� � ����� ���������� ����������', '����');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('��������', '�����, ���������� ����������������� ����������� � ���������� ����������� �������', '����');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('����', '������������� ������ � ����������', '���');

INSERT INTO PULPIT (PULPIT, PULPIT_NAME, FACULTY)
VALUES ('����', '����������� � ��������� ������������������', '���');
--------------------------------------------------------------------------------

DROP TABLE TEACHER;
CREATE TABLE TEACHER ( 
    TEACHER CHAR(20) NOT NULL,
    TEACHER_NAME VARCHAR2(100),
    PULPIT CHAR(20) NOT NULL,
    CONSTRAINT PK_TEACHER PRIMARY KEY(TEACHER),
    CONSTRAINT FK_TEACHER_PULPIT FOREIGN KEY(PULPIT) REFERENCES PULPIT(PULPIT)
);

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '������ �������� �������������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('�����', '�������� ��������� ��������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('�����', '���������� ������ ����������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '������ ���� �����������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '������� �������� ��������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('�����', '�������� ������ ���������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('���', '����� ��������� ����������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('���', '������� ��������� �����������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('���', '��������� ����� ��������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '��������� ������� ����������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('������', '����������� ������� ����������', '����' );

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('?', '�����������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('���', '����� ������� ��������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('���', '����� ������� �������������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('������', '���������� ��������� �������������', '������');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('�����', '������� ������ ����������', '������');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('������', '����������� ��������� ��������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '������� ��������� ����������', '����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '������ ������ ��������', '��');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '������� ������ ����������', '������');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('������', '���������� �������� ��������', '��');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('���', '������ ���������� ������������', '��');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('�����', '��������� �������� ���������', '�����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('������', '���������� �������� ����������', '��');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('������', '��������� ������� ���������', '��������');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('�����', '�������� ������ ����������', '��');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('���', '����� ������ ��������', '�����');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '������ ������� ���������', '�������');

INSERT INTO TEACHER (TEACHER, TEACHER_NAME, PULPIT)
VALUES ('����', '������� ���� ����������', '��������');
--------------------------------------------------------------------------------

DROP TABLE SUBJECT;
CREATE TABLE SUBJECT (
    SUBJECT CHAR(20) NOT NULL,
    SUBJECT_NAME VARCHAR2(100) NOT NULL,
    PULPIT CHAR(20) NOT NULL,
    CONSTRAINT PK_SUBJECT PRIMARY KEY(SUBJECT),
    CONSTRAINT FK_SUBJECT_PULPIT FOREIGN KEY(PULPIT) REFERENCES PULPIT(PULPIT)
);

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('����', '������� ���������� ������ ������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '���� ������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '�������������� ����������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('����', '������ �������������� � ����������������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '������������� ������ � ������������ ��������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '��������������� ������� ����������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('����', '������������� ������ ��������� ����������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '�������������� �������������� ������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '������������ ��������� ', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('�����', '��������������� ������, �������� � �������� �����', '������');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '������������ �������������� �������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '����������� ���������������� ������������', '������');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '���������� ���������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '�������������� ����������������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('����', '���������� ������ ���', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '��������-��������������� ����������������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '��������� ������������������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '������������� ������', '����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('������OO', '�������� ������ ������ � ���� � ���. ������.', '��');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('�������', '������ ��������������� � ������������� ���������', '������');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '���������� ��������', '��');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '�����������', '�����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('��', '������������ �����', '��');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '���������� ��������� �������', '��������');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '������ ��������� ����', '��');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('����', '���������� � ������������ �������������', '�����');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('����', '���������� ���������� �������� ���������� ', '�������');

INSERT INTO SUBJECT (SUBJECT, SUBJECT_NAME, PULPIT)
VALUES ('���', '���������� ������������', '��������');
--------------------------------------------------------------------------------

DROP TABLE AUDITORIUM_TYPE;
CREATE TABLE AUDITORIUM_TYPE (
    AUDITORIUM_TYPE char(10),
    AUDITORIUM_TYPENAME varchar2(60) NOT NULL,
    CONSTRAINT PK_AUDITORIUM_TYPE PRIMARY KEY(AUDITORIUM_TYPE)
);

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('��', '����������');

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('��-�', '������������ �����');

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('��-�', '���������� � ���. ������������');

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('��-X', '���������� �����������');

INSERT INTO AUDITORIUM_TYPE (AUDITORIUM_TYPE, AUDITORIUM_TYPENAME)
VALUES ('��-��', '����. ������������ �����');
--------------------------------------------------------------------------------

DROP TABLE AUDITORIUM;
    CREATE TABLE AUDITORIUM (
    AUDITORIUM char(10),
    AUDITORIUM_NAME varchar2(200),
    AUDITORIUM_CAPACITY number(4) CHECK (AUDITORIUM_CAPACITY > 10),
    AUDITORIUM_TYPE char(10) NOT NULL,
    CONSTRAINT PK_AUDITORIUM PRIMARY KEY(AUDITORIUM),
    CONSTRAINT FK_AUDITORIUM_AUDITORIUM_TYPE FOREIGN KEY(AUDITORIUM_TYPE) REFERENCES AUDITORIUM_TYPE(AUDITORIUM_TYPE)
);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('206-1', '206-1', '��-�', 15);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('301-1', '301-1', '��-�', 15);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('236-1', '236-1', '��', 60);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('313-1', '313-1', '��', 60);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('324-1', '324-1', '��', 50);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('413-1', '413-1', '��-�', 15);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('423-1', '423-1', '��-�', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('408-2', '408-2', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('103-4', '103-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('105-4', '105-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('107-4', '107-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('110-4', '110-4', '��', 30);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('111-4', '111-4', '��', 30);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('114-4', '114-4', '��-�', 90 );

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('132-4', '132-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('02�-4', '02�-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('229-4', '229-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('304-4', '304-4', '��-�', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('314-4', '314-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('320-4', '320-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('429-4', '429-4', '��', 90);

INSERT INTO AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_TYPE, AUDITORIUM_CAPACITY)
VALUES ('?', '???', '��', 90);
-----------------------------------------------------------------------------------------------------------------------


--Task01
BEGIN 
    null;
END;

--Task02
BEGIN
    dbms_output.put_line('Hello World!');
END;

--In sqlplus 
--set serveroutput on;

--Task03
DECLARE
a number(1) := 1;
b number(1) := 0;
c number(1);
BEGIN
    dbms_output.put_line('a = ' || a);
    dbms_output.put_line('b = ' || b);
    c := a/b;
    dbms_output.put_line('c = ' || c);
    
    EXCEPTION
        WHEN OTHERS THEN 
            dbms_output.put_line('Error message: ' || sqlerrm);
            dbms_output.put_line('Error code: ' || sqlcode);
END;

DECLARE
a number(1) := 1;
b number(1) := 0;
c number(1);
BEGIN
    dbms_output.put_line('a = ' || a);
    dbms_output.put_line('b = ' || b);
    
    BEGIN
    dbms_output.put_line('INNER BLOCK BEGIN');
        c := a/b;
        EXCEPTION
            WHEN OTHERS THEN
                dbms_output.put_line('Error message: ' || sqlerrm);
                dbms_output.put_line('Error code: ' || sqlcode);
    END;
    dbms_output.put_line('c = ' || c);
END;

--Task05
SHOW PARAMETER PLSQL_WARNINGS;
--ALTER SYSTEM SQT PLSQL_WARNINGS = 'ENABLE:INFORMATIONAL';

--Task06
SELECT KEYWORD FROM v$reserved_words WHERE LENGTH = 1;

--Task07
SELECT KEYWORD FROM v$reserved_words WHERE LENGTH > 2;

--Task08
SELECT * FROM v$parameter WHERE NAME LIKE '%plsql%'
SHOW PARAMETER PLSQL;

--Task09
DECLARE
a number(1) := 9; --Task10
b number(1) := 2; --Task10
c number(5,2) := 228.13; --Task12
d number(5,-1) := 228.17; --Task13
e binary_float := 228.13371488100500; -- Task14
f binary_double := 228.1337148810050013371488100500; -- Task15
g number(6,2) := 22.8e2; --Task16
h boolean := true; --Task17
BEGIN
    dbms_output.put_line('a = ' || a);
    dbms_output.put_line('b = ' || b);
    dbms_output.put_line('c = ' || c);
    dbms_output.put_line('d = ' || d);
    dbms_output.put_line('e = ' || e);
    dbms_output.put_line('f = ' || f);
    dbms_output.put_line('g = ' || g);
    IF h
        THEN dbms_output.put_line('g = true');
        ELSE dbms_output.put_line('g = false');
    END IF;

    dbms_output.put_line('a + b = ' || (a + b)); --Task11
    dbms_output.put_line('a - b = ' || (a - b)); --Task11
    dbms_output.put_line('a * b = ' || (a * b)); --Task11
    dbms_output.put_line('a / b = ' || (a / b)); --Task11
END;

--Task18
DECLARE
a1 constant varchar2(14) := 'huba';
a2 constant varchar2(14 char) := 'buba';

b1 constant char(14) := 'chim';
b2 constant char(7 char) := 'chim';

c constant number(2) := 54;

BEGIN
    dbms_output.put_line('a1 = ' || a1 || ', length(a1) = ' || length(a1));
    dbms_output.put_line('a2 = ' || a2 || ', length(a2) = ' || length(a2));
    dbms_output.put_line('a1 + a2 = ' || a1 || '-' || a2);
    
    dbms_output.put_line('');

    dbms_output.put_line('b1 = ' || b1 || ', length(b1) = ' || length(b1));
    dbms_output.put_line('b2 = ' || b2 || ', length(b2) = ' || length(b2));
    dbms_output.put_line('b1 + b2 = ' || b1 || '-' || b2);
    
    c := 22;
END;


--Task19
DECLARE
teacher SYSTEM.TEACHER.TEACHER%TYPE;
pulpit SYSTEM.PULPIT.PULPIT%TYPE;

BEGIN
    teacher := 'Mamix';
    pulpit := 'IT';
    dbms_output.put_line(teacher);
    dbms_output.put_line(pulpit);
END;

--Task20
DECLARE
teacher SYSTEM.TEACHER%ROWTYPE;

BEGIN
    teacher.teacher := 'Alksv';
    teacher.teacher_name := 'Alekseev Maksim';
    teacher.pulpit := 'ISIT';
    
    dbms_output.put_line(teacher.teacher);
    dbms_output.put_line(teacher.teacher_name);
    dbms_output.put_line(teacher.pulpit);
END;


--Task21
DECLARE
a number(2) := 30;
b number(2) := 0;

BEGIN
    IF a + b > 70 THEN
        dbms_output.put_line('a + b > 70');

    ELSIF a + b < 40 THEN
        dbms_output.put_line('a + b < 40');

    ELSE
        dbms_output.put_line('a + b < 70 AND a + b > 40 ');
END IF;
END;

--Task23
DECLARE
a number(2) := 10;
BEGIN
    CASE
        WHEN a > 10 THEN
            dbms_output.put_line('x > 10');
        
        WHEN a BETWEEN 5 AND 10 THEN
            dbms_output.put_line('a >= 5 AND a <= 10');
        
        ELSE
            dbms_output.put_line('a < 5');
  END CASE;
END; 

--Last tasks
DECLARE 
    i number(2) := 0;
    k number(2) := 0;
BEGIN
    --Task24
    LOOP
        dbms_output.put(i || ' ');
        i := i + 1;
    EXIT WHEN i > 10;
    END LOOP;
    
    dbms_output.put(' ');
    
    --Task25
    FOR j in 1..10 LOOP
        dbms_output.put(j || ' ');
    END LOOP;    
END;
 
DECLARE i int := 10;
BEGIN
    WHILE i > 0 LOOP
        i := i - 1;
        dbms_output.put(i || ' ');
    END LOOP;
END;
 