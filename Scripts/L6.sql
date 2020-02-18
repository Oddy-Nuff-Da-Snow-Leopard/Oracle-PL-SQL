--Task01
SELECT SUM(VALUE) FROM v$SGA;

--Task02
SELECT * FROM v$SGA;

--Task03
SELECT component, granule_size FROM v$SGA_dynamic_components;

--Task04
SELECT current_size FROM v$SGA_dynamic_free_memory;

--Task05
SELECT component, granule_size FROM v$SGA_dynamic_components WHERE component LIKE '%cache%';

--Task06
CREATE TABLE XXX (id int) STORAGE (BUFFER_POOL KEEP) TABLESPACE USERS;

SELECT segment_name, segment_type, buffer_pool FROM DBA_SEGMENTS WHERE segment_name='XXX';

--Task07
CREATE TABLE YYY (id int) CACHE TABLESPACE USERS;
SELECT segment_name, segment_type, buffer_pool FROM DBA_SEGMENTS WHERE segment_name='YYY';

--Task08
SHOW PARAMETER log_buffer;

--Task09
SELECT pool, name, bytes FROM v$SGAstat WHERE pool='shared pool' ORDER BY (BYTES) DESC FETCH NEXT 10 ROWS ONLY;

--Task10
SELECT pool, name, bytes FROM v$SGAstat WHERE pool='large pool' AND name='free memory';

--Task11
SELECT * FROM v$session;

--Task12
SELECT username, service_name, server FROM v$session WHERE username IS NOT NULL;

--Task13
SHOW PARAMETER KEEP;

select * from v$buffer_pool_statistics;
