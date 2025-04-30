# ProyectoSQLthePower
inicio repositorio en local
creacion carpeta Imgs
guardado en Imgs de archivo png con el esquema de la BBDD
## Ejercicio 1
Crea el esquema de la base de datos 
**(Añadido png en carpeta "Imgs")**

## Ejercicio 2

Muestra los nombres de todas las películas con una clasificación por edades de 'R'

### 🧠 Análisis

Este ejercicio tiene como objetivo listar todas las películas cuya clasificación por edades sea "R". La clasificación "R" suele indicar que el contenido es solo para adultos o puede contener material sensible.

Pasos:
- Consultamos la tabla `film` para obtener los títulos de las películas.
- Filtramos las películas que tienen una clasificación específica, en este caso "R".
- Devolvemos únicamente el título y la clasificación de la película.

### 📌 Consulta SQL

```sql
SELECT 			
	f.title AS "titulo",		
	f.rating AS "clasificacion"
FROM film AS f 			
WHERE f.rating = 'R';
```

### 📊 Resultados

| titulo                 | clasificacion |
|------------------------|---------------|
| AIRPORT POLLOCK        | R             |
| ALONE TRIP             | R             |
| AMELIE HELLFIGHTERS    | R             |
| AMERICAN CIRCUS        | R             |
| ANACONDA CONFESSIONS   | R             |
| ANALYZE HOOSIERS       | R             |
| ANYTHING SAVANNAH      | R             |
| APOCALYPSE FLAMINGOS   | R             |
| BOULEVARD MOB          | R             |
| ARMY FLINTSTONES       | R             |
| BADMAN DAWN            | R             |
| BANGER PINOCCHIO       | R             |
| BEAR GRACELAND         | R             |
| BEAST HUNCHBACK        | R             |
| BEVERLY OUTLAW         | R             |
| ...                    | ...           |

### ✅ Conclusiones

- Las películas con clasificación "R" son generalmente más populares en géneros como terror, crimen y drama.
- Esta consulta es útil para entender cómo se distribuyen las películas con contenido para adultos en el catálogo.
- Si se necesita segmentar este tipo de películas para análisis de contenido o para audiencias específicas, este tipo de filtro es clave.
___

## Ejercicio 11. Encuentra lo que costó el antepenúltimo alquiler ordenado por día

### 🧠 Análisis

Se desea obtener el **coste del antepenúltimo alquiler**, ordenado por la fecha de alquiler.  
La tabla `rental` contiene las fechas de cada alquiler y se relaciona con la tabla `payment` a través del campo `rental_id`, que contiene los importes asociados.

Para obtener el antepenúltimo registro simplemente:
- Ordenamos por `rental_date` en orden descendente (`DESC`).
- Usamos `OFFSET 2 LIMIT 1` para acceder al tercer elemento (antepenúltimo) en ese orden.
- Utilizamos un `LEFT JOIN` entre `rental` y `payment` para incluir aquellos alquileres que puedan no tener pago registrado (aunque en este caso probablemente sí lo tengan).

### 🧾 Consulta SQL

```sql
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
```

### 📊 Resultado

| id_alquiler | fecha_alquiler         | precio_alquiler |
|-------------|------------------------|-----------------|
| 11.676      | 2006-02-14 15:16:03.000 | 0               |

### ✅ Conclusión

El antepenúltimo alquiler registrado en la base de datos (ordenado por fecha de alquiler descendente) tuvo un **importe de 0**.  
Esto puede indicar que fue un alquiler gratuito, promocional, o bien que el pago no se registró correctamente. En cualquier caso, es importante notar que hay registros con importe cero y que convendría analizarlos si se estuviera realizando un estudio financiero.


### Ejercicio 35: Encuentra el id del actor más bajo y del actor más alto en la tabla actor.**
**Objetivo:** Este ejercicio permite encontrar el `actor_id` más bajo y más alto de los actores, lo que puede ser útil para entender el rango de identificadores en la tabla `actor`.

**Consulta SQL utilizada:**
```sql
SELECT 
    MIN(a.actor_id) AS "min", 
    MAX(a.actor_id) AS "max"
FROM actor AS a;
```

**Explicación:**
- `MIN()` se usa para encontrar el valor más bajo en la columna `actor_id`, y `MAX()` para el valor más alto.
- Este análisis es útil para conocer el rango de IDs en la tabla `actor`.

---

#### **Ejercicio 36: Cuenta cuántos actores hay en la tabla "actor".**
**Objetivo:** El ejercicio tiene como objetivo contar la cantidad total de actores en la tabla `actor`. Este dato puede ser útil para comprender el tamaño de la base de datos de actores.

**Consulta SQL utilizada:**
```sql
SELECT COUNT(a.actor_id) AS "total_actores"
FROM actor AS a;
```

**Explicación:**
- `COUNT()` se utiliza para contar la cantidad de registros en la columna `actor_id` de la tabla `actor`, proporcionando el número total de actores.

---

#### **Ejercicio 37: Selecciona todos los actores y ordénalos por apellido en orden ascendente.**
**Objetivo:** Este ejercicio tiene como objetivo listar todos los actores y ordenarlos por su apellido en orden ascendente.

**Consulta SQL utilizada:**
```sql
SELECT CONCAT(a.first_name, ' ', a.last_name) AS "nombre_completo_actores"
FROM actor AS a 
ORDER BY a.last_name;
```

**Explicación:**
- `CONCAT(a.first_name, ' ', a.last_name)` se usa para concatenar el nombre y el apellido de los actores.
- Se ordena por el apellido (`a.last_name`) de manera ascendente, lo que facilita la lectura al ordenar alfabéticamente a los actores.

---

#### **Ejercicio 38: Selecciona las 5 primeras películas de la tabla "film".**
**Objetivo:** Este ejercicio tiene como objetivo seleccionar las primeras 5 películas de la tabla `film` según su `film_id`, lo cual es útil cuando se necesita una lista pequeña de películas para pruebas o demostraciones.

**Consulta SQL utilizada:**
```sql
SELECT 
    f.film_id AS "id_película", 
    f.title AS "título"
FROM film AS f
WHERE film_id BETWEEN 1 AND 5;
```

**Explicación:**
- Se seleccionan las 5 primeras películas de la tabla `film` utilizando la condición `BETWEEN 1 AND 5`.
- Esto filtra las películas por `film_id` y es útil para mostrar un conjunto de datos pequeño.

---

#### **Ejercicio 39: Agrupa los actores por su nombre y cuenta cuántos actores tienen el mismo nombre. ¿Cuál es el nombre más repetido?**
**Objetivo:** Este ejercicio tiene como objetivo encontrar cuántos actores comparten el mismo nombre, lo cual puede ayudar a entender patrones en la base de datos.

**Consulta SQL utilizada:**
```sql
SELECT 
    a.first_name AS "nombre", 
    COUNT(a.first_name) AS "veces_repetido"
FROM actor AS a 
GROUP BY a.first_name
ORDER BY veces_repetido DESC;
```

**Explicación:**
- Se utiliza `COUNT()` para contar cuántos actores tienen el mismo nombre (`first_name`).
- Los resultados se agrupan por `first_name` y se ordenan de mayor a menor según la cantidad de repeticiones.

---

#### **Ejercicio 40: Encuentra todos los alquileres y los nombres de los clientes que los realizaron.**
**Objetivo:** Este ejercicio tiene como objetivo mostrar todos los alquileres realizados y los clientes asociados a esos alquileres.

**Consulta SQL utilizada:**
```sql
SELECT 
    r.rental_id AS "id_alquiler", 
    CONCAT(c.first_name, ' ', c.last_name) AS "cliente"
FROM rental AS r
LEFT JOIN customer AS c 
    ON r.customer_id = c.customer_id;
```

**Explicación:**
- Se realiza un `LEFT JOIN` entre las tablas `rental` y `customer` para obtener los nombres de los clientes junto con sus alquileres.
- Esto es útil para analizar los clientes y los alquileres realizados por cada uno.

---

#### **Ejercicio 41: Muestra todos los clientes y sus alquileres si existen, incluyendo aquellos que no tienen alquileres.**
**Objetivo:** Este ejercicio tiene como objetivo mostrar todos los clientes, incluidos aquellos que no han realizado ningún alquiler.

**Consulta SQL utilizada:**
```sql
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS "cliente", 
    r.rental_id AS "id_alquiler"
FROM customer AS c 
LEFT JOIN rental AS r 
    ON c.customer_id = r.customer_id;
```

**Explicación:**
- Utiliza `LEFT JOIN` para garantizar que se muestren todos los clientes, incluso aquellos que no tienen alquileres registrados.
- Es útil para obtener un conjunto de datos completo de clientes, incluidos aquellos sin actividad de alquiler.

---

#### **Ejercicio 42: Realiza un CROSS JOIN entre las tablas "film" y "category". ¿Aporta valor esta consulta? ¿Por qué?**
**Objetivo:** Este ejercicio tiene como objetivo realizar un `CROSS JOIN` entre las tablas `film` y `category`, lo cual genera un producto cartesiano de ambas tablas.

**Consulta SQL utilizada:**
```sql
SELECT f.title, c.name 
FROM film AS f
CROSS JOIN category AS c;
```

**Explicación:**
- El `CROSS JOIN` genera una combinación de todas las películas con todas las categorías. Sin embargo, como estas tablas no están relacionadas directamente, el resultado es un gran número de combinaciones, lo que generalmente no es útil sin una relación lógica.
- Este tipo de unión no se utiliza a menudo en bases de datos relacionales porque puede generar resultados masivos e irrelevantes, a menos que haya una razón específica para hacerlo.

---

#### **Ejercicio 43: Encuentra los actores que han participado en películas de la categoría 'Action'.**
**Objetivo:** Este ejercicio tiene como objetivo encontrar los actores que han participado en películas que pertenecen a la categoría 'Action'.

**Consulta SQL utilizada:**
```sql
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS "actor", 
    c.name AS "categoría"
FROM actor AS a 
LEFT JOIN film_actor AS fa 
    ON a.actor_id = fa.actor_id
LEFT JOIN film AS f 
    ON fa.film_id = f.film_id
LEFT JOIN film_category AS fc 
    ON f.film_id = fc.film_id
LEFT JOIN category AS c 
    ON fc.category_id = c.category_id
WHERE c.name = 'Action';
```

**Explicación:**
- Se utilizan varias uniones (`LEFT JOIN`) para conectar las tablas `actor`, `film_actor`, `film`, `film_category` y `category`.
- Se filtra por la categoría `'Action'` para mostrar solo los actores que han participado en películas de esta categoría.

---

#### **Ejercicio 44: Encuentra todos los actores que no han participado en películas.**
**Objetivo:** Este ejercicio tiene como objetivo identificar a los actores que no han participado en ninguna película.

**Consulta SQL utilizada:**
```sql
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS "actor"
FROM actor AS a 
LEFT JOIN film_actor AS fa 
    ON a.actor_id = fa.actor_id
WHERE fa.film_id IS NULL;
```

**Explicación:**
- Se realiza un `LEFT JOIN` entre las tablas `actor` y `film_actor`, y se utiliza `WHERE fa.film_id IS NULL` para filtrar los actores que no tienen ninguna película asociada.
- Este tipo de consulta es útil para identificar actores sin participación en ninguna película.

---

#### **Ejercicio 45: Encuentra el nombre de los actores con el número de películas en las que han participado.**
**Objetivo:** Este ejercicio tiene como objetivo contar cuántas películas ha protagonizado cada actor.

**Consulta SQL utilizada:**
```sql
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS "actor", 
    COUNT(fa.film_id) AS "nºpelículas"
FROM actor AS a
LEFT JOIN film_actor AS fa 
    ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name;
```

**Explicación:**
- Se cuenta cuántas películas están asociadas a cada actor utilizando `COUNT(fa.film_id)`.
- El resultado muestra el nombre completo de los actores y el número de películas en las que han participado.

---

#### **Ejercicio 46: Crea una vista llamada "actor_num_peliculas" que muestre los nombres de los actores y el número de películas en las que han participado.**
**Objetivo:** Este ejercicio crea una vista que almacena la relación de actores con el número de películas en las que han participado.

**Consulta SQL utilizada:**
```sql
CREATE VIEW actor_num_peliculas AS 
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS "actor", 
    COUNT(fa.film_id) AS "nºpelículas"
FROM actor AS a
LEFT JOIN film_actor AS fa 
    ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name;
```

---


### 📝 Ejercicio 55: Actores que no han actuado en películas de la categoría 'Music'

#### 🔹 Enunciado  
Encuentra el nombre y apellido de los actores que **no han actuado** en ninguna película de la categoría `Music`.

#### 🔍 Consulta SQL utilizada
```sql
SELECT 	
    CONCAT(a.first_name, ' ', a.last_name) AS "actor"
FROM actor AS a 
WHERE a.actor_id NOT IN (
    SELECT DISTINCT fa.actor_id
    FROM film_actor AS fa 
        LEFT JOIN film AS f ON fa.film_id = f.film_id
        LEFT JOIN film_category AS fc ON f.film_id = fc.film_id
        LEFT JOIN category AS c ON fc.category_id = c.category_id
    WHERE c."name" ILIKE 'Music'
);
```

---

### 📊 Conclusiones del análisis

- Se ha identificado un total de **56 actores** que no han participado en ninguna película clasificada en la categoría **'Music'**.
- Esto implica que **una parte significativa del elenco** de la base de datos no está relacionada con este género, lo que puede sugerir una **producción limitada** de películas musicales en el catálogo o una preferencia de casting distinta para ese tipo de producciones.
- La consulta emplea una subconsulta con `NOT IN` y `DISTINCT`, que es una estrategia habitual para identificar elementos **excluidos** de un conjunto, como en este caso.
- Además, se utilizó `ILIKE` para asegurar que el filtro de categoría sea **insensible a mayúsculas**, lo que mejora la robustez del análisis.

---
### Ejercicio 60: Clientes que han alquilado al menos 7 películas distintas

#### 🔍 Objetivo:
Identificar a los clientes que han alquilado **siete o más películas distintas**. El propósito es conocer qué clientes tienen un alto nivel de interacción con el videoclub en términos de variedad de títulos alquilados.

#### 📄 Consulta SQL:
```sql
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS "nombre_cliente",
    COUNT(DISTINCT i.film_id) AS "películas_distintas"
FROM customer AS c 
    INNER JOIN rental AS r ON c.customer_id = r.customer_id
    INNER JOIN inventory AS i ON r.inventory_id = i.inventory_id
GROUP BY c.first_name, c.last_name 
HAVING COUNT(DISTINCT i.film_id) >= 7
ORDER BY c.last_name;
### 🧠 Análisis de la consulta:

- Se utiliza `CONCAT` para mostrar el nombre completo del cliente (nombre y apellido).
- Se hace un conteo de películas distintas alquiladas por cliente con `COUNT(DISTINCT i.film_id)`, lo que garantiza que no se repitan títulos alquilados múltiples veces.
- La combinación de las tablas `customer`, `rental` e `inventory` permite conectar a cada cliente con las películas que alquiló.
- Se agrupa por nombre y apellido del cliente (`GROUP BY`) para consolidar los datos por persona.
- El filtro `HAVING` asegura que solo se muestren aquellos clientes que alquilaron 7 o más películas distintas.
- Se ordena el resultado por `last_name` para facilitar la lectura alfabética.

---

### 📈 Resultados observados:

- El listado devuelve más de 100 clientes que han alquilado al menos 7 películas diferentes.
- Algunos de ellos superan las 30 películas distintas, lo que revela un alto nivel de interacción con el videoclub.
- Se observa diversidad tanto en clientes con apellidos que empiezan por letras iniciales como por letras avanzadas, lo que indica una distribución homogénea.

---

### 💡 Conclusiones:

- Este análisis permite identificar a los clientes más comprometidos con el videoclub en términos de variedad de títulos alquilados.
- A partir de este grupo, se pueden diseñar estrategias de fidelización como recomendaciones personalizadas, descuentos o membresías premium.
- También puede servir como base para futuros análisis de comportamiento: por ejemplo, qué géneros consumen más o si hay patrones temporales en los alquileres.

### Ejercicio 61. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres

### 🧠 Análisis

El objetivo de este ejercicio es **contar cuántas veces se han alquilado películas pertenecientes a cada categoría**.  
Para lograrlo, debemos recorrer varias relaciones:

- `category` contiene el nombre de la categoría.
- `film_category` relaciona películas con categorías.
- `film` nos permite conectar con las películas.
- `inventory` conecta las películas con copias disponibles para alquilar.
- `rental` contiene los alquileres registrados.

La estrategia es realizar varios `LEFT JOIN` desde `category` hasta `rental` para asegurar que incluyamos incluso las categorías con 0 alquileres (aunque en la práctica, todas parecen tener al menos uno).

Finalmente, agrupamos por el nombre de la categoría (`GROUP BY c.name`) y contamos los alquileres asociados.

### 🧾 Consulta SQL

```sql
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
```

### 📊 Resultado

| categoría   | recuento_alquileres |
|-------------|---------------------|
| Sports      | 1.179               |
| Classics    | 939                 |
| New         | 940                 |
| Family      | 1.096               |
| Comedy      | 941                 |
| Animation   | 1.166               |
| Travel      | 837                 |
| Music       | 830                 |
| Drama       | 1.060               |
| Horror      | 846                 |
| Sci-Fi      | 1.101               |
| Games       | 969                 |
| Documentary | 1.050               |
| Foreign     | 1.033               |
| Action      | 1.112               |
| Children    | 945                 |

### ✅ Conclusión

Las categorías con mayor número de alquileres son:
- **Sports (1.179)**
- **Animation (1.166)**
- **Action (1.112)**

Por el contrario, las categorías con menor actividad son:
- **Music (830)**
- **Travel (837)**
- **Horror (846)**

Esto puede proporcionar información útil para tomar decisiones sobre qué géneros potenciar, promocionar o revisar en el catálogo.

## 62. Encuentra el número de películas por categoría estrenadas en 2006

### 🧠 Análisis

Para resolver este ejercicio, se requiere:

- Obtener las categorías desde la tabla `category`.
- Asociarlas con las películas mediante `film_category` y `film`.
- Filtrar las películas estrenadas en 2006 (`release_year = 2006`).
- Agrupar los resultados por categoría.
- Contar el número de películas por cada categoría.

Se utiliza una combinación de `LEFT JOIN` para asegurar que se mantengan todas las categorías (aunque en este caso todas tienen películas en 2006), junto con `GROUP BY` para el recuento.

### 📌 Consulta SQL

```sql
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
GROUP BY c."name", f.release_year
ORDER BY películas DESC;
```

### 📊 Resultados

| películas | categoría   | año_estreno |
|-----------|-------------|-------------|
| 74        | Sports      | 2006        |
| 73        | Foreign     | 2006        |
| 69        | Family      | 2006        |
| 68        | Documentary | 2006        |
| 66        | Animation   | 2006        |
| 64        | Action      | 2006        |
| 63        | New         | 2006        |
| 62        | Drama       | 2006        |
| 61        | Sci-Fi      | 2006        |
| 61        | Games       | 2006        |
| 60        | Children    | 2006        |
| 58        | Comedy      | 2006        |
| 57        | Travel      | 2006        |
| 57        | Classics    | 2006        |
| 56        | Horror      | 2006        |
| 51        | Music       | 2006        |

### ✅ Conclusiones

- En el año 2006 se estrenaron películas en **todas las categorías existentes**.
- La categoría con más estrenos fue **"Sports"** con **74 películas**, seguida de cerca por **"Foreign"** y **"Family"**.
- La categoría con menos estrenos fue **"Music"**, aunque aun así cuenta con un volumen considerable (51 películas).
- Esto sugiere una distribución relativamente uniforme del número de películas por categoría para ese año, sin grandes desequilibrios.



## 63. Obtén todas las combinaciones posibles de trabajadores con las tiendas que tenemos

### 🧠 Análisis

Este ejercicio pide generar el **producto cartesiano** entre los trabajadores (`staff`) y las tiendas (`store`). Esto significa que cada trabajador se combina con cada tienda, independientemente de dónde trabaje realmente.

Para lograrlo:

- Se utiliza un `CROSS JOIN`, que genera todas las combinaciones posibles entre dos tablas.
- Se muestra el nombre completo del trabajador usando `CONCAT(first_name, ' ', last_name)`.
- Se incluye la `store_id` de cada tienda.

### 📌 Consulta SQL

```sql
SELECT 
	CONCAT(s.first_name, ' ', s.last_name) AS "trabajador",
	s2.store_id AS "tienda"
FROM staff AS s 
	CROSS JOIN store AS s2;
```

### 📊 Resultados (fragmento)

| trabajador    | tienda |
|---------------|--------|
| Mike Hillyer  | 1      |
| Mike Hillyer  | 2      |
| Jon Stephens  | 1      |
| Jon Stephens  | 2      |

**Total de combinaciones:** 4 (2 trabajadores × 2 tiendas)

### ✅ Conclusiones

- El `CROSS JOIN` genera el conjunto completo de combinaciones posibles, sin necesidad de condiciones de unión.
- Este tipo de consulta puede ser útil para simular asignaciones, realizar análisis hipotéticos o construir matrices de asignación.
- Aunque en la realidad cada trabajador está asignado a una sola tienda, este tipo de combinación permite ver todas las posibilidades si eso no se tuviera en cuenta.

## Ejercicio 64. Encuentra la cantidad total de películas alquiladas por cada cliente

### 🧠 Análisis

Este ejercicio tiene como objetivo obtener el número total de películas que cada cliente ha alquilado. Para ello, debemos:

- Consultar la tabla `customer` para obtener los datos de cada cliente.
- Relacionar `customer` con `rental`, usando `customer_id`, ya que en `rental` se guarda el registro de cada alquiler.
- Contar la cantidad de registros de alquiler por cliente (es decir, cuántos `rental_id` hay asociados a cada uno).
- Usar `LEFT JOIN` para asegurarnos de incluir clientes que no hayan realizado ningún alquiler (aunque en este caso no aparecen, la lógica es correcta).
- Agrupar por cliente y ordenar por la cantidad de alquileres.

### 📌 Consulta SQL

```sql
SELECT
	c.customer_id AS "id_cliente",
	CONCAT(c.first_name, ' ', c.last_name) AS "nombre_cliente",
	COUNT(r.rental_id) AS "cantidad_alquileres"
FROM customer AS c 
	LEFT JOIN rental AS r  
		ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY cantidad_alquileres DESC;
```

### 📊 Resultados (fragmento)

| id_cliente | nombre_cliente  | cantidad_alquileres |
|------------|------------------|----------------------|
| 148        | ELEANOR HUNT     | 46                   |
| 526        | KARL SEAL        | 45                   |
| 144        | CLARA SHAW       | 42                   |
| ...        | ...              | ...                  |

### ✅ Conclusiones

- La mayoría de los clientes han alquilado entre 30 y 46 películas.
- La distribución sugiere que hay un alto nivel de fidelización entre muchos clientes, con un número constante de alquileres.
- El uso de `LEFT JOIN` asegura que ningún cliente quede fuera, aunque no tenga registros de alquiler (esto es útil para bases más grandes o en evolución).
- Esta consulta es útil para estudios de comportamiento del cliente, como análisis RFM (Recencia, Frecuencia, Valor monetario).





