---------------------------------
-- Guia Completa de SQL - Cursos
---------------------------------
-- Esta guia no incluye datos para iniciar, solo le meti conceptos:

-- Instalación y Configuración EN TAL CASO DE QUE QUIERAS USAR LA CONSOLA Y NO UNA INTERFAZ.
-- 1. Para iniciar el servicio de MySQL desde la línea de comandos:
-- Esto es un comando en bash
```Bash
   mysql -u root -h localhost (o usa la dirección 127.0.0.1) -p [contraseña]
```

-- Exploración Inicial de Bases de Datos
-- 1. Listar las bases de datos disponibles:
   SHOW DATABASES;
-- 2. Seleccionar una base de datos específica:
   USE nombre_base_datos;

-- Creación de Bases de Datos y Tablas
-- 1. Crear una nueva base de datos:
   CREATE DATABASE nombre_base_datos;
-- 2. Crear una nueva tabla:
   CREATE TABLE nombre_tabla (
       columna1 tipo_dato restricciones,
       columna2 tipo_dato restricciones
   );

-- Tipos de Datos en SQL
-- 1. Tipos numéricos:
--    INT, BIGINT, SMALLINT, TINYINT, DECIMAL, FLOAT, DOUBLE
-- 2. Tipos de texto:
--    CHAR, VARCHAR, TEXT
-- 3. Tipos de fecha y hora:
--    DATE, DATETIME, TIMESTAMP, TIME, YEAR
-- 4. Tipos binarios:
--    BLOB, BINARY, VARBINARY

-- Inserción de Datos
-- 1. Insertar una fila en una tabla:
   INSERT INTO nombre_tabla (columna1, columna2) VALUES (valor1, valor2);
-- 2. Insertar múltiples filas:
   INSERT INTO nombre_tabla (columna1, columna2) VALUES 
   (valor1a, valor2a),
   (valor1b, valor2b);

-- Consultas Básicas
-- 1. Seleccionar todas las filas de una tabla:
   SELECT * FROM nombre_tabla;
-- 2. Seleccionar columnas específicas:
   SELECT columna1, columna2 FROM nombre_tabla;

-- Filtrado de Datos
-- 1. Usar condiciones:
   SELECT * FROM nombre_tabla WHERE columna1 = valor;
-- 2. Operadores comunes:
--    =, <>, >, >=, <, <=, LIKE, IN, BETWEEN

-- Ordenamiento de Resultados
-- 1. Ordenar ascendentemente:
   SELECT * FROM nombre_tabla ORDER BY columna1 ASC;
-- 2. Ordenar descendentemente:
   SELECT * FROM nombre_tabla ORDER BY columna1 DESC;

-- Joins en SQL
-- 1. INNER JOIN:
--    Devuelve filas que tienen coincidencias en ambas tablas.
   SELECT * FROM tabla1 INNER JOIN tabla2 ON tabla1.columna = tabla2.columna;
-- 2. LEFT JOIN:
--    Devuelve todas las filas de la tabla izquierda y las coincidencias de la derecha.
   SELECT * FROM tabla1 LEFT JOIN tabla2 ON tabla1.columna = tabla2.columna;
-- 3. RIGHT JOIN:
--    Devuelve todas las filas de la tabla derecha y las coincidencias de la izquierda.
   SELECT * FROM tabla1 RIGHT JOIN tabla2 ON tabla1.columna = tabla2.columna;
-- 4. FULL OUTER JOIN:
--    Devuelve filas cuando hay coincidencias en cualquiera de las tablas.
   SELECT * FROM tabla1 FULL OUTER JOIN tabla2 ON tabla1.columna = tabla2.columna;
-- 5. CROSS JOIN:
   Devuelve el producto cartesiano de las dos tablas.
   SELECT * FROM tabla1 CROSS JOIN tabla2;

-- Agregación y Agrupamiento
-- 1. Funciones de agregación:
--      * COUNT, SUM, AVG, MAX, MIN
-- 2. Agrupación de datos:
   SELECT columna, COUNT(*) FROM nombre_tabla GROUP BY columna;
-- 3. Filtrar grupos:
   SELECT columna, COUNT(*) FROM nombre_tabla GROUP BY columna HAVING COUNT(*) > 1;

-- Vistas en SQL
-- 1. Crear una vista:
   CREATE VIEW nombre_vista AS SELECT columnas FROM tabla WHERE condicion;
-- 2. Consultar una vista:
   SELECT * FROM nombre_vista;
-- 3. Eliminar una vista:
   DROP VIEW nombre_vista;

-- Vistas Temporales
-- 1. Crear una tabla temporal:
   CREATE TEMPORARY TABLE nombre_temp AS SELECT * FROM tabla;
-- 2. Las tablas temporales solo existen durante la sesión actual.

-- Triggers
-- 1. Crear un trigger:
   CREATE TRIGGER nombre_trigger BEFORE/AFTER INSERT/UPDATE/DELETE ON tabla
   FOR EACH ROW BEGIN
       -- Acciones a realizar
   END;
-- 2. Eliminar un trigger:
   DROP TRIGGER nombre_trigger;

-- Procedimientos Almacenados
-- 1. Crear un procedimiento:
   CREATE PROCEDURE nombre_procedimiento (parámetros)
   BEGIN
       -- Acciones a realizar
   END;
-- 2. Ejecutar un procedimiento:

   CALL nombre_procedimiento(parámetros);

-- 3. Eliminar un procedimiento:

   DROP PROCEDURE nombre_procedimiento;

-- Índices:
-- 1. Crear un índice:
   CREATE INDEX nombre_indice ON tabla (columna);
-- 2. Crear un índice único:
   CREATE UNIQUE INDEX nombre_indice ON tabla (columna);
-- 3. Eliminar un índice:
   DROP INDEX nombre_indice ON tabla;

-- Modificación de Datos
-- 1. Actualizar datos existentes:
   UPDATE nombre_tabla SET columna1 = nuevo_valor WHERE condicion;
-- 2. Eliminar filas:
   DELETE FROM nombre_tabla WHERE condicion;

-- Manipulación Avanzada
-- 1. Unir tablas (JOIN):
   SELECT * FROM tabla1 INNER JOIN tabla2 ON tabla1.columna = tabla2.columna;
-- 2. Subconsultas:
   SELECT * FROM tabla1 WHERE columna IN (SELECT columna FROM tabla2);

-- Seguridad y Permisos
-- 1. Crear un usuario:
   CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'contraseña';
-- 2. Otorgar permisos:
   GRANT SELECT, INSERT ON base_datos.* TO 'usuario'@'localhost';
-- 3. Revocar permisos:
   REVOKE SELECT, INSERT ON base_datos.* FROM 'usuario'@'localhost';

-- Funcionamiento del Motor de SQL
-- 1. Los motores de bases de datos como InnoDB y MyISAM tienen diferentes enfoques.
--    * InnoDB soporta transacciones y claves foráneas.
--    * MyISAM es más rápido en lecturas pero no soporta transacciones.
-- 2. Elección del motor:
   CREATE TABLE nombre_tabla (
       columna1 tipo_dato
   ) ENGINE=InnoDB;

-- Buenas Prácticas!
-- 1. Usar nombres significativos para tablas y columnas.
-- 2. Documentar el esquema de la base de datos.
-- 3. Realizar respaldos periódicos.

-- Espero que aprendas mucho. Go ahead 💚