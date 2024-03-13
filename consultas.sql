--1. Listar los nombres y apellidos de las personas con edad igual a 20 años 

SELECT nombres, apellidos, edad FROM users WHERE edad = 20;

--2. Listado de todas las mujeres en la Base de Datos que tengan entre 20 y 30 años de edad
--SELECT nombres, genero, edad FROM users WHERE genero = 'M' AND edad >= 20 AND edad <=30;

SELECT * FROM users WHERE genero = 'M' AND >= 20 AND EDAD <=30;

--3. ¿Quién es la persona con menos edad de la Base de Datos?

SELECT nombres, MIN(edad) FROM users;
SELECT * FROM users ORDER BY edad ASC LIMIT 1;

--4. ¿Cuántos usuarios hay registrados en la Base de Datos?

SELECT COUNT(id) AS Total FROM users;


--5. Traer los 5 primeros usuarios de la base de datos 

-- EL PARÁMETRO DISTINCT se usa para Este parámetro nos permite desplegar todos los valores únicos que están en una tabla, ya que una tabla puede contener diversos datos repetidos en sus columnas y para generar reportes necesitamos solamente los valores que no estén repetidos.
SELECT DISTINCT * FROM users ORDER BY id ASC LIMIT 5;
--SELECT TOP 5 * FROM users ORDER BY id;

--6. Traer los 10 últimos usuarios de la base de datos

SELECT DISTINCT * FROM users ORDER BY id DESC LIMIT 10;

--7. Listar usuarios que su correo finalice en .net 

SELECT * FROM users WHERE correo LIKE '%.net';

--8. Listar usuarios que NO vivan en Colombia

SELECT * FROM users where pais <> 'colombia';

--9. Listar usuarios que NO vivan en Ecuador y Panamá

SELECT * FROM users where pais <> 'ecuador' AND pais <> 'panama';

--10. ¿Cuántos (en números) usuarios son de Colombia y les gusta en rock?

SELECT COUNT(id) AS Total FROM users WHERE pais = 'colombia' AND musica = "rock";

--11. Actualizar el género musical de todos los usuarios de la Base de Datos de "metal" a "carranga"

UPDATE users SET musica = 'carranga' WHERE musica = 'metal';

--12. Listado de hombres que les guste la "carranga" sean de Colombia, y tengan entre 10 y 20 años de edad

SELECT * FROM users WHERE genero = 'H' AND musica = 'carranga' AND edad >= 10 AND edad <= 20;

--13. Actualizar todos los usuarios que tengan 99 años, su nuevo género musical favorito será la "carranga"

UPDATE users SET musica = 'NULL' WHERE musica = 'carranga' AND edad = 99;

--14. Listar todos los usuarios que su nombre inicie con "a","A"

SELECT * FROM users WHERE nombres LIKE 'a%' OR nombres LIKE 'A%';

--15. Listar todos los usuarios que su apellido finalice en "z", "Z"

SELECT * FROM users WHERE apellidos LIKE '%z' OR apellidos LIKE '%Z';

--16. Actualizar los usuarios que tengan 50 años de edad, su nuevo género musical será NULL

UPDATE users SET musica = 'NULL' WHERE edad = 50;

--17. Listar todos los usuarios que su género musical sea igual a NULL

SELECT * FROM users WHERE musica = "NULL";

--18. ¿Cuál es el resultado de la suma de todas las edades de la Base de Datos?

SELECT SUM(edad) FROM users;

--19. ¿Cuántos usuarios tenemos registrados de "ecuador"?

SELECT COUNT(id) AS Total FROM users WHERE pais = 'ecuador';

--20. ¿Cuántos usuarios son de "colombia" y les gusta el vallenato?

SELECT COUNT(id) AS Total FROM users WHERE pais = 'colombia' AND musica = "vallenato";
