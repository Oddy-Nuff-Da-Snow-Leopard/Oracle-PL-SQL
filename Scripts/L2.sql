--Task01
CREATE TABLESPACE TS_AME
    DATAFILE 'D:\Tablespaces\TS_AME.dbf'
    SIZE 7 m
    AUTOEXTEND ON NEXT 5 m
    MAXSIZE 20 m;
    
    
--Task02
CREATE TEMPORARY TABLESPACE TS_AME_TEMP
    TEMPFILE 'D:\Tablespaces\TS_AME_TEMP.dbf'
    SIZE 5 m
    AUTOEXTEND ON NEXT 3 m
    MAXSIZE 30 m;

    
    
--Task03
SELECT TABLESPACE_NAME, STATUS, CONTENTS LOGGING FROM SYS.DBA_TABLESPACES;

SELECT FILE_NAME, TABLESPACE_NAME, STATUS, MAXBYTES, USER_BYTES FROM DBA_DATA_FILES;


--Task04
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

DROP ROLE RL_AMECORE;
CREATE ROLE RL_AMECORE;
GRANT CREATE SESSION,
        CREATE TABLE,
        CREATE VIEW,
        CREATE PROCEDURE TO RL_AMECORE;
        
        
--Task05
SELECT * FROM dba_roles WHERE ROLE LIKE 'RL%';

SELECT * FROM DBA_SYS_PRIVS WHERE GRANTEE='RL_AMECORE';


--Task06
CREATE PROFILE PF_AMECORE LIMIT
    PASSWORD_LIFE_TIME 180 -- ���������� ���� ����� ������
    SESSIONS_PER_USER 3 -- ���������� ������ ��� ������������
    FAILED_LOGIN_ATTEMPTS 7 -- ���������� ������� �����
    PASSWORD_LOCK_TIME 1 -- ���������� ���� ������������ ����� ������
    PASSWORD_REUSE_TIME 10 -- ����� ������� ���� ����� ��������� ������
    PASSWORD_GRACE_TIME DEFAULT -- ���������� ���� �������������� � ����� ������
    CONNECT_TIME 180 -- ����� ����������, �����
    IDLE_TIME 30; -- ���������� ����� �������
    
    
--Task07
SELECT * FROM DBA_PROFILES;

SELECT * FROM DBA_PROFILES WHERE PROFILE='PF_AMECORE';

SELECT * FROM DBA_PROFILES WHERE PROFILE='DEFAULT';


--Task08
DROP USER AMECORE cascade;
alter session set "_oracle_script"=true;
CREATE USER AMECORE IDENTIFIED BY 100500
    DEFAULT TABLESPACE TS_AME QUOTA UNLIMITED ON TS_AME
    TEMPORARY TABLESPACE TS_AME_TEMP
    PROFILE PF_AMECORE
    ACCOUNT UNLOCK
    PASSWORD EXPIRE;
    
GRANT RL_AMECORE TO AMECORE;
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
DROP USER AMECORE;



    

