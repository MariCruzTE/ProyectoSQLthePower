# ProyectoSQLthePower
inicio repositorio en local
creacion carpeta Imgs
guardado en Imgs de archivo png con el esquema de la BBDD
1-Crea el esquema de la base de datos (Añadido png en carpeta "Imgs")



No, la documentación que te proporcioné no está en formato **Markdown**. A continuación, te la reescribo en formato **Markdown** para que puedas incluirla fácilmente en tu **README**.

---



#### **Ejercicio 35: Encuentra el id del actor más bajo y del actor más alto en la tabla actor.**
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



### **Conclusiones del Análisis de Cada Ejercicio**

#### **Ejercicio 35: Encuentra el id del actor más bajo y del actor más alto en la tabla actor.**
**Conclusión:**  
Este ejercicio permite comprender el rango de valores en la columna `actor_id` de la tabla `actor`. El uso de las funciones `MIN()` y `MAX()` es fundamental para identificar el primer y último actor en términos de su identificador, lo cual puede ser útil en análisis de rangos y para realizar verificaciones de datos.

---

#### **Ejercicio 36: Cuenta cuántos actores hay en la tabla "actor".**
**Conclusión:**  
El resultado muestra el número total de actores en la base de datos. Este ejercicio es clave para comprender el tamaño de la tabla `actor` y puede ser útil para la planificación de recursos y optimización de consultas cuando se gestionan grandes volúmenes de datos.

---

#### **Ejercicio 37: Selecciona todos los actores y ordénalos por apellido en orden ascendente.**
**Conclusión:**  
Al ordenar los actores por apellido, se puede obtener una lista más legible y ordenada de los actores, facilitando tareas como la búsqueda, análisis y reporte. Es una práctica común en bases de datos ordenar resultados alfabéticamente para facilitar la consulta de datos.

---

#### **Ejercicio 38: Selecciona las 5 primeras películas de la tabla "film".**
**Conclusión:**  
Este ejercicio permite trabajar con un conjunto de datos pequeño, útil para pruebas rápidas y demostraciones. Seleccionar las primeras 5 películas por `film_id` también puede ser útil en escenarios donde se necesitan los registros más antiguos o de ejemplo, aunque es importante notar que no refleja necesariamente el orden cronológico real de las películas.

---

#### **Ejercicio 39: Agrupa los actores por su nombre y cuenta cuántos actores tienen el mismo nombre. ¿Cuál es el nombre más repetido?**
**Conclusión:**  
Este ejercicio proporciona información sobre la distribución de nombres entre los actores, ayudando a identificar nombres comunes. Este tipo de análisis puede ser útil para evaluar la diversidad o repetición de nombres en una base de datos de personas, lo cual es esencial para la estandarización de datos y para gestionar la duplicidad.

---

#### **Ejercicio 40: Encuentra todos los alquileres y los nombres de los clientes que los realizaron.**
**Conclusión:**  
Este ejercicio proporciona información clave sobre la relación entre clientes y alquileres, lo que puede ser útil para identificar patrones de comportamiento, frecuencia de alquileres y analizar la actividad de los clientes. Es útil para realizar análisis de clientes, marketing y para informes sobre la actividad de alquileres.

---

#### **Ejercicio 41: Muestra todos los clientes y sus alquileres si existen, incluyendo aquellos que no tienen alquileres.**
**Conclusión:**  
Este ejercicio resalta el uso del `LEFT JOIN` para mostrar todos los clientes, incluso aquellos sin actividad de alquiler. Permite un análisis completo de los clientes, ayudando a identificar cuáles han sido inactivos y proporcionando información más detallada sobre el comportamiento de la base de clientes.

---

#### **Ejercicio 42: Realiza un CROSS JOIN entre las tablas "film" y "category". ¿Aporta valor esta consulta? ¿Por qué?**
**Conclusión:**  
El `CROSS JOIN` genera un producto cartesiano que puede no ser útil en este caso, ya que produce una combinación masiva de todas las películas con todas las categorías, lo que no tiene mucho valor práctico sin una relación específica. Este tipo de unión debe usarse con precaución, ya que puede generar un gran número de registros irrelevantes.

---

#### **Ejercicio 43: Encuentra los actores que han participado en películas de la categoría 'Action'.**
**Conclusión:**  
Este ejercicio muestra cómo combinar datos de varias tablas para identificar actores que han trabajado en películas de una categoría específica. Es útil para realizar análisis por categorías de películas y obtener información relevante para campañas de marketing o análisis de actores asociados con géneros específicos.

---

#### **Ejercicio 44: Encuentra todos los actores que no han participado en películas.**
**Conclusión:**  
Este ejercicio es útil para identificar actores que no tienen asignadas películas en la base de datos. Puede ser utilizado para depurar o analizar actores inactivos o para mejorar la calidad de los datos, asegurando que la información en la base de datos esté actualizada y completa.

---

#### **Ejercicio 45: Encuentra el nombre de los actores con el número de películas en las que han participado.**
**Conclusión:**  
Este ejercicio ofrece una visión clara de la participación de los actores en películas, ayudando a evaluar el impacto de un actor en la industria cinematográfica. Además, el análisis de la participación por actor puede ser útil para estudios sobre la popularidad y la frecuencia de aparición de ciertos actores en las películas.

---

#### **Ejercicio 46: Crea una vista llamada "actor_num_peliculas" que muestre los nombres de los actores y el número de películas en las que han participado.**
**Conclusión:**  
Crear una vista permite almacenar y reutilizar consultas complejas. En este caso, la vista `actor_num_peliculas` facilita el acceso a los datos sobre actores y su número de películas sin necesidad de volver a escribir la consulta cada vez. Esta estrategia optimiza el rendimiento y mejora la eficiencia de las consultas en bases de datos grandes.

---

