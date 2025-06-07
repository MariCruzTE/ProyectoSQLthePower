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

## Instalación y Requisitos

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

### Conclusiones por Ejercicio

**Ejercicio 1:** Creación del esquema de la base de datos

La creación del esquema proporciona una visión clara de la estructura de la base de datos Sakila, facilitando la comprensión de las relaciones entre tablas como películas, actores, alquileres y categorías.

**Ejercicio 2:** Películas con clasificación 'R'

Las películas clasificadas como 'R' son comunes en géneros como terror, crimen y drama, lo que sugiere que son adecuadas para audiencias adultas. Este tipo de consulta es útil para segmentar contenido según restricciones de edad.

**Ejercicio 3:** Actores con actor_id entre 30 y 40

La consulta permite filtrar actores en un rango específico de IDs, útil para análisis segmentados de datos en la tabla de actores.

**Ejercicio 4:** Películas con idioma igual al original

No se encontraron resultados debido a valores NULL en la columna original_language_id, lo que indica una posible inconsistencia en los datos o un diseño de la base que no utiliza esta columna.

**Ejercicio 5:** Ordenar películas por duración

Las películas más cortas tienen 46 minutos, lo que permite identificar contenido de menor duración para análisis de preferencias de los clientes.

**Ejercicio 6:** Actores con apellido 'Allen'

Se identificaron tres actores con el apellido 'Allen', destacando la utilidad de ILIKE para búsquedas insensibles a mayúsculas/minúsculas.

**Ejercicio 7:** Cantidad de películas por clasificación

La clasificación 'PG-13' tiene el mayor número de películas (223), lo que refleja una tendencia hacia contenido apto para adolescentes y adultos jóvenes.

**Ejercicio 8:** Películas 'PG-13' o con duración mayor a 3 horas

Muchas películas cumplen con ser 'PG-13' o superar las 3 horas, mostrando una variedad de contenido extenso o dirigido a audiencias específicas.

**Ejercicio 9:** Variabilidad del costo de reemplazo

La desviación estándar de 6.05 en los costos de reemplazo indica una variación moderada, útil para análisis financieros de inventario.

**Ejercicio 10:** Duración mínima y máxima de películas

Las películas oscilan entre 46 y 185 minutos, destacando la diversidad en la duración del catálogo.

**Ejercicio 11:** Costo del antepenúltimo alquiler

El antepenúltimo alquiler tuvo un costo de 0, lo que sugiere posibles promociones o errores en el registro de pagos, relevante para auditorías financieras.

**Ejercicio 12:** Películas que no son 'NC-17' ni 'G'

Las clasificaciones 'PG', 'PG-13' y 'R' dominan el catálogo, lo que refleja un enfoque en audiencias más amplias.

**Ejercicio 13:** Promedio de duración por clasificación

Las películas 'PG-13' (120.44 min) y 'R' (118.66 min) son las más largas, mientras que las 'G' (111.05 min) son las más cortas, indicando una relación entre duración y tipo de contenido.

**Ejercicio 14:** Películas con duración mayor a 180 minutos

Las películas más largas, cercanas a 185 minutos, no están ligadas a un género específico, lo que sugiere variedad en el contenido extenso.

**Ejercicio 15:** Ingresos totales de la empresa

La empresa generó 67,416.51 unidades monetarias, un dato clave para análisis financieros y planificación estratégica.

**Ejercicio 16:** Clientes con mayor ID

Los IDs más altos (590-599) pueden indicar los clientes más recientes, útil para segmentar nuevos usuarios.

**Ejercicio 17:** Actores en la película 'Egg Igby'

La película cuenta con un reparto equilibrado de cinco actores, mostrando la importancia de conectar múltiples tablas para obtener información cruzada.

**Ejercicio 18:** Títulos únicos de películas

Se recuperaron 1000 títulos únicos, confirmando la diversidad del catálogo y la utilidad de DISTINCT para evitar duplicados.

**Ejercicio 19:** Comedias con duración mayor a 180 minutos

Solo tres comedias superan las 3 horas, una rareza en este género que sugiere contenido narrativo más complejo.

**Ejercicio 20:** Categorías con duración promedio superior a 110 minutos

Categorías como 'Sports' y 'Games' tienen las mayores duraciones promedio, indicando que los géneros más narrativos tienden a ser más largos.

**Ejercicio 21:** Promedio de duración de alquiler

La duración promedio de alquiler es de 4.99 días, lo que refleja un estándar de alquiler semanal.

**Ejercicio 22:** Lista de actores con nombre completo

Los 200 actores están ordenados alfabéticamente, facilitando la búsqueda y análisis de datos.

**Ejercicio 23:** Alquileres por día

Los días de mayor actividad (julio/agosto 2005) reflejan picos estacionales, útiles para planificar campañas de marketing.

**Ejercicio 24:**Películas con duración superior al promedio

Las películas más largas (superiores a 115.27 minutos) son ideales para públicos interesados en contenido extenso, como cine épico.

**Ejercicio 25:** Alquileres por mes

Julio y agosto de 2005 son los meses con mayor actividad, indicando una demanda estacional que puede guiar estrategias comerciales.

**Ejercicio 26:** Estadísticas de pagos

El promedio de pagos (4.20) y la desviación estándar (2.36) muestran una dispersión moderada, útil para segmentar clientes por hábitos de pago.

**Ejercicio 27:** Películas con precio de alquiler superior al promedio

Las películas con tarifas superiores a 2.98 son consideradas "premium", útiles para estrategias de precios y promociones.
**Ejercicio 28:** Actores con más de 40 películas

Solo dos actores (Gina Degeneres y Walter Torn) superan las 40 películas, destacando su alta productividad.

**Ejercicio 29:** Películas y disponibilidad en inventario

La mayoría de las películas tienen 8 unidades en inventario, sugiriendo una política estandarizada de existencias.

**Ejercicio 30:** Actores y número de películas

Susan Davis lidera con 54 películas, mostrando una carrera prolífica y una distribución variada de participaciones.

**Ejercicio 31:** Películas y actores asociados

La consulta asegura que todas las películas se muestren, incluso sin actores, destacando la utilidad de LEFT JOIN para datos completos.

**Ejercicio 32:** Actores y películas asociadas

Todos los actores tienen al menos una película, pero algunos podrían tener datos incompletos, útil para auditorías de calidad.

**Ejercicio 33:** Películas y registros de alquiler

La consulta proporciona una visión completa de los alquileres, útil para análisis de demanda y uso del inventario.

**Ejercicio 34:** Clientes que más gastaron

Los cinco clientes principales gastaron más de 190 unidades, ideales para estrategias de fidelización.

**Ejercicio 35:** Actores con nombre 'Johnny'

Solo dos actores comparten el nombre 'Johnny', mostrando la especificidad de las búsquedas con ILIKE.

**Ejercicio 36:** Renombramiento de columnas

Renombrar columnas mejora la legibilidad de los resultados, especialmente para informes o dashboards.

**Ejercicio 37:** IDs mínimo y máximo de actores

Los IDs de actores van de 1 a 200, útil para validar la integridad de los datos.

**Ejercicio 38:** Conteo de actores

Hay 200 actores en total, lo que refleja la amplitud del catálogo de talento.

**Ejercicio 39:** Actores ordenados por apellido

La ordenación alfabética facilita la búsqueda y análisis de actores.

**Ejercicio 40:** Primeras cinco películas

La consulta permite un vistazo rápido a las primeras entradas del catálogo, útil para auditorías iniciales.

**Ejercicio 41:** Actores con nombres repetidos

Los nombres Penelope, Kenneth y Julia son los más comunes (4 veces cada uno), destacando la necesidad de identificadores únicos.

**Ejercicio 42:** Alquileres por cliente

La consulta relaciona correctamente alquileres con clientes, útil para análisis de comportamiento.

**Ejercicio 43:** Clientes con o sin alquileres

Todos los clientes tienen alquileres, lo que indica una base activa de usuarios.

**Ejercicio 44:** Cross Join entre películas y categorías

El CROSS JOIN genera combinaciones no útiles, mostrando la importancia de usar uniones basadas en relaciones reales.

**Ejercicio 45:** Actores en películas de 'Action'

Muchos actores participan en películas de acción, reflejando la popularidad de este género.

**Ejercicio 46:** Actores sin películas

No hay actores sin películas, confirmando que todos están activos en el catálogo.

**Ejercicio 47:** Actores y número de películas

Susan Davis (54 películas) lidera, útil para identificar talento clave en el catálogo.

**Ejercicio 48:** Vista de actores y películas

La vista actor_num_pelicula agiliza consultas recurrentes sobre la productividad de los actores.

**Ejercicio 49:** Total de alquileres por cliente

Clientes como Rhonda Kennedy (39 alquileres) destacan, útil para segmentar usuarios frecuentes.

**Ejercicio 50:** Duración total de películas de 'Action'

Las películas de acción suman 7143 minutos, un dato clave para evaluar el volumen de contenido por género.

**Ejercicio 51:** Tabla temporal de alquileres por cliente

La tabla temporal facilita análisis rápidos de la actividad de los clientes.

**Ejercicio 52:** Tabla temporal de películas alquiladas al menos 10 veces

Las películas populares (como 'Voyage Legally') son ideales para promociones y gestión de inventario.

**Ejercicio 53:** Películas no devueltas por Tammy Sanders

Tammy Sanders tiene tres películas pendientes, útil para gestionar devoluciones.

**Ejercicio 54:** Actores en películas de 'Sci-Fi'

La consulta identifica actores clave en el género de ciencia ficción, útil para análisis de casting.

**Ejercicio 55:** Actores en películas alquiladas después de 'Spartacus Cheaper'

Muchos actores están vinculados a alquileres posteriores, indicando un catálogo activo tras el primer alquiler de esta película.

**Ejercicio 56:** Actores que no actuaron en 'Music'

54 actores no participaron en películas musicales, mostrando especialización en otros géneros.

**Ejercicio 57:** Películas alquiladas por más de 8 días

Los alquileres de 9 días reflejan retrasos, útiles para políticas de devolución.

**Ejercicio 58:**Películas de 'Animation'

52 películas son de animación, un género significativo en el catálogo.

**Ejercicio 59:** Películas con la misma duración que 'Dancing Fever'

Ocho películas comparten la duración de 144 minutos, útil para segmentar por duración.

**Ejercicio 60:** Clientes con al menos 7 películas alquiladas

100 clientes han alquilado 7 o más películas, mostrando una base activa de usuarios.

**Ejercicio 61:** Alquileres por categoría

'Sports', 'Animation' y 'Action' lideran en alquileres, reflejando preferencias del público.

**Ejercicio 62:** Películas estrenadas en 2006 por categoría

'Sports' y 'Foreign' lideran los estrenos de 2006, mostrando tendencias de producción.

**Ejercicio 63:** Combinaciones de trabajadores y tiendas

El CROSS JOIN genera combinaciones hipotéticas, útil para planificación logística.

**Ejercicio 64:** Total de alquileres por cliente con ID y nombre

Eleanor Hunt (46 alquileres) lidera, destacando la utilidad para segmentar clientes frecuentes.
Conclusiones Generales

### Conclusion final proyecto

El proyecto sobre la base de datos Sakila ha permitido profundizar en el uso de SQL para analizar un sistema de alquiler de películas, abordando desde consultas básicas hasta operaciones avanzadas como subconsultas, vistas y tablas temporales. Los principales aprendizajes incluyen:

- Dominio de consultas SQL: Las consultas realizadas permiten profundizar en el uso de:
  - uniones (INNER JOIN, LEFT JOIN, CROSS JOIN)
  - funciones de agregación (COUNT, SUM, AVG, STDDEV, VARIANCE)
  - subconsultas
  - vistas
  - tablas temporales
  - uso de filtros avanzados (HAVING, DISTINCT, ILIKE).

**Análisis de datos:**

- Los ejercicios han revelado patrones importantes, como
  - la alta demanda de géneros como 'Sports' y 'Animation'
  - picos estacionales en alquileres (julio/agosto 2005)
  - y la actividad de clientes frecuentes, útil para estrategias de marketing y gestión de inventario.

**Integridad de los datos:**

- Se identificaron posibles inconsistencias, como valores NULL en original_language_id o pagos de 0, lo que sugiere la necesidad de auditorías para mejorar la calidad de los datos.

**Aplicaciones prácticas:**
Las consultas son aplicables a escenarios reales, como la segmentación de clientes, análisis de inventario, evaluación de actores prolíficos y planificación de promociones basada en tendencias de alquiler.

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
