-- 관리자 > READBOOKS 생성 및 용량, 권한 부여

CREATE TABLESPACE readbooks_DB
DATAFILE 'C:/bizwork/oracle/data/readbook.dbf'
SIZE 100M AUTOEXTEND ON NEXT 100K;

CREATE USER readbooks IDENTIFIED BY readbooks;
GRANT DBA TO readbooks;
