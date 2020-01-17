-- 관리자 화면
DROP USER iouser CASCADE;

CREATE TABLESPACE iouserTS
DATAFILE 'C:/bizwork/oracle/data/iousers.dbf'
SIZE 100M AUTOEXTEND ON NEXT 100K;

CREATE USER iouser IDENTIFIED BY iouser;

GRANT DBA TO iouser;