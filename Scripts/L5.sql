--Task01
SELECT TABLESPACE_NAME, STATUS, CONTENTS LOGGING FROM SYS.DBA_TABLESPACES;

--Task02
CREATE TABLESPACE AME_QDATA
    DATAFILE 'D:\Tablespaces\AME_QDATA.dbf'
    SIZE 10 m
    AUTOEXTEND ON NEXT 5 m
    MAXSIZE 20 m
    OFFLINE;

ALTER TABLESPACE AME_QDATA ONLINE;
ALTER USER AMECORE QUOTA 2m ON AME_QDATA;

CREATE TABLE AME_T1(
    id int PRIMARY KEY,
    name varchar(20) NOT NULL
) TABLESPACE AME_QDATA;

SELECT table_name, tablespace_name from USER_TABLES;

INSERT INTO AME_T1 VALUES(1, 'Harry');
INSERT INTO AME_T1 VALUES(2, 'John');
INSERT INTO AME_T1 VALUES(3, 'Sub-zero');

--Task03
  

SELECT CASE
        WHEN EXISTS (SELECT * FROM DBA_SEGMENTS WHERE tablespace_name='AME_QDATA') THEN 'YES'
        ELSE 'NO'
        END AS "Are there any segments in AME_QDATA tablespace?"
FROM dual;

--Task04
DROP TABLE AME_T1;
SELECT * FROM DBA_SEGMENTS WHERE tablespace_name='AME_QDATA';
SELECT * FROM USER_RECYCLEBIN;

SELECT DISTINCT segment_type FROM DBA_SEGMENTS;

--Task05
FLASHBACK TABLE AME_T1 TO BEFORE DROP;
SELECT * FROM DBA_SEGMENTS WHERE tablespace_name='AME_QDATA';
SELECT * FROM USER_RECYCLEBIN;

--Task06
DECLARE i int := 10;
BEGIN
    WHILE i <= 10000 LOOP
        INSERT INTO AME_T1 VALUES (i, 'Maksim');
        i := i + 1;
    END LOOP;
END;

SELECT * FROM AME_T1;

--Task07
SELECT * FROM DBA_SEGMENTS WHERE tablespace_name='AME_QDATA';
SELECT segment_name, extents FROM DBA_SEGMENTS WHERE tablespace_name='AME_QDATA';
SELECT * FROM USER_EXTENTS WHERE tablespace_name='AME_QDATA';

--Task08
DROP TABLESPACE AME_QDATA INCLUDING CONTENTS AND DATAFILES; 

SHOW PARAMETER BLOCK;
--Task09
SELECT * FROM v$log;

--Task10
SELECT * FROM v$logfile;

--Task11
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 3
    
SELECT CURRENT_TIMESTAMP FROM dual; --12:37:23
ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 1

ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 2

ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 3
    
--Task12
ALTER DATABASE ADD LOGFILE GROUP 4 'D:\ORACLEDATABASE19C\ORACLEBASE\ORADATA\ORCL\REDO04.LOG'
                            SIZE 50m BLOCKSIZE 512;
                            
ALTER DATABASE ADD LOGFILE MEMBER 'D:\ORACLEDATABASE19C\ORACLEBASE\ORADATA\ORCL\REDO041.LOG'
                            TO GROUP 4;
                            
ALTER DATABASE ADD LOGFILE MEMBER 'D:\ORACLEDATABASE19C\ORACLEBASE\ORADATA\ORCL\REDO042.LOG'
                            TO GROUP 4;
                            
SELECT * FROM v$logfile;

SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 3
    
ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 4
    
ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 1
    
ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 2
    
ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 3
    
--Task13
ALTER DATABASE DROP LOGFILE MEMBER 'D:\ORACLEDATABASE19C\ORACLEBASE\ORADATA\ORCL\REDO04.LOG';
ALTER DATABASE DROP LOGFILE MEMBER 'D:\ORACLEDATABASE19C\ORACLEBASE\ORADATA\ORCL\REDO041.LOG';

SELECT * FROM v$logfile;

ALTER DATABASE DROP LOGFILE GROUP 4;
ALTER DATABASE DROP LOGFILE MEMBER 'D:\ORACLEDATABASE19C\ORACLEBASE\ORADATA\ORCL\REDO042.LOG';
SELECT * FROM v$logfile;

--Task14
SELECT * FROM v$log;

SELECT name, log_mode FROM v$database;
SELECT INSTANCE_NAME, ARCHIVER, ACTIVE_STATE FROM v$instance;

--Task15

--Task16
shutdown immediate;
startup mount;
ALTER DATABASE ARCHIVELOG;
ALTER DATABASE OPEN;

SELECT * FROM v$log;

SELECT name, log_mode FROM v$database;
SELECT INSTANCE_NAME, ARCHIVER, ACTIVE_STATE FROM v$instance;

--Task17
ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 1
SELECT * FROM v$ARCHIVED_LOG;

ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 2
SELECT * FROM v$ARCHIVED_LOG;

ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, blocksize,
    members, archived, status, first_change#, first_time
    FROM v$log; -- 3
SELECT * FROM v$ARCHIVED_LOG;

--Task18
startup mount;
alter database noarchivelog;
shutdown immediate;
startup mount;

SELECT name, log_mode FROM v$database;

--Task19
SHOW PARAMETER CONTROL;
SELECT name FROM v$controlfile;



--Task20
SELECT name FROM v$controlfile;

--Task21

--Task22
AME_PFILE.ORA

--Task23
SELECT * FROM v$PWFILE_USERS;