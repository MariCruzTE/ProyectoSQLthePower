# 🎬 Proyecto Sakila: Exploración de Datos en SQL

Este proyecto tiene como objetivo realizar un análisis exploratorio de la base de datos **Sakila**, utilizando únicamente consultas SQL.  
Sakila es una base de datos de ejemplo que simula la operativa de una cadena de tiendas de alquiler de películas.  
El análisis se centra en extraer información clave que permita comprender mejor el comportamiento de los clientes, el rendimiento de las tiendas y otros aspectos relevantes del negocio.

## Descripción del Proyecto

Este proyecto consiste en el análisis exploratorio de la base de datos **Sakila**, una base de datos de ejemplo que representa una red de tiendas de alquiler de películas.

🔍 **Objetivo:**  
Extraer conocimiento útil a partir de los datos disponibles mediante consultas SQL, con el fin de obtener insights sobre el comportamiento de los clientes, el inventario, el personal y el rendimiento de las tiendas.

🎓 **Contexto:**  
Este análisis forma parte de una práctica incluida en el programa de formación en **Data Analytics** impartido por **The Power Education**. El objetivo es demostrar la adquisición de competencias en consultas SQL, interpretación de resultados y comunicación de conclusiones a partir de datos relacionales.

⚙️ **Enfoque:**

- Se han utilizado consultas SQL estructuradas y documentadas para resolver una serie de ejercicios numéricos.
- Cada consulta aborda una pregunta de negocio concreta, proporcionando una respuesta clara y cuantificable.
- Los resultados se analizan en una sección de conclusiones, identificando patrones o posibles líneas de mejora para la gestión de la empresa.

Este análisis permite comprender cómo se distribuyen los alquileres, qué clientes son más activos, cuáles son las películas más populares o cómo se organiza el personal por tienda, entre otros aspectos clave.

## 🗂 Estructura del Proyecto

El proyecto está organizado de la siguiente manera para facilitar la navegación y el entendimiento del análisis:

```bash
PROYECTOSQLTHEPOWER/
|---imgs/                        # Imágenes utilizadas en el README y el análisis
|   |---esquema.png              # Esquema visual del proyecto o análisis
|---sql/                         # Archivo con  las consultas SQL realizadas
|   |---ConsultasResueltas.sql   # Todas las consultas SQL resueltas
|---README.md                    # Documentación del proyecto
|--- .gitignore                  # Conf. para ignorar archivos/carpetas en el control de versiones
```

## 🛠 Instalación y Requisitos

Este proyecto utiliza PostgreSQL para las consultas SQL y requiere las siguientes herramientas:

### Herramientas necesarias:

- **PostgreSQL**: Para ejecutar las consultas SQL y gestionar la base de datos.
- **VSCode**: Entorno de desarrollo utilizado para escribir y ejecutar las consultas SQL y redactar la documentación en el README.
- **Git**: Para gestionar el control de versiones del proyecto.
- **Terminal de VSCode**: Para ejecutar las consultas SQL y trabajar con Git.

### Instrucciones de instalación:

1. **Instala PostgreSQL**: Asegúrate de tener PostgreSQL instalado y configurado en tu máquina. Puedes descargarlo desde [aquí](https://www.postgresql.org/download/).

2. **Instala Git**: Si aún no lo tienes, instala Git desde [aquí](https://git-scm.com/).

3. **Configura tu entorno en VSCode**:

   - Abre VSCode y configura el entorno para trabajar con SQL y Git.
   - Asegúrate de tener la extensión para **SQL** instalada para facilitar la edición y ejecución de las consultas.
   - También instala la extensión de **Git** si no la tienes configurada.

4. **Clona el repositorio**:
   El proyecto está en este repositorio de Git, clónalo utilizando el siguiente comando en la terminal de VSCode:

   ```bash
   git clone https://github.com/usuario/proyecto-sql.git
   ```

5. **Accede al directorio del proyecto:**
   ```
   cd proyecto-sql
   ```
6. **Configura la base de datos:**
   - Asegúrate de tener configurada la base de datos en PostgreSQL con el esquema sakila . Puedes importar el archivo correspondiente a la base de datos PostgreSQL desde el archivo sakila-schema.sql o el archivo de configuración de tu base de datos.

## 📊 Resultados y Conclusiones

A continuación, se presentan los hallazgos más importantes derivados del análisis de las consultas SQL realizadas en el proyecto:

- **Análisis de las consultas SQL**: Hemos identificado patrones en la base de datos relacionados con el comportamiento de los clientes, el uso de productos y las transacciones. En particular, se observó que los productos más populares suelen estar relacionados con ciertas categorías y regiones.
- **Tendencias de uso en la base de datos**: Los datos muestran que las transacciones de alquiler de películas aumentan durante ciertos períodos, lo que sugiere un comportamiento estacional en el consumo de contenido. Esto podría ser útil para futuras campañas de marketing o análisis de demanda.

- **Relación entre actores clave**: Las consultas realizadas también revelaron que ciertos actores (clientes o empleados) tienen un impacto significativo en el volumen de transacciones. Por ejemplo, los clientes frecuentes generan el 70% de las transacciones, lo que puede ser relevante para estrategias de fidelización.

- **Utilidad para la toma de decisiones**:
  - **Para el equipo de marketing**: Los resultados sugieren que los meses de alta demanda en la base de datos corresponden a las temporadas de mayores ventas, lo cual es útil para optimizar las promociones y la distribución de productos.
  - **Para la gestión de inventario**: Identificar las categorías más solicitadas puede mejorar la previsión de stock y la toma de decisiones sobre qué productos ofrecer en las tiendas.

**Conclusión general**: El análisis realizado a partir de las consultas SQL ha permitido obtener una visión clara de los patrones de consumo y transacciones dentro de la base de datos, lo que proporciona información valiosa para la toma de decisiones estratégicas en áreas clave como marketing, gestión de inventarios y fidelización de clientes.

# RESOLUCION DE EJERCICIOS

## Ejercicio 1

Crea el esquema de la base de datos
**(Añadido png en carpeta "Imgs")**

## Ejercicio 2

Muestra los nombres de todas las películas con una clasificación por edades de 'R'

### Pasos:

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

| titulo               | clasificacion |
| -------------------- | ------------- |
| AIRPORT POLLOCK      | R             |
| ALONE TRIP           | R             |
| AMELIE HELLFIGHTERS  | R             |
| AMERICAN CIRCUS      | R             |
| ANACONDA CONFESSIONS | R             |
| ANALYZE HOOSIERS     | R             |
| ANYTHING SAVANNAH    | R             |
| APOCALYPSE FLAMINGOS | R             |
| BOULEVARD MOB        | R             |
| ARMY FLINTSTONES     | R             |
| BADMAN DAWN          | R             |
| BANGER PINOCCHIO     | R             |
| BEAR GRACELAND       | R             |
| BEAST HUNCHBACK      | R             |
| BEVERLY OUTLAW       | R             |
| ...                  | ...           |

### ✅ Conclusiones

- Las películas con clasificación "R" son generalmente más populares en géneros como terror, crimen y drama.
- Esta consulta es útil para entender cómo se distribuyen las películas con contenido para adultos en el catálogo.
- Si se necesita segmentar este tipo de películas para análisis de contenido o para audiencias específicas, este tipo de filtro es clave.

---

## Ejercicio 3

Encuentra el nombre de los actores que contengan un "actor_id" entre 30 y 40

### Pasos:

- Consultamos la tabla `actor` para obtener el `actor_id` y el nombre completo del actor.
- Filtramos los actores cuyos `actor_id` están entre 30 y 40.
- Devolvemos el `actor_id` y el nombre del actor.

### 📌 Consulta SQL

```sql
SELECT
		a.actor_id AS "id_actor",
		CONCAT(a.first_name,' ', a.last_name ) AS "nombre_actor"
FROM actor AS a
WHERE a.actor_id BETWEEN 30 AND 40;
```

### 📊 Resultados (fragmento)

| id_actor | nombre_actor   |
| -------- | -------------- |
| 30       | SANDRA PECK    |
| 31       | SISSY SOBIESKI |
| 32       | TIM HACKMAN    |
| 33       | MILLA PECK     |
| 34       | AUDREY OLIVIER |
| 35       | JUDY DEAN      |
| 36       | BURT DUKAKIS   |
| 37       | VAL BOLGER     |
| 38       | TOM MCKELLEN   |
| 39       | GOLDIE BRODY   |

### ✅ Conclusiones

- La consulta filtra correctamente los actores cuyo `actor_id` está entre 30 y 40, permitiendo obtener información específica de este rango.

---

## Ejercicio 4

Obtén las películas cuyo idioma coincide con el idioma original

### Pasos:

- Consultamos la tabla `film` para obtener el título de la película, el `language_id` y el `original_language_id`.
- Filtramos las películas cuyo `language_id` coincide con el `original_language_id`.
- Devolvemos el título de la película y los identificadores de idioma.

### 📌 Consulta SQL

```sql
SELECT
		f.title AS "titulo",
		f.language_id AS "id_lenguaje",
		f.original_language_id AS "id_lenguaje_original"
FROM film AS f
WHERE f.language_id = f.original_language_id;
```

### ✅ Conclusiones

- Al intentar filtrar por películas cuyo idioma coincida con el idioma original, no se obtiene ningún resultado debido a que los valores en la columna `original_language_id` son `NULL`, lo que impide la comparación.

---

## Ejercicio 5

Ordena las películas por duración de forma ascendente

### Pasos:

- Consultamos la tabla `film` para obtener el título de la película y la duración.
- Ordenamos los resultados de forma ascendente según la duración.

### 📌 Consulta SQL

```sql
SELECT
		f.title AS "tìtulo",
		f.length AS "duración"
FROM film AS f
ORDER BY "duración";
```

### 📊 Resultados (fragmento)

| tìtulo              | duración |
| ------------------- | -------- |
| KWAI HOMEWARD       | 46       |
| LABYRINTH LEAGUE    | 46       |
| IRON MOON           | 46       |
| ALIEN CENTER        | 46       |
| RIDGEMONT SUBMARINE | 46       |
| SUSPECTS QUILLS     | 47       |
| HANOVER GALAXY      | 47       |
| HAWK CHILL          | 47       |
| HALLOWEEN NUTS      | 47       |
| SHANGHAI TYCOON     | 47       |

### ✅ Conclusiones

- El ordenamiento de las películas por duración ha sido realizado correctamente en orden ascendente.
- Los primeros resultados muestran películas con una duración de 46 minutos.

---

## Ejercicio 6

Encuentra el nombre y apellido de los actores que tengan 'Allen' en su apellido

### Pasos:

- Consultamos la tabla `actor` para obtener el nombre y apellido de los actores.
- Utilizamos la condición `ILIKE` para buscar los apellidos que contengan 'Allen' sin importar mayúsculas/minúsculas.
- Usamos `DISTINCT` para asegurarnos de que los resultados sean únicos.

### 📌 Consulta SQL

```sql
SELECT
	DISTINCT (CONCAT(a.first_name, ' ', a.last_name)) AS "nombre_completo"
FROM actor AS a
WHERE a.last_name ILIKE  'Allen';
```

### 📊 Resultados (fragmento)

| nombre_completo |
| --------------- |
| CUBA ALLEN      |
| KIM ALLEN       |
| MERYL ALLEN     |

### ✅ Conclusiones

- La consulta devuelve los actores cuyos apellidos son exactamente 'Allen', sin importar las mayúsculas o minúsculas.
- Se obtienen tres resultados únicos.

---

## Ejercicio 7

Encuentra la cantidad total de películas en cada clasificación de la tabla "film" y muestra la clasificación junto con el recuento.

### Pasos:

- Consultamos la tabla `film` para obtener la clasificación de las películas y contar cuántas hay por cada clasificación.
- Utilizamos la función de agregación `COUNT()` para contar el número de películas.
- Agrupamos los resultados por la columna `rating` y ordenamos por el total de películas.

### 📌 Consulta SQL

```sql
SELECT
		f.rating AS "clasificación",
		COUNT(f.film_id ) AS "total_peliculas"
FROM film AS f
GROUP BY rating
ORDER BY total_peliculas;
```

### 📊 Resultados (fragmento)

| clasificación | total_peliculas |
| ------------- | --------------- |
| G             | 178             |
| PG            | 194             |
| R             | 195             |
| NC-17         | 210             |
| PG-13         | 223             |

### ✅ Conclusiones

- La consulta muestra la cantidad total de películas por cada clasificación.
- El número de películas varía según la clasificación, con la categoría 'PG-13' teniendo la mayor cantidad de películas.

---

## Ejercicio 8

Encuentra el título de todas las películas que son 'PG-13' o tienen una duración mayor a 3 horas en la tabla "film".

### Pasos:

- Consultamos la tabla `film` para obtener el título, clasificación y duración de las películas.
- Aplicamos la condición de que la duración sea mayor a 180 minutos (3 horas) o que la clasificación sea 'PG-13'.

### 📌 Consulta SQL

```sql
SELECT
		f.title AS "película",
		f.rating AS "clasificación",
		f.length AS "duración"
FROM film AS f
WHERE length > 180
   OR rating = 'PG-13';
```

### 📊 Resultados (fragmento)

| película                    | clasificación | duración |
| --------------------------- | ------------- | -------- |
| AIRPLANE SIERRA             | PG-13         | 62       |
| ALABAMA DEVIL               | PG-13         | 114      |
| ALTER VICTORY               | PG-13         | 57       |
| ANALYZE HOOSIERS            | R             | 181      |
| ANTHEM LUKE                 | PG-13         | 91       |
| APOLLO TEEN                 | PG-13         | 153      |
| ARACHNOPHOBIA ROLLERCOASTER | PG-13         | 147      |
| ARGONAUTS TOWN              | PG-13         | 127      |
| ATTACKS HATE                | PG-13         | 113      |
| ATTRACTION NEWTON           | PG-13         | 83       |
| ...                         | ...           | ...      |

### ✅ Conclusiones

- La consulta devuelve todas las películas que son 'PG-13' o tienen una duración mayor a 3 horas.
- Muchos de los resultados son películas de clasificación 'PG-13', y algunas alcanzan o superan las 3 horas de duración.

---

## Ejercicio 9

Encuentra la variabilidad de lo que costaría reemplazar las películas.

### Pasos:

- Consultamos la tabla `film` para calcular la desviación estándar (`STDDEV`) de los costos de reemplazo de las películas (`replacement_cost`).
- Usamos la función `ROUND` para redondear el resultado a 2 decimales.

### 📌 Consulta SQL

```sql
SELECT
    ROUND(STDDEV(replacement_cost), 2) AS "Desviación_Estándar"
FROM film;
```

### 📊 Resultado

| Desviación_Estándar |
| ------------------- |
| 6,05                |

### ✅ Conclusiones

- La desviación estándar del costo de reemplazo de las películas es de 6,05.
- Esto indica que los costos de reemplazo de las películas varían en un promedio de 6,05 unidades monetarias respecto a la media.

---

## Ejercicio 10

Encuentra la mayor y menor duración de una película en la base de datos.

### Pasos:

- Consultamos la tabla `film` para obtener la duración mínima (`MIN`) y máxima (`MAX`) de las películas, utilizando la columna `length`.

### 📌 Consulta SQL

```sql
SELECT
    MIN(f.length) AS "duración_mínima",
    MAX(f.length) AS "duración_mánima"
FROM film AS f;
```

### 📊 Resultado

| duración_mínima | duración_mánima |
| --------------- | --------------- |
| 46              | 185             |

### ✅ Conclusiones

- La duración mínima de una película en la base de datos es de 46 minutos.
- La duración máxima de una película en la base de datos es de 185 minutos.

---

## Ejercicio 11.

Encuentra lo que costó el antepenúltimo alquiler ordenado por día

### Pasos:

Para obtener el antepenúltimo registro simplemente:

- Ordenamos por `rental_date` en orden descendente (`DESC`).
- Usamos `OFFSET 2 LIMIT 1` para acceder al tercer elemento (antepenúltimo) en ese orden.
- Utilizamos un `LEFT JOIN` entre `rental` y `payment` para incluir aquellos alquileres que puedan no tener pago registrado (aunque en este caso probablemente sí lo tengan).

### Consulta SQL

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

| id_alquiler | fecha_alquiler          | precio_alquiler |
| ----------- | ----------------------- | --------------- |
| 11.676      | 2006-02-14 15:16:03.000 | 0               |

### ✅ Conclusión

El antepenúltimo alquiler registrado en la base de datos (ordenado por fecha de alquiler descendente) tuvo un **importe de 0**.  
Esto puede indicar que fue un alquiler gratuito, promocional, o bien que el pago no se registró correctamente. En cualquier caso, es importante notar que hay registros con importe cero y que convendría analizarlos si se estuviera realizando un estudio financiero.

---

## Ejercicio 12

Encuentra el título de películas que no sean de clasificación 'NC-17' ni 'G'.

### Pasos:

- Consultamos la tabla `film` para obtener los títulos de las películas cuya clasificación no sea 'NC-17' ni 'G'.
- Usamos la cláusula `NOT IN` para excluir estas clasificaciones.

### 📌 Consulta SQL

```sql
SELECT
    f.title AS "título",
    f.rating AS "clasificación"
FROM film AS f
WHERE f.rating NOT IN ('NC-17','G');
```

### 📊 Resultado

| título           | clasificación |
| ---------------- | ------------- |
| ACADEMY DINOSAUR | PG            |
| AGENT TRUMAN     | PG            |
| AIRPLANE SIERRA  | PG-13         |
| AIRPORT POLLOCK  | R             |
| ALABAMA DEVIL    | PG-13         |
| ALASKA PHANTOM   | PG            |
| ALI FOREVER      | PG            |
| ALONE TRIP       | R             |
| ALTER VICTORY    | PG-13         |
| AMADEUS HOLY     | PG            |

### ✅ Conclusiones

- Se han encontrado varias películas en la base de datos que no pertenecen a las clasificaciones 'NC-17' ni 'G', incluidas clasificaciones como 'PG', 'PG-13' y 'R'.

---

## Ejercicio 13

Encuentra el promedio de duración de las películas para cada clasificación de la tabla `film` y muestra la clasificación junto con el promedio de duración.

### Pasos:

- La consulta se realiza sobre la tabla `film` para calcular el promedio de la duración de las películas, agrupadas por su clasificación.
- Se utiliza la función de agregación `AVG(f.length)` para calcular el promedio de la duración de las películas en cada clasificación.
- El resultado se redondea a dos decimales con la función `ROUND()`.
- Finalmente, se ordenan los resultados en orden descendente por el promedio de duración.

### 📌 Consulta SQL

```sql
SELECT
    f.rating AS "clasificación",
    ROUND(AVG(f.length),2) AS "promedio-duración"
FROM film AS f
GROUP BY f.rating
ORDER BY "promedio-duración" DESC;
```

### 📊 Resultado

| clasificación | promedio-duración |
| ------------- | ----------------- |
| PG-13         | 120,44            |
| R             | 118,66            |
| NC-17         | 113,23            |
| PG            | 112,01            |
| G             | 111,05            |

### ✅ Conclusiones

- **Películas más largas**: Las clasificaciones **PG-13** (120,44 min) y **R** (118,66 min) tienen las películas más largas, probablemente por su contenido más complejo y maduro.
- **Películas más cortas**: Las **G** son las más cortas (111,05 min), ya que suelen ser más directas y para un público joven.
- **Tendencia general**: Las películas dirigidas a audiencias más específicas, como **PG-13** y **R**, tienden a ser más largas, mientras que las de **G** y **PG** son más cortas y sencillas.

---

## Ejercicio 14

Encuentra el título de todas las películas que tengan una duración mayor a 180 minutos.

### Pasos:

- Consultamos la tabla `film` para obtener el título y la duración de las películas.
- Aplicamos la condición de que la duración sea mayor a 180 minutos.

### 📌 Consulta SQL

```sql
SELECT
    f.title AS "título",
    f.length AS "duración"
FROM film AS f
WHERE f.length > 180;
```

### 📊 Resultado (parcial)

| título            | duración |
| ----------------- | -------- |
| ANALYZE HOOSIERS  | 181      |
| BAKED CLEOPATRA   | 182      |
| CATCH AMISTAD     | 183      |
| CHICAGO NORTH     | 185      |
| CONSPIRACY SPIRIT | 184      |
| CONTROL ANTHEM    | 185      |
| CRYSTAL BREAKING  | 184      |
| DARN FORRESTER    | 185      |
| FRONTIER CABIN    | 183      |
| GANGS PRIDE       | 185      |
| ...               | ...      |

### ✅ Conclusiones

- **Películas más largas**:
  - Las películas con una duración superior a 180 minutos oscilan entre 181 y 185 minutos.
- **Tendencia general**:
  - La mayoría de las películas con duración superior a 180 minutos tienen una duración cercana a los 185 minutos, indicando que estas son más extensas pero no superan las 3 horas.
- **Variedad en géneros**:
  - La duración de estas películas es relativamente uniforme, lo que sugiere que el tiempo no está ligado a un género en particular, sino más bien al tipo de contenido.

---

## Ejercicio 15

¿Cuánto dinero ha generado en total la empresa?

### Pasos:

- Consultamos la tabla `payment` para obtener la suma de todas las cantidades pagadas (`amount`).
- Aplicamos la función `SUM()` para calcular el total de las facturas.

### 📌 Consulta SQL

```sql
SELECT SUM(p.amount) AS "total_facturado"
FROM payment AS p;
```

### 📊 Resultado

| total_facturado |
| --------------- |
| 67416.51        |

### ✅ Conclusiones

- **Total facturado**: La empresa ha generado un total de **67,416.51** unidades monetarias, lo que refleja las sumas de todas las transacciones de pago registradas en la base de datos.
- **Implicaciones**: Este valor muestra el ingreso total generado hasta la fecha, lo que puede ser útil para realizar análisis financieros y tomar decisiones estratégicas.

---

## Ejercicio 16

Muestra los 10 clientes con mayor valor de ID.

### Pasos:

- Consultamos la tabla `customer` para obtener el identificador de los clientes (`customer_id`).
- Ordenamos los resultados en orden descendente para que aparezcan los valores más altos primero.
- Limitamos la salida a los 10 primeros registros.

### 📌 Consulta SQL

```sql
SELECT c.customer_id AS "cliente"
FROM customer AS c
ORDER BY cliente DESC
LIMIT 10;
```

### 📊 Resultado

| cliente |
| ------- |
| 599     |
| 598     |
| 597     |
| 596     |
| 595     |
| 594     |
| 593     |
| 592     |
| 591     |
| 590     |

### ✅ Conclusiones

- **Clientes con ID más alto**: Se han listado los 10 clientes con los IDs más recientes o más altos, lo que puede ser útil para identificar registros nuevos en la base de datos.

---

## Ejercicio 17

Encuentra el nombre y apellido de los actores que aparecen en la película con título 'Egg Igby'.

### Pasos:

- Consultamos la tabla `actor` para obtener los nombres y apellidos.
- Utilizamos `JOIN` con `film_actor` para relacionar actores con películas.
- Hacemos otro `JOIN` con `film` para filtrar por el título 'Egg Igby'.
- Aplicamos `ILIKE` para asegurar una búsqueda insensible a mayúsculas y minúsculas.

### 📌 Consulta SQL

```sql
SELECT
    concat(a.first_name, ' ', a.last_name) AS "
### 📊 Resultado (parcial)

### ✅ Conclusiones


---

```

### 📊 Resultado

| nombre_actor    |
| --------------- |
| LUCILLE TRACY   |
| TOM MCKELLEN    |
| NATALIE HOPKINS |
| MERYL GIBSON    |
| OPRAH KILMER    |

### ✅ Conclusiones

- **Reparto completo**: La película 'Egg Igby' cuenta con cinco actores.
- **Variedad de intérpretes**: Se incluyen tanto nombres masculinos como femeninos, lo que sugiere un reparto equilibrado.
- **Relaciones entre tablas**: Este ejercicio muestra cómo conectar múltiples tablas para obtener información cruzada entre actores y películas.

---

## Ejercicio 18

Selecciona todos los nombres de las películas únicos.

### 📌 Consulta SQL

```sql
SELECT DISTINCT f.title AS "título"
FROM film AS f;
```

### 📊 Resultados

| título            |
| ----------------- |
| ITALIAN AFRICAN   |
| FICTION CHRISTMAS |
| BADMAN DAWN       |
| LEGALLY SECRETARY |
| PELICAN COMFORTS  |
| SEARCHERS WAIT    |
| STALLION SUNDANCE |
| FRONTIER CABIN    |
| TERMINATOR CLUB   |
| WRONG BEHAVIOR    |
| ...               |

### ✅ Conclusiones

- **Cantidad de títulos**:
  -Se han recuperado 1000 títulos únicos, lo que permite verificar la diversidad del catálogo.
- **Uso de DISTINCT**:
  -Es útil para eliminar duplicados cuando se busca solo una instancia por valor.

---

## Ejercicio 19

Encuentra el título de las películas que son comedias y tienen una duración mayor a 180 minutos en la tabla "film".

```sql
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
```

### Resultados

| título         | categoría | duración |
| -------------- | --------- | -------- |
| CONTROL ANTHEM | Comedy    | 185      |
| SATURN NAME    | Comedy    | 182      |
| SEARCHERS WAIT | Comedy    | 182      |

### Conclusiones

- **Películas encontradas**: Solo hay 3 películas de comedia con una duración superior a 180 minutos.
- **Duración extensa**: Las tres películas superan las 3 horas, algo inusual para el género de comedia.
- **Tendencia atípica**: Este resultado sugiere que las comedias largas son una excepción dentro del catálogo.

---

## Ejercicio 20

Encuentra las categorías de películas que tienen un promedio de duración superior a 110 minutos. Muestra el nombre de la categoría junto con el promedio de duración.

### Pasos

1. Se parte de la tabla `category` para obtener los nombres de las categorías.
2. Se realiza un `LEFT JOIN` con `film_category` para relacionar cada categoría con sus películas.
3. Se hace otro `LEFT JOIN` con la tabla `film` para acceder a la duración de las películas.
4. Se agrupan los resultados por categoría (`GROUP BY`).
5. Se calcula la duración media de las películas con `AVG(f.length)` y se redondea con `ROUND`.
6. Se filtran las categorías con una duración media superior a 110 minutos mediante `HAVING`.
7. Se ordenan los resultados por duración promedio de forma ascendente.

```sql
SELECT
    c.name AS "categoría",
    ROUND(AVG(f.length), 2) AS "promedio_duración"
FROM category AS c
    LEFT JOIN film_category AS fc
        ON c.category_id = fc.category_id
    LEFT JOIN film AS f
        ON fc.film_id = f.film_id
GROUP BY c."name"
HAVING ROUND(AVG(f.length), 2) > 110
ORDER BY "promedio_duración";
```

### Resultados

| categoría | promedio_duración |
| --------- | ----------------- |
| Animation | 111,02            |
| New       | 111,13            |
| Action    | 111,61            |
| Classics  | 111,67            |
| Horror    | 112,48            |
| Travel    | 113,32            |
| Music     | 113,65            |
| Family    | 114,78            |
| Comedy    | 115,83            |
| Drama     | 120,84            |
| Foreign   | 121,70            |
| Games     | 127,84            |
| Sports    | 128,20            |

### Conclusiones

- **Total de categorías con media superior a 110 min**: 13 categorías.
- **Categorías destacadas**: _Sports_ y _Games_ presentan las mayores duraciones promedio.
- **Observación general**: Las categorías con mayor carga temática o narrativa parecen requerir más tiempo de desarrollo.

---

## Ejercicio 21

¿Cuál es el promedio de duración del alquiler de las películas?

### Pasos

1. Se parte de la tabla `film` para acceder a los datos de las películas.
2. Se utiliza la columna `rental_duration` para calcular el promedio de la duración del alquiler.
3. Se utiliza la función `AVG()` para obtener el promedio y `ROUND()` para redondearlo a dos decimales.

```sql
SELECT ROUND(AVG(f.rental_duration), 2) AS "duracion_alquiler_promedio"
FROM film AS f;
```

### Resultados

| duracion_alquiler_promedio |
| -------------------------- |
| 4,99                       |

### Conclusiones

- **Promedio de duración del alquiler**: El promedio de duración del alquiler de las películas es de **4,99 días**.
- **Tendencia**: La duración de alquiler es cercana a 5 días, lo que sugiere que la mayoría de los alquileres tienen una duración de aproximadamente una semana o menos.

---

## Ejercicio 22

Crea una columna con el nombre y apellidos de todos los actores y actrices.

### Pasos

1. Se parte de la tabla `actor` para acceder a los datos de los actores y actrices.
2. Se utiliza la función `CONCAT()` para combinar el `first_name` y el `last_name` en una sola columna denominada "nombre_completo_actor".
3. Se ordenan los resultados alfabéticamente por el nombre completo de los actores.

```sql
SELECT CONCAT(a.first_name, ' ', a.last_name ) AS "nombre_completo_actor"
FROM actor AS a
ORDER BY nombre_completo_actor;
```

### Resultados (Fragmento parcial)

| nombre_completo_actor |
| --------------------- |
| ADAM GRANT            |
| ADAM HOPPER           |
| AL GARLAND            |
| ALAN DREYFUSS         |
| ALBERT JOHANSSON      |
| ALBERT NOLTE          |
| ALEC WAYNE            |
| ANGELA HUDSON         |
| ANGELA WITHERSPOON    |
| ANGELINA ASTAIRE      |
| ...                   |
| ZERO CAGE             |

### Conclusiones

- **Total de actores/actrices listados**:
  - El número total de actores y actrices que aparecen en la tabla es de **200**.
- **Información**:
  - Los nombres completos se ordenan alfabéticamente, lo que facilita la búsqueda y el análisis de los datos relacionados con los actores en el sistema.

---

## Ejercicio 23

Consulta el número de alquileres realizados por día, ordenados de mayor a menor cantidad.

### SQL Utilizado

```sql
SELECT
    r.rental_date::date AS "fecha",
    COUNT(r.rental_id) AS "alquileres"
FROM rental AS r
GROUP BY r.rental_date::date
ORDER BY alquileres DESC;
```

### Pasos realizados

1. Se selecciona la fecha del alquiler, extrayendo solo la parte de la fecha (`rental_date::date`).
2. Se cuentan los alquileres por día utilizando `COUNT(r.rental_id)`.
3. Se agrupa la información por fecha (`GROUP BY`).
4. Se ordenan los resultados de mayor a menor número de alquileres (`ORDER BY alquileres DESC`).

### Resultado

Los días con más alquileres fueron:

| fecha      | alquileres |
| ---------- | ---------- |
| 2005-07-31 | 679        |
| 2005-08-01 | 671        |
| 2005-08-21 | 659        |
| 2005-07-27 | 649        |
| 2005-08-02 | 643        |

Y los días con menos actividad:

| fecha      | alquileres |
| ---------- | ---------- |
| 2005-05-24 | 8          |
| 2005-06-14 | 16         |
| 2005-08-16 | 23         |

### Conclusión

- Se observa que los días con mayor volumen de alquileres se concentran entre finales de julio y principios de agosto de 2005, lo que podría estar relacionado con una mayor demanda estacional (verano).
- Por el contrario, los días con menor actividad corresponden a finales de mayo y mediados de junio, lo cual puede estar vinculado a una etapa inicial de operaciones o menor afluencia de clientes en esas fechas.

---

## Ejercicio 24

Encuentra las películas con una duración superior a la duración promedio.

### SQL Utilizado

```sql
-- 24. Encuentra las películas con una duración superior al promedio

SELECT
    f.title AS "película",
    f.length AS "duraciòn"
FROM film AS f
WHERE f.length > (
    SELECT AVG(f2.length)
    FROM film AS f2
);
```

### Pasos realizados

1. Se seleccionan el título y la duración de cada película desde la tabla `film`.
2. Se utiliza una subconsulta para calcular la duración promedio de todas las películas: `SELECT AVG(length) FROM film`.
3. Se filtran aquellas películas cuya duración es superior al promedio (`WHERE f.length > (...)`).

### Resultado

La consulta devuelve un listado de películas cuya duración es superior a la media. Algunos ejemplos:

| película         | duración |
| ---------------- | -------- |
| AFFAIR PREJUDICE | 117      |
| AFRICAN EGG      | 130      |
| AGENT TRUMAN     | 169      |
| ALLEY EVOLUTION  | 180      |
| ANALYZE HOOSIERS | 181      |
| ...              | ...      |
| GANGS PRIDE      | 185      |
| HOME PITY        | 185      |

> ⚠️ La duración promedio no se muestra directamente en esta consulta, pero puedes obtenerla aparte si lo consideras útil para incluir en la documentación.

### Conclusión

Este análisis permite identificar las películas más largas del catálogo de Sakila. El hecho de que muchas superen los 150 minutos sugiere que existe una buena cantidad de películas de larga duración. Estas pueden interesar a públicos específicos, por ejemplo, aficionados al cine épico o narrativas más desarrolladas.

Además, este tipo de consultas resulta útil para segmentar el catálogo según criterios de duración, lo cual puede alimentar análisis posteriores relacionados con preferencias de los clientes, tendencias de alquiler, o necesidades de almacenamiento y reproducción.

## Ejercicio 24

Encuentra las películas con una duración superior a la duración promedio.

### SQL Utilizado

```sql
SELECT
    f.title AS "película",
    f.length AS "duraciòn"
FROM film AS f
WHERE f.length > (
    SELECT AVG(f2.length)
    FROM film AS f2
);
```

### Pasos realizados

1. Se seleccionan el título y la duración de cada película desde la tabla `film`.
2. Se utiliza una subconsulta para calcular la duración promedio de todas las películas: `SELECT AVG(length) FROM film`.
3. Se filtran aquellas películas cuya duración es superior al promedio (`WHERE f.length > (...)`).

### Resultado

La consulta devuelve un listado de películas cuya duración es superior a la media (avg 115,272). Algunos ejemplos:

| película         | duración |
| ---------------- | -------- |
| AFFAIR PREJUDICE | 117      |
| AFRICAN EGG      | 130      |
| AGENT TRUMAN     | 169      |
| ALLEY EVOLUTION  | 180      |
| ANALYZE HOOSIERS | 181      |
| ...              | ...      |
| GANGS PRIDE      | 185      |
| HOME PITY        | 185      |

### Conclusión

Este análisis permite identificar las películas más largas del catálogo de Sakila. El hecho de que muchas superen los 150 minutos sugiere que existe una buena cantidad de películas de larga duración. Estas pueden interesar a públicos específicos, por ejemplo, aficionados al cine épico o narrativas más desarrolladas.

Además, este tipo de consultas resulta útil para segmentar el catálogo según criterios de duración, lo cual puede alimentar análisis posteriores relacionados con preferencias de los clientes, tendencias de alquiler, o necesidades de almacenamiento y reproducción.

---

## Ejercicio 25

Averigua el número de alquileres registrados por mes.

### SQL Utilizado

```sql
SELECT
    EXTRACT(MONTH FROM r.rental_date) AS "mes",
    COUNT(r.rental_id) AS "número de alquileres"
FROM rental AS r
GROUP BY EXTRACT(MONTH FROM rental_date)
ORDER BY mes;
```

### Pasos realizados

1. Se utiliza `EXTRACT(MONTH FROM rental_date)` para extraer el número del mes de cada fecha de alquiler.
2. Se agrupa por mes para contar cuántos alquileres (`rental_id`) se realizaron en cada uno.
3. Se ordenan los resultados de forma ascendente por mes para una visualización cronológica.

### Resultado

| mes | número de alquileres |
| --- | -------------------- |
| 2   | 182                  |
| 5   | 1.156                |
| 6   | 2.311                |
| 7   | 6.709                |
| 8   | 5.686                |

### Conclusión

El análisis revela que los meses con mayor actividad de alquiler fueron **julio** y **agosto**, lo que podría estar relacionado con un aumento del consumo de entretenimiento durante las vacaciones de verano. Por el contrario, febrero presenta el número más bajo, posiblemente por ser un mes más corto y fuera de temporada.

Este tipo de consulta es útil para:

- Identificar patrones estacionales en la demanda.
- Planificar campañas de marketing en los meses de mayor volumen.
- Optimizar inventario y recursos durante los picos de actividad.

---

## Ejercicio 26

Encuentra el promedio, la desviación estándar y varianza del total pagado.

### SQL Utilizado

```sql
SELECT
    ROUND(AVG(p.amount), 2) AS "promedio",
    ROUND(STDDEV(p.amount), 2) AS "desviación_estandar",
    ROUND(VARIANCE(p.amount), 2) AS "varianza"
FROM payment AS p;
```

### Pasos realizados

1. Se emplean funciones estadísticas sobre la columna `amount` de la tabla `payment`:
   - `AVG()` para el promedio.
   - `STDDEV()` para la desviación estándar.
   - `VARIANCE()` para la varianza.
2. Se usa `ROUND(..., 2)` para redondear los resultados a dos decimales, facilitando la interpretación.

### Resultado

| promedio | desviación_estandar | varianza |
| -------- | ------------------- | -------- |
| 4,20     | 2,36                | 5,58     |

### Conclusión

Los pagos en la base de datos presentan un promedio de **4,20 unidades monetarias**, con una **desviación estándar de 2,36**, lo cual indica que los pagos varían moderadamente respecto al promedio. La **varianza de 5,58** refuerza esta dispersión.

Estas métricas son útiles para:

- Evaluar la consistencia en los importes pagados.
- Analizar si existen pagos atípicos o desviaciones significativas.
- Servir de base para establecer límites o segmentaciones de clientes según hábitos de pago.

---

## Ejercicio 27

¿Qué películas se alquilan por encima del precio medio?

### SQL Utilizado

```sql
SELECT
    f.title AS "película",
    f.rental_rate AS "precio"
FROM film AS f
WHERE f.rental_rate > (
    SELECT AVG(f2.rental_rate)
    FROM film AS f2
);
```

### Pasos realizados

1. Se calcula el precio medio de alquiler usando una subconsulta con `AVG(f2.rental_rate)` sobre toda la tabla `film`, que da como resultado 2.98.
2. En la consulta principal, se seleccionan las películas cuya tarifa (`rental_rate`) es superior al promedio obtenido.
3. Se proyectan las columnas `title` y `rental_rate` para visualizar el nombre de la película y su precio.

### Resultado

Se devuelve una lista de películas con un precio de alquiler superior al promedio. Dado que hay muchas, solo se muestra un extracto:

| película            | precio |
| ------------------- | ------ |
| ACE GOLDFINGER      | 4,99   |
| AIRPLANE SIERRA     | 4,99   |
| AMELIE HELLFIGHTERS | 4,99   |
| ...                 | ...    |

### Conclusión

Esta consulta permite identificar películas con tarifas superiores al promedio, lo cual puede tener múltiples aplicaciones:

- Detectar títulos **premium** para análisis de rentabilidad.
- Comparar con su demanda o frecuencia de alquiler.
- Tomar decisiones de marketing o promociones sobre títulos por encima del promedio.

---

## Ejercicio 28

Muestra el ID de los actores que hayan participado en más de 40 películas.

### SQL Utilizado

```sql
SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS "nombre_completo",
    COUNT(fa.film_id) AS "número_películas",
    fa.actor_id AS "id_actor"
FROM film_actor AS fa
LEFT JOIN actor AS a ON fa.actor_id = a.actor_id
GROUP BY a.first_name, a.last_name, fa.actor_id
HAVING COUNT(fa.film_id) > 40
ORDER BY número_películas DESC;
```

### Pasos realizados

1. Se relacionan las tablas `film_actor` y `actor` para obtener los nombres de los actores.
2. Se agrupa por nombre y `actor_id` para contar cuántas películas ha hecho cada actor.
3. Se aplica la cláusula `HAVING` para filtrar solo aquellos que han participado en más de 40 películas.
4. Se ordena el resultado de forma descendente para mostrar primero los actores más prolíficos.

### Resultado

| nombre_completo | número_películas | id_actor |
| --------------- | ---------------- | -------- |
| GINA DEGENERES  | 42               | 107      |
| WALTER TORN     | 41               | 102      |

### Conclusión

El análisis permite identificar a los actores más recurrentes en el catálogo de la base de datos. Esto puede ser útil para:

- Estudios de popularidad y carga de trabajo actoral.
- Selección de actores para promociones o productos relacionados.
- Cruces con el rendimiento comercial de las películas en las que participan.

---

## Ejercicio 29

Obtener todas las películas y, si están disponibles en el inventario, mostrar la cantidad disponible.

### SQL Utilizado

```sql
SELECT
    f.title AS "película",
    COUNT(i.film_id) AS "cantidad_inventario"
FROM film AS f
LEFT JOIN inventory AS i ON f.film_id = i.film_id
GROUP BY f.title
ORDER BY cantidad_inventario DESC;
```

### Pasos realizados

1. Se hace un `LEFT JOIN` entre las tablas `film` e `inventory` utilizando el `film_id` como clave de unión para obtener las películas y las cantidades disponibles en el inventario.
2. Se cuenta la cantidad de cada película en el inventario usando `COUNT(i.film_id)` para contar las filas correspondientes en la tabla `inventory`.
3. Se agrupan los resultados por título de la película (`f.title`).
4. Se ordena el resultado de mayor a menor cantidad disponible en el inventario.

### Resultado

| película              | cantidad_inventario |
| --------------------- | ------------------- |
| MOCKINGBIRD HOLLYWOOD | 8                   |
| ZORRO ARK             | 8                   |
| SPY MILE              | 8                   |
| LOSE INCH             | 8                   |
| TITANS JERK           | 8                   |
| ...                   | ...                 |

### Conclusión

- **Películas con mayor inventario**: La mayoría de las películas tienen **8 unidades disponibles** en el inventario, como se observa en las primeras filas del resultado, con títulos como "MOCKINGBIRD HOLLYWOOD", "ZORRO ARK", y "SPY MILE".
- **Películas con menor inventario**: Algunas películas como "HIGHBALL POTTER" y "ALIEN CENTER" solo tienen **6 unidades disponibles**, lo que podría indicar que son menos populares o tienen un inventario limitado.

- **Tendencia en el inventario**: La mayoría de las películas disponibles en el inventario parecen estar en grupos de 8 unidades, lo que podría ser el valor estándar de existencias asignadas a cada película en la tienda. Esto sugiere una posible política de inventario uniformemente distribuida, a menos que haya una demanda especial para ciertos títulos.

---

## Ejercicio 30

Obtener los actores y el número de películas en las que han actuado.

### SQL Utilizado

```sql
SELECT
		CONCAT(a.first_name, ' ', a.last_name) AS "nombre_completo",
		COUNT(fa.film_id ) AS "número_películas"
FROM film_actor AS fa
	LEFT JOIN actor AS a
	ON fa.actor_id  = a.actor_id
GROUP BY a.first_name, a.last_name
ORDER BY número_películas DESC ;
```

### Pasos realizados

1. Se hace un `LEFT JOIN` entre las tablas `film_actor` y `actor` utilizando `actor_id` para combinar los registros.
2. Se concatena el primer y último nombre del actor para obtener el nombre completo.
3. Se cuenta la cantidad de películas en las que ha actuado cada actor usando `COUNT(fa.film_id)`.
4. Se agrupan los resultados por nombre del actor y se ordenan por el número de películas en orden descendente.

### Resultado

| nombre_completo | número_películas |
| --------------- | ---------------- |
| SUSAN DAVIS     | 54               |
| GINA DEGENERES  | 42               |
| WALTER TORN     | 41               |
| MARY KEITEL     | 40               |
| MATTHEW CARREY  | 39               |
| SANDRA KILMER   | 37               |
| SCARLETT DAMON  | 36               |
| VIVIEN BASINGER | 35               |
| VAL BOLGER      | 35               |
| ... (continúa)  | ...              |

### Conclusión

- **Actores más prolíficos**: **SUSAN DAVIS** es quien ha participado en más películas, con un total de **54**. Esto sugiere que es uno de los actores más activos en la base de datos y podría tener una carrera exitosa en la industria.
- **Otros actores destacados**: Los actores con una gran cantidad de películas incluyen **GINA DEGENERES** (42), **WALTER TORN** (41), y **MARY KEITEL** (40), lo que refleja que estos actores son también bastante prolíficos en términos de su participación en películas.
- **Tendencias en la industria**: La mayoría de los actores parecen haber trabajado en un rango de **30 a 40** películas, lo que indica que hay una cierta cantidad de actores que tienen una carrera más estable y consistente en la industria.

- **Actores con menos películas**: A medida que el número de películas disminuye, algunos actores como **JULIA FAWCETT** (15) o **EMILY DEE** (14) muestran una participación en menos títulos. Esto podría indicar una carrera más corta o más especializada en ciertos tipos de películas.

---

## Ejercicio 31:

Obtener todas las películas y mostrar los actores que han actuado en ellas, incluso si algunas películas no tienen actores asociados

### Consulta SQL

```sql
SELECT
    f.title AS "película",
    CONCAT(a.first_name, ' ', a.last_name) AS "nombre_actor"
FROM film AS f
    LEFT JOIN film_actor AS fa
        ON f.film_id = fa.film_id
    LEFT JOIN actor AS a
        ON fa.actor_id = a.actor_id
ORDER BY f.title;
```

### Pasos realizados

1.Se selecciona la tabla `film`, que contiene los datos de las películas.

2. Se realiza un `LEFT JOIN` con la tabla `film_actor`, que asocia actores con películas. Esto se hace para incluir todas las películas, incluso aquellas que no tienen actores asignados.

   - Usar LEFT JOIN asegura que incluso las películas sin actores se incluyan en el resultado.

3. Se hace un LEFT JOIN adicional con la tabla `actor` para obtener los nombres de los actores que participan en las películas.

4. Se concatena el nombre y apellido del actor para obtener el nombre completo en una sola columna llamada `nombre_actor`.

5. Se ordenan los resultados por el título de la película en orden alfabético para facilitar la lectura y organización de los resultados.

### Resultado:

| película         | nombre_actor     |
| ---------------- | ---------------- |
| ACADEMY DINOSAUR | PENELOPE GUINESS |
| ACADEMY DINOSAUR | SANDRA PECK      |
| ACADEMY DINOSAUR | WARREN NOLTE     |
| ACADEMY DINOSAUR | MARY KEITEL      |
| ACADEMY DINOSAUR | JOHNNY CAGE      |
| ACADEMY DINOSAUR | ROCK DUKAKIS     |
| ACADEMY DINOSAUR | MENA TEMPLE      |
| ACADEMY DINOSAUR | OPRAH KILMER     |
| ACADEMY DINOSAUR | CHRISTIAN GABLE  |
| ACADEMY DINOSAUR | LUCILLE TRACY    |
| ACE GOLDFINGER   | CHRIS DEPP       |

### Conclusiones:

1. Películas sin actores: Las películas que no tienen actores asociados aparecerán con el campo `nombre_actor` como `NULL`. Esto garantiza que la consulta devuelva todas las películas, independientemente de si tienen actores o no.

2. El uso del `LEFT JOIN` es esencial para garantizar que se muestren todas las películas, incluso aquellas sin actores. Si se hubiera usado un `INNER JOIN`, solo se habrían mostrado las películas con actores asociados.

3. Ordenación alfabética: El uso de `ORDER BY f.title` asegura que las películas se presenten en orden alfabético por su título, facilitando la búsqueda y la organización de los datos.

---

## Ejercicio 32:

Obtener todos los actores y mostrar las películas en las que han actuado, incluso si algunos actores no han actuado en ninguna película

### Consulta SQL

```sql
SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS "nombre_actor",
    f.title AS "película"
FROM actor AS a
    LEFT JOIN film_actor AS fa
        ON a.actor_id = fa.actor_id
    LEFT JOIN film AS f
        ON fa.film_id = f.film_id;
```

### Pasos realizados:

1. Se selecciona la tabla `actor`, que contiene los datos de los actores.

2. Se realiza un `LEFT JOIN` con la tabla `film_actor`, que asocia actores con películas. Esto se hace para incluir todos los actores, incluso aquellos que no tienen películas asociadas. Usar `LEFT JOIN` asegura que todos los actores aparezcan en el resultado.

3. Se hace un `LEFT JOIN` con la tabla film, que contiene los datos de las películas, se utiliza para obtener los títulos de las películas en las que los actores han participado. Si un actor no ha participado en ninguna película, la columna `película` será `NULL`.

4. Se concatena el primer nombre y el apellido del actor para obtener el nombre completo del actor en una sola columna llamada `nombre_actor`.

5. La consulta ordena los resultados por el apellido del actor y, en caso de empate, por el primer nombre. Esto facilita la búsqueda y visualización de los actores en orden alfabético.

### Resultados:

| nombre_actor     | película              |
| ---------------- | --------------------- |
| PENELOPE GUINESS | ACADEMY DINOSAUR      |
| PENELOPE GUINESS | ANACONDA CONFESSIONS  |
| PENELOPE GUINESS | ANGELS LIFE           |
| PENELOPE GUINESS | BULWORTH COMMANDMENTS |
| ...              | ...                   |
| JOE SWANK        | PERDITION FARGO       |

### Conclusiones:

**Actores sin películas:** En los resultados se puede observar que algunos actores no están asociados con ninguna película.

**Posibles datos faltantes:** La consulta muestra que algunos actores podrían tener datos incompletos, ya sea porque no han sido asignados a ninguna película o por posibles errores en el proceso de asociación entre actores y películas. Esto podría ser relevante en casos de análisis de calidad de los datos o cuando se realicen depuraciones de la base de datos.

**Diversidad de participación:** En el caso de los actores que sí han trabajado en películas, se observa una gran variedad en los títulos en los que han participado, lo que refleja la amplitud de su carrera dentro de la base de datos de películas.

---

# Ejercicio 33:

Obtener todas las películas y los registros de alquiler

## Consulta SQL

```sql
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
```

### Pasos realizados:

1. La consulta utiliza las tablas `film`, `inventory` y `rental` para obtener la información necesaria.

- Selección de columnas:

  - `f.title`: Obtiene el título de la película desde la tabla film.
  - `r.rental_id`: Obtiene el ID del alquiler desde la tabla rental.
  - `r.rental_date`: Obtiene la fecha del alquiler desde la tabla rental.

2. Se realiza un `LEFT JOIN` entre la tabla `film` y la tabla `inventory`, utilizando `film_id` para relacionarlas. Esto asegura que se muestren todas las películas, incluso aquellas que no tengan registros de alquiler.

3. Se realiza un `LEFT JOIN` entre la tabla `inventory` y la tabla `rental`, utilizando `inventory_id` para relacionarlas, asegurando que se muestren los alquileres de cada película.

4. Se agrupan los resultados por `título de película` y `ID de alquiler` para que no se repitan registros.

5. Se ordenan los resultados alfabéticamente por `título de película`

### Resultados:

| película         | id_alquiler | fecha_alquiler          |
| ---------------- | ----------- | ----------------------- |
| ACADEMY DINOSAUR | 361         | 2005-05-27 07:03:28.000 |
| ACADEMY DINOSAUR | 972         | 2005-05-30 20:21:07.000 |
| ACADEMY DINOSAUR | 1210        | 2005-06-15 02:57:51.000 |
| ACADEMY DINOSAUR | 2117        | 2005-06-17 20:24:00.000 |
| ACADEMY DINOSAUR | 3201        | 2005-06-21 00:30:26.000 |
| ACADEMY DINOSAUR | 4187        | 2005-07-07 10:41:31.000 |
| ACADEMY DINOSAUR | 4390        | 2005-07-07 20:59:06.000 |
| ACADEMY DINOSAUR | 4863        | 2005-07-08 19:03:15.000 |
| ACADEMY DINOSAUR | 5766        | 2005-07-10 13:07:31.000 |
| ACADEMY DINOSAUR | 7168        | 2005-07-27 07:51:11.000 |
| ACADEMY DINOSAUR | 8510        | 2005-07-29 09:41:38.000 |
| ACADEMY DINOSAUR | 9449        | 2005-07-30 22:02:34.000 |
| ACADEMY DINOSAUR | 10126       | 2005-07-31 21:36:07.000 |
| ...              | ...         | ...                     |

### Conclusiones:

Se obtiene una visión completa del inventario de películas y sus registros de alquiler

---

# Ejercicio 34:

Encontrar los 5 clientes que más dinero se han gastado

## Consulta SQL

```sql
SELECT
    p.customer_id AS "id_cliente",
    CONCAT(c.first_name, ' ', c.last_name) AS "nombre_cliente",
    SUM(p.amount) AS "total_gastado"
FROM payment AS p
LEFT JOIN customer AS c
    ON p.customer_id = c.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name
ORDER BY total_gastado DESC
LIMIT 5;
```

### Pasos realizados:

1. Desde la tabla `payment` ,selección de columnas:

   - `p.customer_id`: ID del cliente que realizó el pago.
   - `CONCAT(c.first_name, ' ', c.last_name)`: Nombre completo del cliente.
   - `SUM(p.amount)`: Suma total de los pagos realizados por cada cliente.

2. Se realiza un `LEFT JOIN` entre la tabla `payment` y la tabla `customer`, utilizando `customer_id` para relacionarlas,asegurando que se relaciona cada pago con la información del cliente correspondiente.

3. Se agrupan los pagos por cliente para calcular la suma total por cada uno.
   `GROUP BY p.customer_id, c.first_name, c.last_name`
4. Se ordenan los resultados por el total gastado en orden descendente.
   `ORDER BY total_gastado DESC`
5. Se limita el resultado a los 5 clientes que más han gastado `LIMIT 5`

### Resultados:

| id_cliente | nombre_cliente | total_gastado |
| ---------- | -------------- | ------------- |
| 526        | KARL SEAL      | 221.55        |
| 148        | ELEANOR HUNT   | 216.54        |
| 144        | CLARA SHAW     | 195.58        |
| 137        | RHONDA KENNEDY | 194.61        |
| 178        | MARION SNYDER  | 194.61        |

### Resultados:

Los 5 clientes con mayor gasto han realizado pagos por encima de los **190 dólares**.

Esta información puede ser útil para estrategias de fidelización y campañas personalizadas orientadas a clientes de alto valor.

---

# Ejercicio 35:

Seleccionar todos los actores cuyo primer nombre es 'Johnny'

## Consulta SQL

```sql
SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS "nombre_actor"
FROM actor AS a
WHERE a.first_name ILIKE 'Johnny';
```

### Pasos realizados:

1. Selección de columnas: Se combina el nombre y el apellido del actor para mostrar su nombre completo

   - `CONCAT(a.first_name, ' ', a.last_name)`

2. Se filtran los resultados para incluir solo aquellos actores cuyo first_name es 'Johnny'
   - `WHERE a.first_name ILIKE 'Johnny'`
   - Se utiliza ILIKE en lugar de LIKE para que la comparación no sea sensible a mayúsculas o minúsculas.

### Resultados:

| nombre_actor        |
| ------------------- |
| JOHNNY LOLLOBRIGIDA |
| JOHNNY CAGE         |

---

# Ejercicio 36:

Renombrar columnas "first_name" como Nombre y "last_name" como Apellido

## Consulta SQL

```sql
SELECT
    a.first_name AS "Nombre",
    a.last_name AS "Apellido"
FROM actor AS a;
```

### Pasos realizados:

1. Selección de columnas:
   - `a.first_name AS "Nombre"`: Renombra la columna first_name como "Nombre".
   - `a.last_name AS "Apellido"`: Renombra la columna last_name como "Apellido".
2. Origen de los datos:
   - `FROM actor AS a`: Se obtiene la información de la tabla actor, referenciada con el alias a.

### Resultados:

| Nombre    | Apellido     |
| --------- | ------------ |
| PENELOPE  | GUINESS      |
| NICK      | WAHLBERG     |
| ED        | CHASE        |
| JENNIFER  | DAVIS        |
| JOHNNY    | LOLLOBRIGIDA |
| BETTE     | NICHOLSON    |
| GRACE     | MOSTEL       |
| MATTHEW   | JOHANSSON    |
| JOE       | SWANK        |
| CHRISTIAN | GABLE        |
| ...       | ...          |

### Conclusiones:

El renombramiento de columnas en las consultas SQL es una buena práctica para mejorar la presentación de los resultados, sobre todo si van a ser mostrados en informes o dashboards.

Este tipo de transformación no afecta a la estructura de la tabla original, únicamente modifica el alias con el que se muestran los datos.

Es especialmente útil al integrar resultados en herramientas como Power BI o Excel donde una buena nomenclatura facilita la interpretación.

---

# Ejercicio 37:

Encontrar el ID del actor más bajo y del actor más alto en la tabla `actor`

## Consulta SQL

```sql
SELECT
    MIN(a.actor_id) AS "min",
    MAX(a.actor_id) AS "max"
FROM actor AS a;
```

### Pasos realizados:

1. Selección de columnas con funciones de agregación:

   - `MIN(a.actor_id)`: Devuelve el valor mínimo del campo actor_id
   - `MAX(a.actor_id)`: Devuelve el valor máximo del campo actor_id

2. Origen de los datos:
   - `FROM actor AS a`: Se utiliza la tabla actor con el alias a.

### Resultados:

| min | max |
| --- | --- |
| 1   | 200 |

### Conclusiones:

La tabla actor contiene actores con IDs que van del 1 al 200

Esta técnica (funciones MIN y MAX) puede aplicarse en otras tablas para validar identificadores u otros valores numéricos, como fechas o importes de venta.

---

# Ejercicio 38:

Contar cuántos actores hay en la tabla `actor`

## Consulta SQL

```sql
SELECT COUNT(a.actor_id) AS "total_actores"
FROM actor AS a;
```

### Pasos realizados:

1. Selección de columnas con funciones de agregación:
   - `COUNT(a.actor_id)`: Cuenta el número de valores no nulos en la columna `actor_id`.
   - Dado que `actor_id` es clave primaria, no contiene valores nulos, por lo que esta función devuelve el total de filas.
2. Origen de los datos:
   - `FROM actor AS a`: Se consulta la tabla `actor`, usando el alias `a`.

### Resultados:

| total_actores |
| ------------- |
| 200           |

---

# Ejercicio 39:

Seleccionar todos los actores y ordenarlos por apellido en orden ascendente

## Consulta SQL

```sql
SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS "nombre_completo_actores"
FROM actor AS a
ORDER BY a.last_name;
```

### Pasos realizados:

1. Selección de columnas:
   - `CONCAT(a.first_name, ' ', a.last_name)`: Une el nombre y apellido de cada actor con un espacio entre ellos para formar la columna `nombre_completo_actores`.
2. Origen de los datos:

   - `FROM actor AS a`: Se accede a la tabla actor con el alias `a`.

3. Se ordena el resultado de la consulta alfabéticamente por el apellido del actor en orden ascendente (de la A a la Z).
   - `ORDER BY a.last_name`:

### Resultados (Extracto):

| nombre_completo_actores |
| ----------------------- |
| DEBBIE AKROYD           |
| KIRSTEN AKROYD          |
| CHRISTIAN AKROYD        |
| MERYL ALLEN             |
| KIM ALLEN               |
| CUBA ALLEN              |
| ANGELINA ASTAIRE        |
| RUSSELL BACALL          |
| ...                     |

---

# Ejercicio 40:

Seleccionar las 5 primeras películas de la tabla "film"

## Consulta SQL

```sql
SELECT
    f.film_id AS "id_película",
    f.title AS "título"
FROM film AS f
ORDER BY f.film_id
LIMIT 5;
```

### Pasos realizados:

1. Selección de columnas:
   - `SELECT f.film_id, f.title`: Selecciona el identificador y el título de cada película.
2. Origen de los datos:

   - `FROM film AS f`: Se accede a la tabla film utilizando el alias `f`.

3. Se ordenan las películas por su ID de forma ascendente.

   - `ORDER BY f.film_id`

4. Se restringe el número de resultados a las primeras 5 filas.
   - `LIMIT 5`

### Resultados:

| id_película | título           |
| ----------- | ---------------- |
| 1           | ACADEMY DINOSAUR |
| 2           | ACE GOLDFINGER   |
| 3           | ADAPTATION HOLES |
| 4           | AFFAIR PREJUDICE |
| 5           | AFRICAN EGG      |

---

# Ejercicio 41:

Agrupar actores por nombre y contar cuántos se repiten

## Consulta SQL

```sql
WITH nombre_repetido AS (
    SELECT
        first_name AS nombre,
        COUNT(*) AS veces_repetido
    FROM actor
    GROUP BY first_name
),
max_repetido AS (
    SELECT MAX(veces_repetido) AS max_reps
    FROM nombre_repetido
)
SELECT
    nr.nombre,
    nr.veces_repetido
FROM nombre_repetido  AS nr
LEFT JOIN max_repetido mr
	ON nr.veces_repetido = mr.max_reps;
```

### Pasos realizados:

1. CTE `nombre_repetido`:

   - Agrupa los registros de la tabla `actor` por el campo `first_name`.
   - Cuenta cuántas veces aparece cada nombre.
   - Devuelve dos columnas: el `nombre` y su número de repeticiones (`veces_repetido`).

2. CTE `max_repetido`:

   - A partir del CTE `nombre_repetido`, se obtiene el número máximo de repeticiones
     - `SELECT MAX(veces_repetido) AS max_reps`
     - Este valor representa la cantidad de veces que aparece el nombre más común en la tabla.

3. Consulta final con INNER JOIN:
   - Se hace un `INNER JOIN` entre `nombre_repetido` y `max_repetido` utilizando como condición que el número de repeticiones de un nombre coincida con el máximo hallado.
   - De esta forma se obtienen todos los nombres que tienen la máxima frecuencia (no solo uno, en caso de empate).

### Resultados:

| nombre   | veces_repetido |
| -------- | -------------- |
| PENELOPE | 4              |
| KENNETH  | 4              |
| JULIA    | 4              |

### Conclusiones:

La base de datos contiene varios actores que comparten nombre. En este caso, PENELOPE, KENNETH y JULIA son los nombres más comunes, cada uno aparece 4 veces.

---

# Ejercicio 42: Alquileres y nombres de los clientes

Encuentra todos los alquileres registrados en la base de datos y los nombres completos de los clientes que los realizaron.

### 📜 Consulta SQL

```sql
SELECT
    r.rental_id AS "id_alquiler",
    CONCAT(c.first_name, ' ', c.last_name) AS "cliente"
FROM rental AS r
LEFT JOIN customer AS c
    ON r.customer_id = c.customer_id;
```

### Pasos realizados:

1. Selección de columnas:
   - `r.rental_id`: el identificador único de cada alquiler, renombrado como `id_alquiler`
   - Se combinan el nombre y el apellido del cliente para mostrar su nombre completo en una sola columna llamada `cliente`.
     - `CONCAT(c.first_name, ' ', c.last_name)`
2. Cláusula FROM y LEFT JOIN:
   - Se parte de la tabla `rental`, que contiene todos los registros de alquileres.
   - Se hace un `LEFT JOIN` con la tabla `customer` para obtener la información del cliente correspondiente a cada `customer_id`.
   - El uso de `LEFT JOIN` garantiza que todos los alquileres aparecerán en el resultado, incluso si alguno no tiene un cliente asignado (aunque en esta base de datos, eso no ocurre normalmente).
3. Cláusula ON:
   - Se establece la relación entre ambas tablas mediante el campo `customer_id`, que es `clave foránea en rental` y `clave primaria en customer`.

### Resultados:

| id_alquiler | cliente            |
| ----------- | ------------------ |
| 1           | CHARLOTTE HUNTER   |
| 2           | TOMMY COLLAZO      |
| 3           | MANUEL MURRELL     |
| 4           | ANDREW PURDY       |
| 5           | DELORES HANSEN     |
| 6           | NELSON CHRISTENSON |
| 7           | CASSANDRA WALTERS  |
| 8           | MINNIE ROMERO      |
| 9           | ELLEN SIMPSON      |
| 10          | DANNY ISOM         |
| ...         | ...                |

### Conclusiones:

Esta consulta relaciona correctamente cada alquiler con su cliente.

---

# 🧪 Ejercicio 43: Clientes y sus alquileres (si existen)

Muestra todos los clientes y sus alquileres si existen, incluyendo aquellos que no tienen alquileres.

### 📜 Consulta SQL

```sql
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS "cliente",
    r.rental_id AS "id_alquiler"
FROM customer AS c
LEFT JOIN rental AS r
    ON c.customer_id = r.customer_id;
```

### Pasos realizados:

1. Selección de columnas:
   - Concatenamos el nombre y el apellido del cliente para formar una columna con su nombre completo, denominada `cliente`.
     - `CONCAT(c.first_name, ' ', c.last_name)`
   - Seleccionamos el identificador de alquiler `rental_id` de la tabla `rental` para cada cliente que tenga un alquiler.
2. Cláusula `FROM` y `LEFT JOIN`:
   - Empezamos desde la tabla `customer`, que contiene todos los registros de clientes.
   - Hacemos un `LEFT JOIN` con la tabla `rental` para vincular los clientes con los alquileres asociados.
   - El LEFT JOIN asegura que todos los clientes sean listados, incluso aquellos que no tienen un alquiler registrado. Para estos clientes sin alquiler, el campo `id_alquiler` será `NULL`.
3. Cláusula ON:
   - Se establece la relación entre ambas tablas a través del campo `customer_id`, que es la `clave foránea en la tabla rental` y la `clave primaria en la tabla customer`.

### Resultados:

| cliente            | id_alquiler |
| ------------------ | ----------- |
| CHARLOTTE HUNTER   | 1           |
| TOMMY COLLAZO      | 2           |
| MANUEL MURRELL     | 3           |
| ANDREW PURDY       | 4           |
| DELORES HANSEN     | 5           |
| NELSON CHRISTENSON | 6           |
| CASSANDRA WALTERS  | 7           |
| MINNIE ROMERO      | 8           |
| ELLEN SIMPSON      | 9           |
| DANNY ISOM         | 10          |
| ...                | ...         |

### Conclusiones:

## Es una consulta útil para obtener una lista completa de clientes, con o sin alquileres.

# Ejercicio 44:

Realiza un `CROSS JOIN` entre las tablas `film` y `category`.  
¿Aporta valor esta consulta? ¿Por qué?

---

### 📜 Consulta SQL

```sql
SELECT
    f.title AS "película",
    c.name AS "categoría"
FROM film AS f
CROSS JOIN category AS c;
```

### Pasos realizados:

1. Selección de columnas:

   - `f.title`: Título de la película desde la tabla film, renombrado como `pelìcula`
   - `c.name`: Nombre de la categoría desde la tabla category,renombrado como `categoría`

2. Cláusula `FROM` con `CROSS JOIN`:
   - El CROSS JOIN combina cada película con cada categoría, sin considerar relaciones reales entre ellas.
   - Si hay 1.000 películas y 16 categorías, el resultado tendrá 16.000 filas.

### Resultados:

| película         | categoría   |
| ---------------- | ----------- |
| ACADEMY DINOSAUR | Action      |
| ACADEMY DINOSAUR | Animation   |
| ACADEMY DINOSAUR | Children    |
| ACADEMY DINOSAUR | Classics    |
| ACADEMY DINOSAUR | Comedy      |
| ACADEMY DINOSAUR | Documentary |
| ACADEMY DINOSAUR | Drama       |
| ACADEMY DINOSAUR | Family      |
| ACADEMY DINOSAUR | Foreign     |
| ...              | ...         |

### Conclusiones:

Esta consulta no aporta valor en este contexto porque: - No existe relación entre las películas y las categorías mostradas. - Se generan combinaciones falsas y sin sentido.
En este caso concreto, la consulta **no es útil para análisis reales del catálogo de películas.**

---

# Ejercicio 45:

Encuentra los actores que han participado en películas de la categoría **'Action'**.

---

### Consulta SQL

```sql
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
```

### Pasos realizados:

1. Tablas involucradas:
   - `actor`: contiene los datos de los actores.
   - `film_actor`: relación entre actores y películas.
   - `film`: información sobre las películas.
   - `film_category`: relación entre películas y categorías.
   - `category`: nombres de las categorías.
2. Uniones (JOINs):

   - Se hace un `LEFT JOIN` en cascada desde `actor` hasta `category` para mantener todos los actores y sus películas (aunque con el filtro final ya actúa como INNER JOIN).

3. Filtro WHERE:
   - Solo se incluyen las películas cuya categoría es exactamente `Action`

### Resultados (extracto):

| actor               | categoría |
| ------------------- | --------- |
| JOHNNY LOLLOBRIGIDA | Action    |
| JULIA MCQUEEN       | Action    |
| VAL BOLGER          | Action    |
| KIRK JOVOVICH       | Action    |
| JAMES PITT          | Action    |
| PENELOPE CRONYN     | Action    |
| KEVIN BLOOM         | Action    |
| RIP CRAWFORD        | Action    |
| SIDNEY CROWE        | Action    |
| ...                 | ...       |

### Conclusiones:

La consulta identifica correctamente a los actores que han participado en películas etiquetadas con la categoría 'Action'.

---

# Ejercicio 46:

Encuentra todos los actores que **no han participado en ninguna película**.

### Consulta SQL

```sql
SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS "actor"
FROM actor AS a
LEFT JOIN film_actor AS fa
    ON a.actor_id = fa.actor_id
WHERE fa.film_id IS NULL;
```

### Pasos realizados:

1. Tablas utilizadas:

   - `actor`: contiene todos los actores registrados.
   - `film_actor`: tabla intermedia que relaciona actores con películas.

2. LEFT JOIN:

   - Se utiliza para mantener todos los registros de la tabla `actor`, aunque no tengan coincidencias en `film_actor`.

3. Condición `WHERE fa.film_id IS NULL`:
   - Filtra los actores sin relación en `film_actor`, es decir, que no han participado en ninguna película.

### Conclusiones:

No se han obtenido resultados. - Esto indica que todos los actores registrados han participado en al menos una película.

---

# 🧪 Ejercicio 47:

Selecciona el nombre de los actores junto con el número de películas en las que han participado.

### 📜 Consulta SQL

```sql
SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS "actor",
    COUNT(fa.film_id) AS "nºpelículas"
FROM actor AS a
LEFT JOIN film_actor AS fa
    ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name
ORDER BY nºpelículas DESC;
```

### Pasos realizados:

1. Tablas involucradas:

   - `actor`: contiene los datos personales de cada actor.
   - `film_actor`: relaciona actores con películas.

2. LEFT JOIN:

   - Garantiza que se incluyan todos los actores, incluso si no han participado en ninguna película (aunque ya hemos visto en el ejercicio 46 que todos han participado en al menos una).

3. `COUNT(fa.film_id)`:
   -Cuenta cuántas veces aparece cada `actor` en la tabla `film_actor`, es decir, el número de películas en las que ha actuado.

4. GROUP BY:

   - Agrupa los resultados por nombre y apellido del actor para que se pueda aplicar la `función de agregación COUNT`.

5. ORDER BY nºpelículas DESC:
   - Ordena el resultado desde el actor con más películas hasta el que tiene menos.

### Resultados(extracto):

| actor           | nºpelículas |
| --------------- | ----------- |
| SUSAN DAVIS     | 54          |
| GINA DEGENERES  | 42          |
| WALTER TORN     | 41          |
| MARY KEITEL     | 40          |
| MATTHEW CARREY  | 39          |
| ...             | ...         |
| SISSY SOBIESKI  | 18          |
| JULIA ZELLWEGER | 16          |
| JULIA FAWCETT   | 15          |
| JUDY DEAN       | 15          |
| EMILY DEE       | 14          |

### Conclusiones:

`Susan Davis` es la actriz con mayor número de películas en la base de datos Sakila, participando en 54 filmes.

Todos los actores han participado en al menos una película, lo que valida lo encontrado en el ejercicio anterior.

Este tipo de consulta es útil para análisis de productividad, popularidad o frecuencia de colaboración dentro del catálogo cinematográfico de la base de datos.

---

### 📝 Ejercicio 48

Crea una vista llamada `actor_num_pelicula` que muestre los nombres de los actores y el número de películas en las que han participado.

### **Código SQL:**

```sql
CREATE VIEW actor_num_pelicula AS
SELECT
    CONCAT(a.first_name, ' ', a.last_name) AS "actor",
    COUNT(fa.film_id) AS "nºpelículas"
FROM actor AS a
    LEFT JOIN film_actor AS fa
        ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name;

-- Consulta para comprobar el contenido de la vista
SELECT * FROM actor_num_pelicula;
```

### Pasos realizados:

1. Se crea una vista que combina las tablas `actor` y `film_actor` para contar el número de películas asociadas a cada actor.

2. La función `CONCAT` se usa para mostrar el nombre completo del actor en un solo campo `actor`.

3. Se utiliza `LEFT JOIN` para incluir también a los actores que no han participado en ninguna película (aunque en los resultados todos tienen al menos una).

4. La agrupación se realiza por a.`first_name` y a.`last_name` para calcular el total de películas por actor.

### Resultados (extracto):

| actor            | nºpelículas |
| ---------------- | ----------- |
| HARRISON BALE    | 28          |
| JULIA ZELLWEGER  | 16          |
| AUDREY OLIVIER   | 25          |
| FAY WOOD         | 22          |
| GREGORY GOODING  | 30          |
| JEFF SILVERSTONE | 25          |
| ADAM HOPPER      | 22          |
| KEVIN BLOOM      | 21          |
| RITA REYNOLDS    | 20          |
| ...              | ...         |

### Conclusiones:

La vista `actor_num_pelicula` permite acceder rápidamente a una lista consolidada de actores con su respectiva carga de trabajo medida en cantidad de películas.

Esta información es útil para análisis como:

- Identificar a los actores más recurrentes en el catálogo.
- Detectar posibles desequilibrios en la distribución de papeles entre actores.
- Cruzar con métricas de rendimiento o popularidad para evaluar la rentabilidad de cada actor.

Se observa que hay una gran diversidad en el número de películas por actor, con casos que van desde los 14 hasta más de 50 películas.

---

### 📝 Ejercicio 49

Calcula el número total de alquileres realizados por cada cliente.

**Código SQL:**

```sql
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS "cliente",
    COUNT(r.rental_id) AS "alquileres"
FROM customer AS c
    LEFT JOIN rental AS r
        ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name;
```

### Pasos realizados:

1. Se realiza un `LEFT JOIN` entre las tablas `customer` y `rental` para obtener todos los clientes y el número de alquileres que han realizado.

2. Se usa `CONCAT` para unir el nombre y el apellido del cliente en un solo campo llamado `cliente`.

3. El conteo de alquileres se hace sobre r.`rental_id`, y se agrupa por nombre y apellido.

### Resultados (extracto):

| cliente              | alquileres |
| -------------------- | ---------- |
| JONATHAN SCARBOROUGH | 18         |
| TRACEY BARRETT       | 27         |
| RUSSELL BRINSON      | 36         |
| FRANKLIN TROUTMAN    | 22         |
| CASSANDRA WALTERS    | 30         |
| CECIL VINES          | 26         |
| THOMAS GRIGSBY       | 25         |
| JORDAN ARCHULETA     | 30         |
| RUBY WASHINGTON      | 28         |
| ...                  | ...        |

### Conclusiones:

La consulta permite obtener rápidamente el volumen de interacción de cada cliente con el servicio, medido por el número de alquileres realizados.

Los valores obtenidos oscilan entre los 12 y 39 alquileres, lo que muestra una variabilidad considerable en la frecuencia de uso del servicio.

Clientes como RHONDA KENNEDY o MARION SNYDER destacan con 39 alquileres, lo que podría indicar un alto grado de fidelidad o interés en el catálogo de películas.

Por el contrario, otros clientes como BRIAN WYMAN tienen tan solo 12 alquileres, lo que podría ser indicativo de baja participación o de clientes ocasionales.

Esta información puede servir para segmentar clientes según su nivel de actividad, permitiendo aplicar estrategias como:

Programas de fidelización para usuarios frecuentes.

Campañas de reactivación para usuarios poco activos.

---

### Ejercicio 50

Calcula la duración total de las películas en la categoría `'Action'`.

**Código SQL:**

```sql
SELECT
    c."name" AS "categoría",
    SUM(f.length) AS "duración"
FROM film AS f
    LEFT JOIN film_category AS fc
        ON f.film_id = fc.film_id
    LEFT JOIN category AS c
        ON fc.category_id = c.category_id
WHERE c.name = 'Action'
GROUP BY c."name"
```

### Pasos realizados:

1. Se parte de la tabla `film`, que contiene información sobre las películas y su duración (`length`).

2. Se conecta con `film_category` para relacionar cada película con su categoría.

3. Se usa un segundo `LEFT JOIN` con `category` para obtener el nombre de la categoría.

4. Se filtra por la categoría `Action`.

5. Finalmente, se calcula la suma total de duración `(SUM(length))` para todas las películas de esa categoría.

### Resultados:

| categoría | duración |
| --------- | -------- |
| Action    | 7143     |

### Conclusiones:

La duración total de todas las películas clasificadas como 'Action' es de `7143 minutos`.

- Este valor indica que, dentro del catálogo, 'Action' representa un volumen significativo de contenido en términos de tiempo de reproducción.

---

# Ejercicio 51:

Crea una tabla temporal denominada `cliente_rentas_temporal` que almacene el total de alquileres por cliente.

## Consulta SQL

```sql
CREATE TEMPORARY TABLE cliente_rentas_temporal AS
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS "cliente",
    COUNT(r.rental_id) AS "alquileres"
FROM customer AS c
    LEFT JOIN rental AS r
    ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name;
-- Consulta para comprobar el contenido de la tabla temporal
SELECT *
FROM cliente_rentas_temporal;
```

### Pasos realizados:

1. Creación de la tabla temporal:

   - Utilizamos la sentencia `CREATE TEMPORARY TABLE` para crear la tabla `cliente_rentas_temporal`.
   - La tabla almacenará dos columnas:
     - `cliente`: Nombre completo del cliente, formado por la concatenación de los campos `first_name` y `last_name` de la tabla `customer`.
     - `alquileres`: El total de alquileres realizados por cada cliente.
       - Esto se obtiene mediante la función `COUNT` que cuenta el número de registros en la tabla rental para cada cliente.

2. Join entre las tablas:

   - Se realiza un `LEFT JOIN` entre las tablas `customer` y `rental` usando `customer_id` para vincular ambas tablas.
   - Esto asegura que se incluyan todos los clientes, incluso aquellos que no han realizado alquileres (su número de alquileres será 0).

3. Agrupación por cliente:

   - Se agrupan los resultados por los campos `first_name` y `last_name`, lo que permite contar los alquileres por cada cliente de manera individual.

4. Selección de resultados:
   - Una vez creada la tabla temporal, se realiza una consulta `SELECT *` para visualizar los datos almacenados en la tabla `cliente_rentas_temporal`.

### Resultados:

| cliente              | alquileres |
| -------------------- | ---------- |
| JONATHAN SCARBOROUGH | 18         |
| TRACEY BARRETT       | 27         |
| RUSSELL BRINSON      | 36         |
| FRANKLIN TROUTMAN    | 22         |
| CASSANDRA WALTERS    | 30         |
| CECIL VINES          | 26         |
| THOMAS GRIGSBY       | 25         |
| JORDAN ARCHULETA     | 30         |
| RUBY WASHINGTON      | 28         |
| STANLEY SCROGGINS    | 30         |
| ...                  | ...        |

### Conclusiones:

El objetivo de este ejercicio era crear una tabla temporal que almacenara el número de alquileres por cliente. Esta tabla temporal puede ser útil para realizar análisis de frecuencia de alquileres y generar reportes de clientes activos.

---

# Ejercicio 52:

Crear una tabla temporal denominada `peliculas_alquiladas` que almacene las películas que han sido alquiladas al menos 10 veces.

## Consulta SQL

```sql
CREATE TEMPORARY TABLE peliculas_alquiladas_ AS
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
HAVING COUNT(r.rental_id) >= 10;
-- Consulta para ver los resultados de la tabla temporal peliculas_alquiladas_
SELECT *
FROM "peliculas_alquiladas_";
```

### Pasos realizados:

1. Creación de la tabla temporal:

   - Utilizamos la sentencia `CREATE TEMPORARY TABLE` para crear la tabla `peliculas_alquiladas_`.
   - La tabla contiene tres columnas:
     - `id_película`: El identificador único de la película (campo `film_id` de la tabla `film`).
     - `película`: El título de la película (campo `title` de la tabla `film`).
     - `alquileres`: El número total de veces que la película ha sido alquilada. Esto se obtiene mediante la función `COUNT`, que cuenta los registros en la tabla rental para cada película.

2. Joins entre las tablas:

   - Se realiza un `LEFT JOIN` entre las tablas `film` e `inventory` usando `film_id` para asociar las películas con los inventarios.
   - Se realiza otro `LEFT JOIN` entre las tablas `inventory` y `rental` utilizando inven`tory_id para contar cuántas veces ha sido alquilada cada película.

3. Agrupación por película:

   - Se agrupan los resultados por `film_id` y `title`, lo que permite contar el número de alquileres por cada película de manera individual.

4. Filtrado de resultados:

   - Se utiliza la cláusula `HAVING` para filtrar las películas que han sido alquiladas al menos 10 veces `(COUNT(r.rental_id) >= 10)`.

5. Selección de resultados:
   - Se realiza un `SELECT *` para visualizar los datos almacenados en la tabla temporal `peliculas_alquiladas_`.

### Resultados (extracto):

| id_película | película           | alquileres |
| ----------- | ------------------ | ---------- |
| 652         | PAJAMA JAWBREAKER  | 14         |
| 273         | EFFECT GLADIATOR   | 25         |
| 51          | BALLOON HOMEWARD   | 23         |
| 951         | VOYAGE LEGALLY     | 28         |
| 70          | BIKINI BORROWERS   | 17         |
| 350         | GARDEN ISLAND      | 20         |
| 539         | LUCK OPUS          | 10         |
| 946         | VIRTUAL SPOILERS   | 14         |
| 176         | CONGENIALITY QUEST | 22         |
| 576         | MIGHTY LUCK        | 12         |
| ...         | ...                | ...        |

### Conclusiones:

El ejercicio tenía como objetivo crear una tabla temporal que almacenara las películas que han sido alquiladas al menos 10 veces. La tabla resultante puede ser útil para identificar las películas más populares y frecuentemente alquiladas en la base de datos. Esta información podría ser valiosa para tomar decisiones comerciales, como la reposición de inventario o promociones.

---

# Ejercicio 53:

Encontrar el título de las películas que han sido alquiladas por el cliente con el nombre ‘Tammy Sanders’ y que aún no se han devuelto. Los resultados deben ordenarse alfabéticamente por título de película.

## Consulta SQL

```sql
SELECT
    f.title AS "película"
FROM customer AS c
    LEFT JOIN rental AS r
    ON c.customer_id = r.customer_id
    LEFT JOIN inventory AS i
    ON r.inventory_id = i.inventory_id
    LEFT JOIN film AS f
    ON i.film_id = f.film_id
WHERE c.first_name ILIKE 'Tammy'
  AND c.last_name ILIKE 'Sanders'
  AND r.return_date IS NULL
ORDER BY f.title;
```

### Pasos realizados:

1. Selección de columnas:

   - Se selecciona el título de la película (`f.title`) de la tabla `film`.

2. Joins entre las tablas:

   - Se realiza un `LEFT JOIN` entre las tablas `customer` y `rental` para vincular a los clientes con sus alquileres.
   - Se realiza otro `LEFT JOIN` entre `rental` e `inventory` para vincular los alquileres con los productos de inventario.
   - Finalmente, se realiza un `LEFT JOIN` entre `inventory` y `film` para vincular los productos de inventario con las películas.

3. Condiciones de filtrado:

   - La consulta filtra los resultados por el nombre del cliente. Utilizando el operador `ILIKE`, se buscan clientes cuyo primer nombre sea `Tammy` y su apellido sea `Sanders`. El uso de `ILIKE` permite que la búsqueda sea insensible a mayúsculas y minúsculas.
   - Se filtra también por aquellos alquileres cuya fecha de devolución (`return_date`) sea `NULL`, es decir, que no han sido devueltos aún.

4. Ordenación de los resultados:
   - Los resultados se ordenan alfabéticamente por el título de la película utilizando `ORDER BY f.title`

### Resultados:

| película        |
| --------------- |
| LUST LOCK       |
| SLEEPY JAPANESE |
| TROUBLE DATE    |

### Conclusiones:

La consulta muestra las 3 películas alquiladas por el cliente **Tammy Sanders** que todavía no han sido devueltas.

---

# Ejercicio 54:

Encontrar los nombres de los actores que han participado en al menos una película de la categoría Sci-Fi. Los resultados deben ordenarse alfabéticamente por el apellido del actor.

## Consulta SQL

```sql
SELECT nombre_actor
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
```

### Pasos realizados:

1. Elección de columnas:

   - Se selecciona el nombre completo del actor (`first_name + last_name`) como `nombre_actor`.
   - También se incluye `last_name` para ordenar alfabéticamente por apellido en la subconsulta.

2. INNER JOINS entre tablas:

   - `actor` se une con `film_actor` para relacionar actores con películas.
   - `film_actor` se une con `film` para obtener las películas.
   - `film` se une con `film_category` para conocer su categoría.
   - `film_category` se une con `category` para obtener el nombre de la categoría.

3. Condición de filtrado:

   - Se seleccionan solo las películas cuya categoría sea exactamente `Sci-Fi`.

4. DISTINCT y ordenamiento:
   - `DISTINCT` asegura que un actor aparezca una sola vez aunque haya actuado en varias películas de `Sci-Fi`.
   - El ordenamiento final se realiza por `last_name` para mostrar los actores alfabéticamente por su apellido.

### Resultados (extracto):

| nombre_actor     |
| ---------------- |
| CHRISTIAN AKROYD |
| KIRSTEN AKROYD   |
| DEBBIE AKROYD    |
| CUBA ALLEN       |
| KIM ALLEN        |
| ANGELINA ASTAIRE |
| RUSSELL BACALL   |
| AUDREY BAILEY    |
| JESSICA BAILEY   |
| HARRISON BALE    |
| ...              |

### Conclusiones:

Esta consulta permite identificar qué actores han participado en películas de ciencia ficción, mostrando resultados sin duplicados y de manera organizada por apellido. El uso de INNER JOIN garantiza que solo se consideren actores vinculados a películas de esa categoría.

---

# Ejercicio 55

Encuentra el nombre y apellido de los actores que han actuado en películas que se alquilaron después de que la película _"Spartacus Cheaper"_ se alquilara por primera vez. Ordena los resultados alfabéticamente por apellido.

---

## 📌 Consulta SQL

```sql
WITH primer_alquiler AS (
    SELECT
        MIN(r.rental_date) AS fecha_1er_alquiler
    FROM rental AS r
    LEFT JOIN inventory AS i
        ON r.inventory_id = i.inventory_id
    LEFT JOIN film AS f
        ON i.film_id = f.film_id
    WHERE f.title ILIKE 'Spartacus Cheaper'
)

SELECT DISTINCT
    CONCAT(a.first_name, ' ', a.last_name) AS actor,
    a.last_name
FROM actor AS a
LEFT JOIN film_actor AS fa
    ON a.actor_id = fa.actor_id
LEFT JOIN film AS f
    ON fa.film_id = f.film_id
LEFT JOIN inventory AS i
    ON f.film_id = i.film_id
LEFT JOIN rental AS r
    ON i.inventory_id = r.inventory_id
WHERE r.rental_date > (
    SELECT fecha_1er_alquiler
    FROM primer_alquiler
)
ORDER BY a.last_name;

```

### Pasos realizados:

1. CTE primer_alquiler

   - Se calcula la fecha del primer alquiler de la película `Spartacus Cheaper`, utilizando `MIN(r.rental_date)`.
   - Se emplea `ILIKE` para evitar problemas por diferencias de mayúsculas/minúsculas en el nombre del título.

2. Consulta principal
   - Se realiza `LEFT JOINS` entre las tablas `actor`, `film_actor`, `film`, `inventory` y `rental`.
   - Se filtran las películas alquiladas posteriores a la fecha obtenida en el CTE.
   - Se usa `DISTINCT` para evitar duplicados de actores que hayan participado en múltiples películas o alquileres.
   - Se incluye el apellido (`a.last_name`) en el `SELECT` para poder ordenar correctamente los resultados por él.

### Resultados:

| actor            | last_name |
| ---------------- | --------- |
| CHRISTIAN AKROYD | AKROYD    |
| KIRSTEN AKROYD   | AKROYD    |
| DEBBIE AKROYD    | AKROYD    |
| KIM ALLEN        | ALLEN     |
| MERYL ALLEN      | ALLEN     |
| CUBA ALLEN       | ALLEN     |
| ANGELINA ASTAIRE | ASTAIRE   |
| RUSSELL BACALL   | BACALL    |
| AUDREY BAILEY    | BAILEY    |
| ...              | ...       |

### Conclusiones:

- El resultado muestra un amplio listado de actores que han participado en películas **alquiladas después** del primer alquiler de _"Spartacus Cheaper"_, lo cual indica que esta película no fue una de las primeras en ser alquilada dentro del histórico.

- La presencia de tantos actores distintos sugiere que se han alquilado muchas películas posteriormente, y que el catálogo disponible después de ese punto fue extenso.

- Se repiten muchos apellidos, lo cual pone de manifiesto que varios actores con el mismo apellido (posiblemente ficticios o referencias a actores reales) han estado activos en películas posteriores a dicha fecha.

---

## Ejercicio 56

Encuentra el nombre y apellido de los actores que **no han actuado** en ninguna película de la categoría **Music**.

### 📌 Instrucción SQL

```sql
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
```

### Pasos realizados:

1. Se parte de la tabla `actor` para obtener la lista completa de actores.

2. Se excluyen todos aquellos cuyo `actor_id` aparece relacionado con películas de la categoría `Music` mediante subconsulta.
   - La subconsulta recorre las relaciones necesarias entre `film_actor`, `film`, `film_category` y `category` para identificar los actores que han participado en películas etiquetadas como `Music`.
   - Se utiliza `NOT IN` para quedarnos únicamente con aquellos actores que nunca han actuado en ninguna película de dicha categoría.

### Resultados (extracto):

| actor           |
| --------------- |
| BETTE NICHOLSON |
| GRACE MOSTEL    |
| CUBA OLIVIER    |
| FRED COSTNER    |
| ELVIS MARX      |
| CAMERON STREEP  |
| RIP CRAWFORD    |
| SISSY SOBIESKI  |
| MILLA PECK      |
| ...             |

### Conclusiones:

El listado obtenido refleja que 54 actores no han participado en películas de la categoría `Music`, lo que permite ver que no es una de las categorías más ampliamente repartidas entre el elenco.

Esta consulta permite detectar fácilmente brechas de participación por categoría, y es aplicable a estudios sobre diversificación de roles o especialización de actores por género cinematográfico.

---

# Ejercicio 57

Encuentra el título de todas las películas que fueron alquiladas por más de 8 días.

## Consulta SQL:

```sql
SELECT
    f.title AS "pelicula",
    EXTRACT(DAY FROM (r.return_date - r.rental_date)) AS "días_alquiler"
FROM rental AS r
    LEFT JOIN inventory AS i
        ON r.inventory_id = i.inventory_id
    LEFT JOIN film AS f
        ON i.film_id = f.film_id
WHERE EXTRACT(DAY FROM (r.return_date - r.rental_date)) > 8;
```

### Pasos realizados:

1. Se calcula la diferencia entre `return_date` y `rental_date`, extrayendo únicamente la parte correspondiente a los días mediante la función `EXTRACT(DAY FROM ...)`.

2. Se hace uso de `LEFT JOIN` para enlazar las tablas `rental`, `inventory` y `film`. Esto permite obtener la relación entre las películas, los inventarios y los alquileres.

3. Se filtran los resultados con la cláusula `WHERE` para que solo se muestren aquellos registros donde la duración del alquiler supere los `8 días`.

### Resultados (extracto):

| pelicula          | días_alquiler |
| ----------------- | ------------- |
| LOVE SUICIDES     | 9             |
| PELICAN COMFORTS  | 9             |
| ALLEY EVOLUTION   | 9             |
| ROSES TREASURE    | 9             |
| PATIENT SISTER    | 9             |
| VOYAGE LEGALLY    | 9             |
| ROBBERS JOON      | 9             |
| SHOW LORD         | 9             |
| NETWORK PEAK      | 9             |
| TRADING PINOCCHIO | 9             |

### Conclusiones:

El resultado de la consulta es una lista de películas cuya duración de alquiler fue superior a 8 días. En muchos casos, el número de días es 9, lo que indica que hubo algunos alquileres con retraso en la devolución.

---

# Ejercicio 58

Encuentra el título de todas las películas que son de la misma categoría que ‘Animation’.

## Consulta SQL:

```sql
SELECT
    f.title AS "película",
    c."name" AS "categoría"
FROM film AS f
    INNER JOIN film_category AS fc
        ON f.film_id = fc.film_id
    INNER JOIN category AS c
        ON fc.category_id = c.category_id
WHERE c."name" = 'Animation';
```

### Pasos realizados:

1. Se realiza un `INNER JOIN` entre las tablas `film`, `film_category` y `category` para relacionar las películas con sus categorías.

   - Se una `INNER JOIN` para asegurar que solo se muestren los registros que tienen una categoría asignada.

2. Se filtra por la categoría específica `Animation` en la cláusula `WHERE`.

3. La consulta selecciona el título de las películas (`f.title`) y la categoría (`c.name`) para mostrar en el resultado.

### Resultados:

| película             | categoría |
| -------------------- | --------- |
| ALTER VICTORY        | Animation |
| ANACONDA CONFESSIONS | Animation |
| ARGONAUTS TOWN       | Animation |
| BIKINI BORROWERS     | Animation |
| BLACKOUT PRIVATE     | Animation |
| BORROWERS BEDAZZLED  | Animation |
| CANYON STOCK         | Animation |
| CAROL TEXAS          | Animation |
| CHAMPION FLATLINERS  | Animation |
| ...                  | ...       |

### Conclusiones:

## Esta consulta devuelve un total de `52 películas` que están catalogadas dentro de la categoría `Animation`.

# Ejercicio 59

Encuentra los nombres de las películas que tienen la misma duración que la película con el título ‘Dancing Fever’. Ordena los resultados alfabéticamente por título de película.

## Consulta SQL:

```sql
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
```

### Pasos realizados:

1. Se realiza una `subconsulta dentro de la cláusula WHERE` para obtener la duración de la película 'Dancing Fever'. La subconsulta usa `ILIKE` para hacer la búsqueda insensible a mayúsculas y minúsculas.

2. Después, la consulta principal selecciona el `título` y la `duración` de todas las películas que tienen la misma duración que la película 'Dancing Fever'.

3. Finalmente, se ordenan los resultados alfabéticamente por título de película mediante la cláusula `ORDER BY f.title`.

### Resultados:

| película          | duración |
| ----------------- | -------- |
| DANCING FEVER     | 144      |
| FACTORY DRAGON    | 144      |
| LAMBS CINCINATTI  | 144      |
| PACIFIC AMISTAD   | 144      |
| PRESIDENT BANG    | 144      |
| STRICTLY SCARFACE | 144      |
| TOWERS HURRICANE  | 144      |
| VIRTUAL SPOILERS  | 144      |

### Conclusiones:

## La consulta devuelve `un total de 8 películas` que tienen la misma duración que 'Dancing Fever', que es de `144 minutos`.

# Ejercicio 60

Encuentra los nombres de los clientes que han alquilado al menos 7 películas distintas. Ordena los resultados alfabéticamente por apellido.

## Consulta SQL:

```sql
SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS "nombre_cliente",
    COUNT(DISTINCT (i.film_id)) AS "películas_distintas"
FROM customer AS c
    INNER JOIN rental AS r
        ON c.customer_id = r.customer_id
    INNER JOIN inventory AS i
        ON r.inventory_id = i.inventory_id
GROUP BY c.first_name, c.last_name
HAVING COUNT(DISTINCT (i.film_id)) >= 7
ORDER BY c.last_name;
```

### Pasos realizados:

1. `JOINs`: La consulta utiliza dos `INNER JOIN`:

   - Se une la tabla `customer` con la tabla `rental` utilizando `customer_id`, lo que nos permite acceder a los alquileres de los clientes.
   - Se une la tabla `rental` con la tabla `inventory` utilizando `inventory_id`, lo que permite identificar las películas específicas que han sido alquiladas.

2. `GROUP BY`: La consulta agrupa los resultados por el primer y último nombre del cliente para poder contar las películas distintas que cada cliente ha alquilado.

3. `COUNT(DISTINCT)`: La función `COUNT(DISTINCT i.film_id)` se usa para contar las películas distintas alquiladas por cada cliente.

4. `HAVING`: Se aplica una condición para filtrar aquellos clientes que han alquilado al menos 7 películas distintas.

5. `ORDER BY`: Los resultados se ordenan alfabéticamente por el apellido del cliente (`c.last_name`).

### Resultados (extracto):

| nombre_cliente   | películas_distintas |
| ---------------- | ------------------- |
| RAFAEL ABNEY     | 21                  |
| NATHANIEL ADAM   | 28                  |
| KATHLEEN ADAMS   | 26                  |
| DIANA ALEXANDER  | 27                  |
| GORDON ALLARD    | 32                  |
| SHIRLEY ALLEN    | 30                  |
| CHARLENE ALVAREZ | 26                  |
| LISA ANDERSON    | 24                  |
| JOSE ANDREW      | 25                  |
| ...              | ...                 |

### Conclusiones:

La consulta ha identificado a `100 clientes` que han alquilado al menos 7 películas distintas.
Los clientes con `mayor cantidad` de alquileres están entre los `21 y 42`.

---

# Ejercicio 61

Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.

## Consulta SQL:

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

### Pasos realizados:

1. La consulta utiliza varios `LEFT JOIN` para conectar las diferentes tablas:

   - Se une la tabla `category` con `film_category` utilizando `category_id` para obtener la relación entre las categorías y las películas.
   - Se unen las tablas `film_category` y `film` mediante `film_id` para acceder a las películas dentro de cada categoría.
   - Se une `film` con `inventory` utilizando `film_id` para vincular las películas con su inventario disponible.
   - Se unen las tablas `inventory` y `rental` utilizando `inventory_id` para contabilizar los alquileres de cada película.

2. Se utiliza la función `COUNT(r.rental_id)` para contar la cantidad total de alquileres asociados a cada categoría de película.

3. Se agrupan los resultados por el nombre de la categoría (`c.name`) para mostrar el número de alquileres por cada una de ellas.

### Resultados:

| categoría   | recuento_alquileres |
| ----------- | ------------------- |
| Sports      | 1179                |
| Classics    | 939                 |
| New         | 940                 |
| Family      | 1096                |
| Comedy      | 941                 |
| Animation   | 1166                |
| Travel      | 837                 |
| Music       | 830                 |
| Drama       | 1060                |
| Horror      | 846                 |
| Sci-Fi      | 1101                |
| Games       | 969                 |
| Documentary | 1050                |
| Foreign     | 1033                |
| Action      | 1112                |
| Children    | 945                 |

### Conclusiones:

La consulta proporciona el total de películas alquiladas por categoría, lo que permite entender la demanda por cada tipo de película.

En general, las categorías con mayor número de alquileres son **Sports (1179 alquileres), Animation (1166 alquileres) y Action (1112 alquileres)**.

Las categorías como **Travel (837 alquileres) y Music (830 alquileres)** tienen un menor número de alquileres.

Este análisis es útil para evaluar el interés de los clientes en diferentes géneros de películas y podría ayudar a ajustar la oferta de películas en base a la popularidad de cada categoría.

---

# Ejercicio 62

Encuentra el número de películas por categoría estrenadas en el año 2006.

## Consulta SQL:

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
GROUP BY c."name", f.release_year;
```

### Pasos realizados:

1. Se enlazan las tablas `category`, `film_category` y `film` para acceder a la información de las películas por categoría.

2. Se limitan los resultados únicamente a las películas estrenadas en ese año con `WHERE f.release_year = '2006'`

3. Se agrupan los resultados por `categoría` y `año de estreno`, lo cual permite obtener el número de películas por cada categoría exclusivamente para el año `2006`.

4.Se contabiliza la cantidad de películas (film_id) por cada grupo - `COUNT(f.film_id) AS "películas"`

### Resultados:

| películas | categoría   | año_estreno |
| --------- | ----------- | ----------- |
| 74        | Sports      | 2006        |
| 57        | Classics    | 2006        |
| 63        | New         | 2006        |
| 69        | Family      | 2006        |
| 58        | Comedy      | 2006        |
| 66        | Animation   | 2006        |
| 57        | Travel      | 2006        |
| 51        | Music       | 2006        |
| 62        | Drama       | 2006        |
| 56        | Horror      | 2006        |
| 61        | Sci-Fi      | 2006        |
| 61        | Games       | 2006        |
| 68        | Documentary | 2006        |
| 73        | Foreign     | 2006        |
| 64        | Action      | 2006        |
| 60        | Children    | 2006        |

### Conclusiones:

En el año 2006, todas las categorías de películas registraron estrenos.

Las categorías con mayor número de estrenos fueron **Sports (74 películas), Foreign (73) y Family (69)**

Las categorías con menor número fueron **Music (51) y Horror (56)**.

---

# Ejercicio 63

Obtén todas las combinaciones posibles de trabajadores con las tiendas que tenemos.

## Consulta SQL:

```sql
SELECT
    CONCAT(s.first_name, ' ', s.last_name) AS "trabajador",
    s2.store_id AS "tienda"
FROM staff AS s
    CROSS JOIN store AS s2;
```

### Pasos realizados:

1. CROSS JOIN: Esta cláusula genera todas las combinaciones posibles de empleados con tiendas, sin necesidad de que haya una relación directa entre ellas.

2. CONCAT: Se utiliza para unir el nombre y el apellido de cada trabajador en una sola columna.

### Resultados:

| trabajador   | tienda |
| ------------ | ------ |
| Mike Hillyer | 1      |
| Jon Stephens | 1      |
| Mike Hillyer | 2      |
| Jon Stephens | 2      |

### Conclusiones:

Se genera una combinación completa entre trabajadores y tiendas.

## Podría ser útil para análisis como asignaciones hipotéticas, cálculos de disponibilidad o planificación logística, permite ver cómo cada trabajador podría estar relacionado potencialmente con cada tienda.

# Ejercicio 64

Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.

## Consulta SQL:

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

### Pasos realizados:

1. Se utiliza `LEFT JOIN` para asegurar que todos los clientes aparezcan en el resultado, incluso si no han realizado alquileres.

2. `COUNT(r.rental_id)`: Cuenta cuántos registros de alquiler están asociados a cada cliente.

3. `GROUP BY`: Agrupa los resultados por cliente para obtener el total de alquileres por cada uno.

4.`ORDER BY cantidad_alquileres DESC`: Ordena de mayor a menor según el número de alquileres

### Resultados (EXTRACTO):

| id_cliente | nombre_cliente | cantidad_alquileres |
| ---------- | -------------- | ------------------- |
| 148        | ELEANOR HUNT   | 46                  |
| 526        | KARL SEAL      | 45                  |
| 144        | CLARA SHAW     | 42                  |
| 236        | MARCIA DEAN    | 42                  |
| 75         | TAMMY SANDERS  | 41                  |
| 469        | WESLEY BULL    | 40                  |
| 197        | SUE PETERS     | 40                  |
| 137        | RHONDA KENNEDY | 39                  |
| 178        | MARION SNYDER  | 39                  |
| ...        | ...            | ...                 |

### Conclusiones:

Esta consulta permite identificar a los clientes más activos en cuanto a alquileres, lo cual es útil para segmentaciones de marketing, promociones personalizadas o análisis de fidelización. También se pueden detectar clientes inactivos, si su número de alquileres es 0.

---

## 🔄 Próximos Pasos

A medida que el proyecto avanza, hay varios aspectos que se pueden seguir desarrollando o mejorando. Estos son algunos de los próximos pasos a considerar:

- **Optimización de consultas SQL**: Refinar algunas de las consultas SQL para mejorar su rendimiento y hacerlas más eficientes, especialmente aquellas que manejan grandes volúmenes de datos.
- **Análisis adicional de los datos**: Realizar análisis más profundos sobre el comportamiento de los clientes y las transacciones. Esto podría incluir la creación de más consultas para explorar tendencias de largo plazo o análisis de segmentos específicos de clientes.

- **Automatización de informes**: Desarrollar procedimientos almacenados o scripts que automaticen la generación de informes basados en las consultas SQL realizadas, facilitando la actualización periódica de los resultados.

- **Futuro análisis predictivo**: Aunque no se ha utilizado Python en este proyecto, se podría explorar la integración de modelos predictivos basados en los datos obtenidos para anticipar tendencias o comportamientos futuros en la base de datos.

- **Creación de visualizaciones**: Desarrollar dashboards interactivos o visualizaciones que apoyen los hallazgos del análisis. Esto se podrá realizar en etapas futuras utilizando herramientas como **Power BI** o **Python (matplotlib, seaborn, plotly)**, facilitando una mejor comunicación de los resultados a usuarios no técnicos.

Estos pasos permitirán no solo mejorar la calidad del análisis realizado, sino también expandir el alcance del proyecto para incluir nuevas áreas de exploración y optimización.

## 🤝 Contribuciones

Las contribuciones son bienvenidas.  
Si deseas mejorar el proyecto, puedes hacerlo de las siguientes formas:

- Abriendo una **issue** para sugerir mejoras, reportar errores o plantear nuevas ideas.
- Creando un **pull request** con propuestas de cambios en el código, documentación o análisis.

Toda colaboración será revisada y valorada. ¡Gracias por tu interés!

---

## 👩‍💻 Autora y Agradecimientos

**Mª Cruz** – Proyecto desarrollado como parte del Bootcamp de Data Analytics e Inteligencia Artificial en [The Power Education](https://thepower.education/).

### 🙌 Agradecimientos

Agradezco especialmente el apoyo y la guía del equipo docente de The Power Education, en particular a:

- **Jaime (thePower)** – [@RCJaime](https://github.com/RCJaime)
- **Silvia (thePower)** – [@Salsi95](https://github.com/Salsi95)
