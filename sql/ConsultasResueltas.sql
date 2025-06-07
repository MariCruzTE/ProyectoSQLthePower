
-- 	1-Crea el esquema de la base de datos (Añadido png en carpeta "Imgs")
___________________________________________________________________________

/* 	2. Muestra los nombres de todas las peliculas con una clasificación 
	por edades de 'R'*/

SELECT 			
		f.title AS "titulo",		
		f.rating AS "clasificacion"
FROM film AS f 			
WHERE f.rating = 'R';	
___________________________________________________________________________

/* 	3. Encuentra el nombre de los actores que contengan un "actor_id"
   	entre 30 y 40   */

SELECT
		a.actor_id AS "id_actor",
		CONCAT(a.first_name,' ', a.last_name ) AS "nombre_actor"
FROM actor AS a 
WHERE a.actor_id BETWEEN 30 AND 40;
___________________________________________________________________________

--	4. Obten las peliculas cuyo idioma coincide con el idioma original 

SELECT 
		f.title AS "titulo",
		f.language_id AS "id_lenguaje",
		f.original_language_id AS "id_lenguaje_original"
FROM film AS f 
WHERE f.language_id = f.original_language_id;	
--No se obtienen resultados porque los datos en la columna original_language_id son null
___________________________________________________________________________

--	5. Ordena las peliculas por duracion de forma ascendente 

SELECT
		f.title AS "tìtulo",
		f.length AS "duración"
FROM film AS f 
ORDER BY "duración" ;
___________________________________________________________________________

/* 	6. Encuentra el nombre y apellido de los actores 
 	que tengan 'Allen' en su apellido  */

SELECT 
	DISTINCT (CONCAT(a.first_name, ' ', a.last_name)) AS "nombre_completo"
FROM actor AS a 
WHERE a.last_name ILIKE  'Allen';
___________________________________________________________________________

/*	7. Encuentra la cantidad total de pelìculas en cada clasificaciòn de la tabla "film"
 	y muestra la clasificacion junto con el recuento  */

SELECT 
		f.rating AS "clasificación",
		COUNT(f.film_id ) AS "total_peliculas"		
FROM film AS f 
GROUP BY rating 
ORDER BY total_peliculas ;
___________________________________________________________________________

/*	8. Encuentra el título de todas las pelìculas que son 'PG-13'
 	o tienen una duración mayor a 3 horas en la tabla "film"  */

SELECT 
		f.title AS "película",
		f.rating AS "clasificación",
		f.length AS "duración"
FROM film AS f 
WHERE length > 180
   OR rating = 'PG-13';
___________________________________________________________________________
--	9. Encuentra la variabilidad de lo que costaria reemplazar las pelìculas 

SELECT 
    ROUND(STDDEV(replacement_cost), 2) AS "Desviación_Estándar"
FROM film;
___________________________________________________________________________
--	10. Encuentra la mayor y menor duración de una pelicula en la BBDD

SELECT
		MIN(f.length) AS "duración_mínima",
		MAX(f.length) AS "duración_máxima"
FROM film AS f 
___________________________________________________________________________
--	11. Encuentra lo que costó el antepenúltimo alquiler ordenado por dia

SELECT 
		r.rental_id AS "id_alquiler",
		r.rental_date AS "fecha_alquiler",
		p.amount AS "precio_alquiler"
FROM rental AS r 
	LEFT JOIN payment AS p 
		ON r.rental_id = p.rental_id 
ORDER BY r.rental_date DESC
OFFSET 2
LIMIT 1;
___________________________________________________________________________
--	12. Encuentra el tìtulo de peliculas que no sean NC-17 ni G en clasificación

SELECT
		f.title AS "título",
		f.rating AS "clasificación"
FROM film AS f 
WHERE f.rating NOT IN ('NC-17','G');
___________________________________________________________________________

/*	13. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film
		y muestra la clasificación junto con el promedio de duración  */

SELECT
		f.rating AS "clasificación",
		ROUND(AVG(f.length),2) AS "promedio-duración"
FROM film AS f 
GROUP BY f.rating
ORDER BY "promedio-duración" DESC; 
___________________________________________________________________________

/*	14. Encuentra el título de todas las películas que tengan una duración
		mayor a 180 minutos  */

SELECT 
		f.title AS "título",
		f.length AS "duración"
FROM film AS f 
WHERE f.length > 180;
___________________________________________________________________________

--	15. ¿Cuánto dinero ha generado en total la empresa?

SELECT SUM(p.amount) AS "total_facturado"
FROM payment AS p ;
___________________________________________________________________________

--	16. Muestra los 10 clientes con mayor valor de id.

SELECT c.customer_id AS "cliente"
FROM customer AS c 
ORDER BY cliente DESC 
LIMIT 10;
___________________________________________________________________________

/* 	17. Encuentra el nombre y apellido de los actores que aparecen
		en la película con título 'Egg Igby'	*/

SELECT
		concat(a.first_name, ' ', a.last_name) AS "nombre_actor"
FROM actor AS a  
	LEFT JOIN film_actor AS fa 
	ON a.actor_id = fa.actor_id
	LEFT JOIN film AS f 
	ON fa.film_id = f.film_id
WHERE f.title ILIKE 'Egg Igby';
___________________________________________________________________________

--	18. Selecciona todos los nombres de las películas únicos

SELECT DISTINCT f.title AS "título"
FROM film AS f ;
___________________________________________________________________________

/*	19. Encuentra el título de las películas que son comedias
		y tienen una duracion mayora 180 minutos en la tabla "film"	*/

SELECT 
		f.title AS "título",
		c.name AS "categoría",
		f.length  AS "duración"
FROM category AS c  
	LEFT JOIN film_category AS fc 
	ON c.category_id = fc.category_id
	LEFT JOIN film AS f 
	ON fc.film_id = f.film_id
WHERE f.length > 180
AND c.name = 'Comedy';
___________________________________________________________________________

/*	20. Encuentra las categorías de películas que tienen un promedio de duración
		superior a 110 min, muestra nombre categoría junto con el promedio de duración	*/

SELECT 
		c.name AS "categoría",
		ROUND(AVG(f.length ),2) AS "promedio_duración"
FROM category AS c  
	LEFT JOIN film_category AS fc 
	ON c.category_id = fc.category_id
	LEFT JOIN film AS f 
	ON fc.film_id = f.film_id
GROUP BY c."name"
HAVING  ROUND(AVG(f.length ),2) > 110
ORDER BY "promedio_duración";
___________________________________________________________________________

--	21. ¿Cuál es el promedio de duración del alquiler de las películas?

SELECT ROUND(AVG(f.rental_duration),2) AS "duracion_alquiler_promedio"
FROM film AS f ;
___________________________________________________________________________

--	22. Crea una columna con el nombre y apellidos de todos los actores y actrices

SELECT CONCAT(a.first_name, ' ', a.last_name ) AS "nombre_completo_actor"
FROM actor AS a 
ORDER BY nombre_completo_actor ;
___________________________________________________________________________

-- 23. Números de alquiler por día ordenados por cantidad de alquiler DESC

SELECT 
		COUNT(r.rental_id) AS "alquileres",
		r.rental_date::date AS "fecha"
FROM rental AS r 
GROUP BY r.rental_date::date
ORDER BY alquileres DESC ;
___________________________________________________________________________

--	24. Encuentra las películas con una duracion superior al promedio

SELECT 
		f.title AS "película" ,
		f.length AS "duraciòn"
FROM film AS f 
WHERE  f.length > (
	SELECT AVG(f2.length)
	FROM film AS f2
);
___________________________________________________________________________

--	25. Averigua el numero de alquileres registrados por mes

SELECT 
		EXTRACT(MONTH FROM r.rental_date) AS "mes",
		COUNT(r.rental_id) AS "número de alquileres"
FROM rental AS r 
GROUP BY EXTRACT(MONTH FROM rental_date)
ORDER BY mes;
___________________________________________________________________________

--	26. Encuentra el promedio, la desviacion estandar y varianza del total pagado

SELECT
		ROUND(AVG(p.amount),2) AS "promedio",
		ROUND(STDDEV(p.amount),2) AS "desviación_estandar",
		ROUND(VARIANCE(p.amount),2) AS "varianza"
FROM payment AS p ;
___________________________________________________________________________

--	27.¿Qué películas se alquilan por encima del precio medio?

SELECT 
		f.title AS "película",
		f.rental_rate AS "precio"
FROM film AS f 
WHERE  f.rental_rate > (
	SELECT AVG(f2.rental_rate)
	FROM film AS f2 
);
___________________________________________________________________________

--	28. Muestra el id de los actores que hayan participado en mas de 40 peliculas

SELECT 
		CONCAT(a.first_name, ' ', a.last_name) AS "nombre_completo",
		COUNT(fa.film_id ) AS "número_películas",
		fa.actor_id  AS "id_actor"
FROM film_actor AS fa 
	LEFT JOIN actor AS a 
	ON fa.actor_id  = a.actor_id 
GROUP BY a.first_name, a.last_name, fa.actor_id
HAVING COUNT(fa.film_id ) > 40
ORDER BY número_películas DESC ;
___________________________________________________________________________

/* 	29. Obtener todas las películas y, si están disponibles en el inventario,
		mostrar la cantidad disponible 		*/

SELECT 
		f.title AS "película",
		COUNT(i.film_id) AS "cantidad_inventario"
FROM film AS f 
	LEFT JOIN inventory AS i 
	ON f.film_id = i.film_id 
GROUP BY f.title
ORDER BY cantidad_inventario DESC;
___________________________________________________________________________

--	30. Obtener los actores y el número de peliculas en las que han actuado

SELECT 
		CONCAT(a.first_name, ' ', a.last_name) AS "nombre_completo",
		COUNT(fa.film_id ) AS "número_películas"	
FROM film_actor AS fa 
	LEFT JOIN actor AS a 
	ON fa.actor_id  = a.actor_id 
GROUP BY a.first_name, a.last_name
ORDER BY número_películas DESC ;
___________________________________________________________________________

/*	31. Obtener todas las películas y mostrar los actores que han actuado en ellas,
		incluso si algunas peliculas no tienen actores asociados	*/



SELECT 
    f.title AS "película",
    CONCAT(a.first_name, ' ', a.last_name) AS "nombre_actor"
FROM film AS f
	LEFT JOIN film_actor AS fa
    	ON f.film_id = fa.film_id
	LEFT JOIN actor AS a
    	ON fa.actor_id = a.actor_id
ORDER BY f.title;
___________________________________________________________________________

/*	32. Obrener todos los actores y mostrar las películas en las que han actuado,
   		incluso si algunaos actores no han actuado en ninguna pelicula		*/

SELECT 
		concat(a.first_name, ' ', a.last_name) AS "nombre_actor",
		f.title AS "película"
FROM actor AS a
	LEFT JOIN film_actor AS fa 
		ON a.actor_id = fa.actor_id 
	LEFT JOIN film AS f 
		ON fa.film_id = f.film_id;
___________________________________________________________________________

--	33. Obtener todas las películas que tenemos y todos los registros de alquiler

SELECT 
		f.title AS "película",
		r.rental_id AS "id_alquiler",
		r.rental_date AS "fecha_alquiler"
FROM film AS f 
	LEFT JOIN inventory AS i 
		ON f.film_id = i.film_id
	LEFT JOIN rental AS r 
		ON i.inventory_id = r.inventory_id
GROUP BY f.title, r.rental_id
ORDER BY f.title;
___________________________________________________________________________

--	34. Encuentra los 5 clientes que mas dinero se hayan gastado con nosotros

SELECT
		p.customer_id AS "id_cliente",
		CONCAT(c.first_name, ' ', c.last_name ) AS "nombre_cliente",
		SUM(p.amount) AS "total_gastado"
FROM payment AS p
	LEFT JOIN customer AS c
		ON p.customer_id = c.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name
ORDER BY total_gastado DESC 
LIMIT 5;
___________________________________________________________________________

--	35. Selecciona todos los actores cuyo primer nombre es 'Johnny'

SELECT
		CONCAT(a.first_name, ' ', a.last_name) AS "nombre_actor"
FROM actor AS a 
WHERE a.first_name ILIKE 'Johnny';
___________________________________________________________________________

--	36. Renombra la columna "first_name" como Nombre y "last_name" como Apellido

SELECT
		a.first_name AS "Nombre",
		a.last_name AS "Apellido"
FROM actor AS a 
___________________________________________________________________________

--	37. Encuentra el id del actor mas bajo y del actor mas alto en la tabla actor

SELECT
		MIN(a.actor_id) AS "min",
		MAX(a.actor_id) AS "max"
FROM actor AS a ;
___________________________________________________________________________

--	38. Cuenta cuántos actores hay en la tabla "actor"

SELECT COUNT(a.actor_id) AS "total_actores"
FROM actor AS a ;
___________________________________________________________________________

--	39. Selecciona todos los actores y ordénalos por apellido en orden ascendente

SELECT CONCAT(a.first_name, ' ', a.last_name) AS "nombre_completo_actores"
FROM actor AS a 
ORDER BY a.last_name;
___________________________________________________________________________

--	40. Selecciona las 5 primeras películas de la tabla "film"

SELECT
		f.film_id AS "id_película",
		f.title AS "título"
FROM film AS f 
ORDER BY f.film_id
LIMIT 5;
___________________________________________________________________________

/*	41. Agrupa los actores por su nombre y cuenta cuántos actores tienen el mismo
		nombre, ¿Cuál es el nombre más repetido?	*/

SELECT 
		a.first_name AS "nombre",
		count(a.first_name ) AS "veces_repetido"
FROM actor AS a 
GROUP BY a.first_name
ORDER BY veces_repetido DESC 
LIMIT 1;
___________________________________________________________________________

--	42. Encuentra todos los alquileres y los nombres de los clientes que los realizaron

SELECT 
		r.rental_id AS "id_alquiler",
		CONCAT(c.first_name, ' ', c.last_name) AS "cliente"
FROM rental AS r 
	LEFT JOIN customer AS c 
		ON r.customer_id = c.customer_id;
___________________________________________________________________________

/*	43. Muestra todos los clientes y sus alquileres si existen,
 		incluyendo aquellos que no tienen alquileres 	*/
 
SELECT
		CONCAT(c.first_name, ' ', c.last_name) AS "cliente",
		r.rental_id AS "id_alquiler"
FROM customer AS c 
	LEFT JOIN rental AS r 
		ON c.customer_id = r.customer_id;
___________________________________________________________________________

/*	44. Realiza un CROSS JOIN entre las tablas "film" y "category"
 		¿Aporta valor esta consulta? ¿Por qué? deja contestacion después de la consulta	*/

SELECT 
		f.title AS "película",
		c.name AS "categoría"
FROM film AS f 
	CROSS JOIN category AS c ;

/* Esta consulta no aporta ningun valor, porque los datos que muestra son falsos, genera todas 
las combinaciones posibles entre las dos tablas, pero no tienen una utilidad concreta 	*/ 
___________________________________________________________________________

--	45. Encuentra los actores que han participado en películas de la categoria 'Action'

SELECT 
		CONCAT(a.first_name, ' ', a.last_name) AS "actor",
		c."name" AS "categoría"
FROM actor AS a 
	LEFT JOIN film_actor AS fa 
		ON a.actor_id = fa.actor_id
	LEFT JOIN film AS f 
		ON fa.film_id = f.film_id
	LEFT JOIN film_category AS fc 
		ON f.film_id = fc.film_id
	LEFT JOIN category AS c 
		ON fc.category_id = c.category_id
WHERE c."name" = 'Action';
___________________________________________________________________________

--	46. Encuentra todos los actores que no han participado en películas

SELECT 
		CONCAT(a.first_name, ' ', a.last_name) AS "actor"
FROM actor AS a 
	LEFT JOIN film_actor AS fa 
		ON a.actor_id = fa.actor_id
WHERE fa.film_id IS NULL 
___________________________________________________________________________

--	47. Selecciona el nombre de los actores con el número de películas en las que han participado

SELECT
		CONCAT(a.first_name, ' ', a.last_name) AS "actor",
		COUNT(fa.film_id) AS "nºpelículas"
FROM actor AS a
	LEFT JOIN film_actor AS fa 
		ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name
ORDER BY nºpelículas DESC ;
___________________________________________________________________________

/*	48. Crea una vista llamada "actor_num_peliculas" que muestre los nomres de los actores 
		numero de peliculas en las que han participado		*/
 
CREATE VIEW actor_num_peliculas AS 
SELECT
		CONCAT(a.first_name, ' ', a.last_name) AS "actor",
		COUNT(fa.film_id) AS "nºpelículas"
FROM actor AS a
	LEFT JOIN film_actor AS fa 
		ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name;


SELECT *
FROM actor_num_peliculas;
___________________________________________________________________________
--	49. Calcula el número total de alquileres realizados por cada cliente

SELECT 
		CONCAT(c.first_name, ' ', c.last_name) AS "cliente",
		COUNT(r.rental_id) AS "alquileres"
FROM customer AS c 
	LEFT JOIN rental AS r 
		ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name;
___________________________________________________________________________
--	50.	Calcula la duración total de las películas en la categoría 'Action'.

SELECT 
		c."name"  AS "categoría",
		SUM(f.length) AS "duración"
FROM film AS f 
	LEFT JOIN film_category AS fc 
		ON f.film_id = fc.film_id
	LEFT JOIN category AS c 
		ON fc.category_id = c.category_id
WHERE c.name = 'Action'
GROUP BY c."name"
ORDER BY duración DESC ;
___________________________________________________________________________
/*	51. Crea una tabla temporal llamada “cliente_rentas_temporal” para
		almacenar el total de alquileres por cliente.	*/

CREATE TEMPORARY TABLE cliente_rentas_temporal AS 
SELECT 
		CONCAT(c.first_name, ' ', c.last_name) AS "cliente",
		COUNT(r.rental_id) AS "alquileres"
FROM customer AS c 
	LEFT JOIN rental AS r 
		ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name;


SELECT *
FROM cliente_rentas_temporal;
__________________________________________________________________________
/*	52. Crea una tabla temporal llamada "peliculas_alquiladas" que almacene 
 		las peliculas que han sido alquiladas al menos 10 veces		*/

CREATE TEMPORARY TABLE peliculas_alquiladas AS 
SELECT 
		f.film_id AS "id_película",
		f.title AS "película",
		COUNT(r.rental_id) AS "alquileres"
FROM film AS f 
	LEFT JOIN inventory AS i 
		ON f.film_id = i.film_id 
	LEFT JOIN rental AS r 
		ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
HAVING COUNT(r.rental_id)>= 10;


 SELECT *
 FROM "peliculas_alquiladas";
___________________________________________________________________________
/*	53. Encuentra el título de las películas que han sido alquiladas por el cliente
		con el nombre ‘Tammy Sanders’ y que aún no se han devuelto. 
		Ordena los resultados alfabéticamente por título de película.	*/

SELECT 
		f.title AS "película"
FROM customer AS c 
	LEFT JOIN rental AS r 
		ON c.customer_id = r.customer_id
	LEFT JOIN inventory AS i 
		ON r.inventory_id = i.inventory_id
	LEFT JOIN film AS f 
		ON i.film_id = f.film_id
WHERE	c.first_name ILIKE 	'Tammy'
  AND	c.last_name  ILIKE 	'Sanders'
  AND 	r. return_date IS NULL 
ORDER BY f.title;
___________________________________________________________________________
/* 	54. Encuentra los nombres de los actores que han actuado en al menos una
película que pertenece a la categoría ‘Sci-Fi’. Ordena los resultados
alfabéticamente por apellido.	*/

SELECT nombre_actor,
	  last_name	
FROM (
    SELECT DISTINCT 
        CONCAT(a.first_name, ' ', a.last_name) AS nombre_actor,
        a.last_name
    FROM actor AS a
    INNER JOIN film_actor AS fa 
    	ON a.actor_id = fa.actor_id
    INNER JOIN film AS f 
    	ON fa.film_id = f.film_id
    INNER JOIN film_category AS fc 
    	ON f.film_id = fc.film_id
    INNER JOIN category AS c 
    	ON fc.category_id = c.category_id
    WHERE c.name = 'Sci-Fi'
) AS subconsulta
ORDER BY last_name;
___________________________________________________________________________
/*	55. Encuentra el nombre y apellido de los actores que han actuado en
películas que se alquilaron después de que la película ‘Spartacus
Cheaper’ se alquilara por primera vez. Ordena los resultados
alfabéticamente por apellido	*/

WITH primer_alquiler as(
	SELECT 
			MIN(r.rental_date) AS "fecha_1er_alquiler"
	FROM rental AS r
		LEFT JOIN inventory AS i 
			ON r.inventory_id = i.inventory_id
		LEFT JOIN film AS f 
			ON i.film_id = f.film_id
	WHERE f.title = 'Spartacus Cheaper'
)

SELECT 	
		CONCAT(a.first_name, ' ', a.last_name) AS "actor"
FROM actor AS a 
	LEFT JOIN film_actor AS fa 
		ON a.actor_id = fa.actor_id 
	LEFT JOIN film AS f 
		ON fa.film_id = f.film_id
	LEFT JOIN inventory AS i 
		ON f.film_id = i.film_id
	LEFT JOIN rental AS r 
		ON i.inventory_id = r.inventory_id
WHERE r.rental_date >(
	SELECT fecha_1er_alquiler
	FROM primer_alquiler
)
ORDER BY a.last_name;
___________________________________________________________________________	
/*	56. Encuentra el nombre y apellido de los actores que no han actuado en
ninguna película de la categoría ‘Music’	*/

SELECT 	
		CONCAT(a.first_name, ' ', a.last_name) AS "actor"
FROM actor AS a 
WHERE a.actor_id NOT IN (
	SELECT DISTINCT fa.actor_id
	FROM film_actor AS fa 
		LEFT JOIN film AS f 
			ON fa.film_id = f.film_id
		LEFT JOIN film_category AS fc 
			ON f.film_id = fc.film_id
		LEFT JOIN category AS c 
			ON fc.category_id = c.category_id
		WHERE c."name" ILIKE 'Music'
);
___________________________________________________________________________	
/*	57. Encuentra el título de todas las películas que fueron alquiladas por más
de 8 días.	*/

SELECT 
		f.title AS "pelicula" ,
		EXTRACT(DAY FROM (r.return_date - r.rental_date))AS "días_alquiler"
FROM rental AS r 
	LEFT JOIN inventory AS i 
		ON r.inventory_id = i.inventory_id
	LEFT JOIN film AS f 
		ON i.film_id = f.film_id
WHERE EXTRACT(DAY FROM (r.return_date - r.rental_date)) > 8;
___________________________________________________________________________
/*	58. Encuentra el título de todas las películas que son de la misma categoría
que ‘Animation’	*/

SELECT   
		f.title AS "película",
		c."name" AS "categoría"
FROM film AS f 
	INNER JOIN film_category AS fc 
		ON f.film_id = fc.film_id
	INNER JOIN category AS c 
		ON fc.category_id = c.category_id
WHERE c."name" = 'Animation';
___________________________________________________________________________
/*	59. Encuentra los nombres de las películas que tienen la misma duración
que la película con el título ‘Dancing Fever’. Ordena los resultados
alfabéticamente por título de película.	*/


SELECT 
		f.title AS "película",
		f.length AS "duración"
FROM film AS f 
WHERE f.length = (
	SELECT f.length
	FROM film AS f 
	WHERE f.title ILIKE 'Dancing Fever'
)
ORDER BY f.title;
___________________________________________________________________________
/*	60. Encuentra los nombres de los clientes que han alquilado al menos 7
películas distintas. Ordena los resultados alfabéticamente por apellido	*/

SELECT 
		CONCAT(c.first_name, ' ', c.last_name) AS "nombre_cliente",
		COUNT(DISTINCT (i.film_id)) AS "películas_distintas"
FROM customer AS c 
	INNER JOIN rental AS r 
		ON c.customer_id = r.customer_id
	INNER JOIN inventory AS i 
		ON r.inventory_id = i.inventory_id
GROUP BY c.first_name , c.last_name 
HAVING COUNT(DISTINCT (i.film_id)) >= 7
ORDER BY c.last_name
___________________________________________________________________________
/*	61.Encuentra la cantidad total de películas alquiladas por categoría y
muestra el nombre de la categoría junto con el recuento de alquileres.	*/

SELECT 	
		c."name" AS "categoría",
		COUNT(r.rental_id) AS "recuento_alquileres"
FROM category AS c
	LEFT JOIN film_category AS fc 
		ON c.category_id = fc.category_id
	LEFT JOIN film AS f 
		ON fc.film_id = f.film_id
	LEFT JOIN inventory AS i 
		ON f.film_id = i.film_id 
	LEFT JOIN rental AS r 
		ON i.inventory_id = r.inventory_id
GROUP BY c."name";
___________________________________________________________________________	
--	62.  Encuentra el número de películas por categoría estrenadas en 2006.

SELECT 
		COUNT(f.film_id) AS "películas",
		c.name AS "categoría",
		f.release_year AS "año_estreno"
FROM category AS c 
	LEFT JOIN film_category AS fc 
		ON c.category_id = fc.category_id
	LEFT JOIN film AS f 
		ON fc.film_id = f.film_id
WHERE f.release_year = '2006'
GROUP BY c."name",f.release_year;
___________________________________________________________________________
/*	63. Obtén todas las combinaciones posibles de trabajadores con las tiendas
que tenemos.	*/

SELECT 
		CONCAT(s.first_name, ' ', s.last_name) AS "trabajador",
		s2.store_id AS "tienda"
FROM staff AS s 
	CROSS JOIN store AS s2 
___________________________________________________________________________
/*	64. Encuentra la cantidad total de películas alquiladas por cada cliente y
muestra el ID del cliente, su nombre y apellido junto con la cantidad de
películas alquiladas.  */

SELECT
		c.customer_id	AS "id_cliente",
		CONCAT(c.first_name, ' ', c.last_name) AS "nombre_cliente",
		COUNT(r.rental_id) AS "cantidad_alquileres"
FROM customer AS c 
	LEFT JOIN rental AS r  
		ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY cantidad_alquileres DESC;













