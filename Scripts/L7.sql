--Task01
SELECT paddr, name, description, type, priority FROM v$bgprocess ORDER BY name;

--Task02
SELECT name, description FROM v$bgprocess WHERE paddr!=hextoraw('00') ORDER BY name;

--Task03
SELECT COUNT(*) AS WORKING_NOW_DBW_AMOUNT FROM v$bgprocess WHERE name LIKE 'DBW%'
                                                            AND paddr!=hextoraw('00') ORDER BY name;

--Task04
SELECT * FROM v$session WHERE username IS NOT NULL;

--Task05
SELECT username, sid, serial#, server, paddr, status FROM v$session WHERE username IS NOT NULL;

--Task06
SELECT paddr, username, service_name, server, osuser, machine, program FROM v$session WHERE username IS NOT NULL;

--Task07
SHOW PARAMETER dispatcher;

--Task08
SELECT paddr, username, service_name, server, osuser, machine, program from v$session where username is not null;
--Task09
--Task10
--Task11
SELECT *from v$process where PNAME like 'LREG';
