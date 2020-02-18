--Task01
SELECT NAME, OPEN_MODE FROM v$pdbs;


--Task02
SELECT * FROM v$instance;


--Task03
select comp_name,version, status from dba_registry;


--Task04
--Database Configuration Assistant


--Task05
SELECT NAME, OPEN_MODE FROM v$pdbs;


--Task06
CONNECT system/orcl@//localhost:1521/AME_PDB;

--Tablespaces
CREATE TABLESPACE TS_AME_PDB
    DATAFILE 'D:\Tablespaces\TS_AME_PDB.dbf'
    SIZE 6 m
    AUTOEXTEND ON NEXT 5 m
    MAXSIZE 30 m;
    
CREATE TEMPORARY TABLESPACE TEMP_TS_AME_PDB
    TEMPFILE 'D:\Tablespaces\TEMP_TS_AME_PDB.dbf'
    SIZE 5 m
    AUTOEXTEND ON NEXT 3 m
    MAXSIZE 20 m;
    

--Role
CREATE ROLE RL_AMEPDBCORE;
GRANT CREATE SESSION,
        CREATE TABLE,
        CREATE VIEW,
        CREATE PROCEDURE TO RL_AMEPDBCORE;



--Security profile
CREATE PROFILE PF_AMEPDBCORE LIMIT
    PASSWORD_LIFE_TIME 180 -- ���������� ���� ����� ������
    SESSIONS_PER_USER 3 -- ���������� ������ ��� ������������
    FAILED_LOGIN_ATTEMPTS 100 -- ���������� ������� �����
    PASSWORD_LOCK_TIME 1 -- ���������� ���� ������������ ����� ������
    PASSWORD_REUSE_TIME 10 -- ����� ������� ���� ����� ��������� ������
    PASSWORD_GRACE_TIME DEFAULT -- ���������� ���� �������������� � ����� ������
    CONNECT_TIME 360 -- ����� ����������, �����
    IDLE_TIME 180; -- ���������� ����� �������

--User
CREATE USER U1_AME_PDB IDENTIFIED BY 100500
    DEFAULT TABLESPACE TS_AME_PDB QUOTA UNLIMITED ON TS_AME_PDB
    TEMPORARY TABLESPACE TEMP_TS_AME_PDB
    PROFILE PF_AMEPDBCORE
    ACCOUNT UNLOCK
    PASSWORD EXPIRE;


GRANT RL_AMEPDBCORE TO U1_AME_PDB;

--Task07
CREATE TABLE AME_TABLE (
    id int PRIMARY KEY,
    name varchar(20) NOT NULL
);

INSERT INTO AME_TABLE VALUES(1, 'Maksim');
INSERT INTO AME_TABLE VALUES(2, 'Jasper');
INSERT INTO AME_TABLE VALUES(3, 'Horrus');

SELECT * FROM AME_TABLE;

SELECT * FROM DICTIONARY;

--Task08
CONNECT system/orcl@//localhost:1521/AME_PDB as sysdba;
SELECT TABLESPACE_NAME, STATUS, CONTENTS LOGGING FROM SYS.DBA_TABLESPACES;
SELECT FILE_NAME, TABLESPACE_NAME, STATUS, MAXBYTES, USER_BYTES FROM DBA_DATA_FILES;
SELECT * FROM DBA_ROLES;
SELECT * FROM DBA_SYS_PRIVS;
SELECT * FROM DBA_PROFILES;
SELECT * FROM DBA_USERS;






