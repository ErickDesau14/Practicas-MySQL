-- ACCESO AL SERVIDOR --

CREATE USER 'admingeneric02'@'%' IDENTIFIED BY 'admingeneric02'; -- CREA UN USUARIO

GRANT ALL PRIVILEGES ON *.* TO 'admingeneric02'@'%' WITH GRANT OPTION; -- ESTABLECE PERMISOS

-- LIMITANDO ACCESO A SCHEMAS

CREATE USER 'user04'@'%' IDENTIFIED BY 'user04'; -- CREA UN USUARIO

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES,
EXECUTE ON jugos_ventas.* TO 'user04'@'%'; -- ESTABLECE PERMISOS

CREATE USER 'user05'@'%' IDENTIFIED BY 'user05'; -- CREA UN USUARIO

GRANT SELECT, INSERT, UPDATE, DELETE ON jugos_ventas.facturas TO 'user05'@'%'; -- ESTABLECE PERMISOS

GRANT SELECT, INSERT, UPDATE, DELETE ON jugos_ventas.tabla_de_vendedores TO 'user05'@'%'; -- ESTABLECE PERMISOS