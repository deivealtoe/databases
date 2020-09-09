-- CRIANDO USUÁRIO
CREATE TABLESPACE deive_tablespace
DATAFILE 'deive_tablespace.dbf' SIZE 100M REUSE
AUTOEXTEND ON NEXT 10M MAXSIZE 200M;


-- CRIANDO TABLESPACE
CREATE USER deive_user IDENTIFIED BY "oracle"
DEFAULT TABLESPACE deive_tablespace
TEMPORARY TABLESPACE temp;


-- DELETANDO TABLESPACE
DROP TABLESPACE deive_tablespace INCLUDING CONTENTS AND DATAFILES;


-- DELETANDO USUÀRIO
DROP USER deive_user CASCADE;


-- DANDO PERMISSÕES
GRANT
CREATE CLUSTER,
CREATE DATABASE LINK,
CREATE PROCEDURE,
CREATE SESSION,
CREATE SEQUENCE,
CREATE SYNONYM,
CREATE TABLE,
CREATE ANY TYPE,
CREATE TRIGGER,
CREATE VIEW
TO deive_user;
-- MAIS PERMISSÕES
GRANT ALTER SESSION TO deive_user;
GRANT UNLIMITED TABLESPACE TO deive_user;


COMMIT;
ROLLBACK;