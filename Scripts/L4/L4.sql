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
6. ������������ � XXX_PDB c ������� SQL Developer
�������� ���������������� ������� (��������� ������������, ����,
������� ������������, ������������ � ������ U1_XXX_PDB).

CONNECT AME_PDB_ADMIN/100500@//localhost:1521/AME_PDB as sysdba;

DROP PLUGGABLE DATABASE AME_PDB
  INCLUDING DATAFILES;


