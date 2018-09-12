/* Ejemplo de la tabla alumnos antes de actualizaciones
+----+----------------+-------------------+------------+------------+--------------------+--------+------------------+-----------+------------+
| id | no_control     | nombre            | paterno    | materno    | curp               | genero | fecha_nacimiento | estado_2c | generacion |
+----+----------------+-------------------+------------+------------+--------------------+--------+------------------+-----------+------------+
|  1 | 17325061080099 | MARIANA           | CHAIDES    | CERVANTES  | CACM020925MSLHRRA6 | NULL   | NULL             | NULL      | NULL       |
|  2 | 17325061080124 | MELINA SADDAY     | PEREZ      | VIZCARRA   | MAZG020301HSLRMRA3 | NULL   | NULL             | NULL      | NULL       |
|  3 | 17325061080125 | MALITZIN ANAYANCI | RUBIO      | CAMACHO    | RUCM020819MSLBMLA1 | NULL   | NULL             | NULL      | NULL       |
|  4 | 17325061080127 | KARLA GUADALUPE   | SANDOVAL   | AYALA      | SAAK020204MSLNYRA0 | NULL   | NULL             | NULL      | NULL       |
|  5 | 17325061080132 | IRMA GUADALUPE    | VEA        | SALAZAR    | VESI020618MSLXLRA5 | NULL   | NULL             | NULL      | NULL       |
... */

/* 01: Realiza una consulta que muestre el nombre y
       los apellidos de todos los alumnos
+-------------------+------------+------------+
| nombre            | paterno    | materno    |
+-------------------+------------+------------+
| MARIANA           | CHAIDES    | CERVANTES  |
| MELINA SADDAY     | PEREZ      | VIZCARRA   |
| MALITZIN ANAYANCI | RUBIO      | CAMACHO    |
| KARLA GUADALUPE   | SANDOVAL   | AYALA      |
... */


/* 02: Realiza una consulta que muestre el número de control,
       nombre y apellidos de todos los alumnos, ordenados por
       apellido paterno y materno (instrucción utilizada: ORDER BY)
+----------------+-------------------+------------+------------+
| no_control     | nombre            | paterno    | materno    |
+----------------+-------------------+------------+------------+
| 17325061080136 | JUSTIN GABRIEL    | ABOITE     | GONZALEZ   |
| 17325061080367 | JOSE CARLOS       | ALVAREZ    | LOPEZ      |
| 17325061080322 | JESUS PAUL        | ALVAREZ    | LOPEZ      |
| 17325061080142 | EDWIN             | BERRELLEZA | SOTELO     |
... */


/* 03: Realiza una consulta que muestre número de control,
       nombre, apellidos y curp de todos los alumnos, ordenados
       por la curp de forma descendente de la Z a la A
       (instrucción utilizada: ORDER BY ... ASC|DESC)
+----------------+-------------------+------------+------------+--------------------+
| no_control     | nombre            | paterno    | materno    | curp               |
+----------------+-------------------+------------+------------+--------------------+
| 17325061080132 | IRMA GUADALUPE    | VEA        | SALAZAR    | VESI020618MSLXLRA5 |
| 17325061080134 | BRAYAN JACOBO     | VERDUGO    | GALVEZ     | VEGB021021HSLRLRA5 |
| 17325061080317 | MAYRA ELIZETH     | VEA        | FALOMIR    | VEFM010921MBCXLYA1 |
| 17325061080231 | YERCO SEBASTIAN   | VALENZUELA | VIDOVICH   | VAVY011220HSLLDRA4 |
... */


/* 04: Realiza una consulta que muestre 10 números de
       control solamente (instrucción utilizada: LIMIT)
+----------------+
| no_control     |
+----------------+
| 17325061080099 |
| 17325061080124 |
| 17325061080125 |
| 17325061080127 |
| 17325061080132 |
| 17325061080134 |
| 17325061080136 |
| 17325061080142 |
| 17325061080146 |
| 17325061080148 |
+----------------+ */


/* 05: Realiza una consulta que actualice en la tabla alumnos
       la columna `genero` para que diga si es HOMBRE o MUJER,
       utiliza el caracter 11 de la curp para realizar la
       actualización (si es H:HOMBRE si es M:MUJER), el campo
       `genero` sólo acepta 'HOMBRE', 'MUJER' ó NULL
       (instrucción utilizada: SUBSTR|SUBSTRING)
+----------------+---------------+---------+-----------+--------------------+--------+
| no_control     | nombre        | paterno | materno   | curp               | genero |
+----------------+---------------+---------+-----------+--------------------+--------+
| 17325061080099 | MARIANA       | CHAIDES | CERVANTES | CACM020925MSLHRRA6 | MUJER  |
| 17325061080124 | MELINA SADDAY | PEREZ   | VIZCARRA  | MAZG020301HSLRMRA3 | HOMBRE |
+----------------+---------------+---------+-----------+--------------------+--------+
... */


/* 06: Realiza una consulta que actualice en la tabla alumnos
       la columna `estado_2c`, utiliza los caracteres 12-13
       de la columna `curp` para obtener el valor a guardar
       (instrucción utilizada: SUBSTR|SUBSTRING)
+----------------+---------------+---------+-----------+--------------------+--------+-----------+
| no_control     | nombre        | paterno | materno   | curp               | genero | estado_2c |
+----------------+---------------+---------+-----------+--------------------+--------+-----------+
| 17325061080099 | MARIANA       | CHAIDES | CERVANTES | CACM020925MSLHRRA6 | MUJER  | SL        |
| 17325061080124 | MELINA SADDAY | PEREZ   | VIZCARRA  | MAZG020301HSLRMRA3 | HOMBRE | SL        |
+----------------+---------------+---------+-----------+--------------------+--------+-----------+
... */


/* 07: Realiza una consulta que actualice en la tabla alumnos
       la columna `fecha_nacimiento`, utiliza los caracteres
       5-10 de la columna `curp` para obtener el valor de la
       fecha de nacimiento (instrucción utilizada: DATE)
+----------------+---------------+---------+-----------+--------------------+--------+-----------+------------------+
| no_control     | nombre        | paterno | materno   | curp               | genero | estado_2c | fecha_nacimiento |
+----------------+---------------+---------+-----------+--------------------+--------+-----------+------------------+
| 17325061080099 | MARIANA       | CHAIDES | CERVANTES | CACM020925MSLHRRA6 | MUJER  | SL        | 2002-09-25       |
| 17325061080124 | MELINA SADDAY | PEREZ   | VIZCARRA  | MAZG020301HSLRMRA3 | HOMBRE | SL        | 2002-03-01       |
+----------------+---------------+---------+-----------+--------------------+--------+-----------+------------------+
... */


/* 08: Realiza una consulta que actualice en la tabla alumnos
       la columna `generacion`, utiliza los caracteres 1-2 de
       la columna `no_control` para obtener el año de ingreso
       al plantel, la generación se compone a partir del año
       de ingreso hasta 3 años despues, por ejemplo alguien
       que entro en 2017 su generación sería 2017-2020
       (instrucción utilizada: CONCAT, SUBSTR|SUBSTRING|LEFT)
+----------------+---------------+---------+-----------+--------------------+--------+-----------+------------------+------------+
| no_control     | nombre        | paterno | materno   | curp               | genero | estado_2c | fecha_nacimiento | generacion |
+----------------+---------------+---------+-----------+--------------------+--------+-----------+------------------+------------+
| 17325061080099 | MARIANA       | CHAIDES | CERVANTES | CACM020925MSLHRRA6 | MUJER  | SL        | 2002-09-25       | 2017-2020  |
| 17325061080124 | MELINA SADDAY | PEREZ   | VIZCARRA  | MAZG020301HSLRMRA3 | HOMBRE | SL        | 2002-03-01       | 2017-2020  |
+----------------+---------------+---------+-----------+--------------------+--------+-----------+------------------+------------+
...*/


/* 09: Realiza una consulta que muestre el nombre y apellidos
       en una sola columna con el título 'nombre del alumno'
       de los alumnos que son mujeres solamente, ordenados
       por apellido paterno y materno
       (instrucción utilizada: CONCAT)
+-------------------------------------+
| nombre del alumno                   |
+-------------------------------------+
| JUSTIN GABRIEL ABOITE GONZALEZ      |
| JOSE CARLOS ALVAREZ LOPEZ           |
| JESUS PAUL ALVAREZ LOPEZ            |
| EDWIN BERRELLEZA SOTELO             |
| SURIEL ADRIAN BOJORQUEZ ARMENTA     |
| NICOLE GUADALUPE CARDENAS PEREZ     |
| ANDRES ANTONIO CASTRO BELTRAN       |
... */


/* 10: Realiza una consulta que muestre el numero de control,
       nombre, apellido paterno y materno en una sola columna
       con el título 'apellidos', de los alumnos que
       no nacieron en sinaloa (instrucción utilizada: CONCAT)
+----------------+----------------+------------------+
| no_control     | nombre         | apellidos        |
+----------------+----------------+------------------+
| 17325061080192 | JOSUE          | CASTRO LOPEZ     |
| 17325061080308 | MANUEL ALFONSO | ORNELAS MARTINEZ |
| 17325061080317 | MAYRA ELIZETH  | VEA FALOMIR      |
+----------------+----------------+------------------+
... */


/* 11: Realiza una consulta que muestre todas las columnas
       de todos los alumnos, ya con todas las actualizaciones
+----+----------------+-------------------+------------+------------+--------------------+--------+------------------+-----------+------------+
| id | no_control     | nombre            | paterno    | materno    | curp               | genero | fecha_nacimiento | estado_2c | generacion |
+----+----------------+-------------------+------------+------------+--------------------+--------+------------------+-----------+------------+
|  1 | 17325061080099 | MARIANA           | CHAIDES    | CERVANTES  | CACM020925MSLHRRA6 | MUJER  | 2002-09-25       | SL        | 2017-2020  |
|  2 | 17325061080124 | MELINA SADDAY     | PEREZ      | VIZCARRA   | MAZG020301HSLRMRA3 | HOMBRE | 2002-03-01       | SL        | 2017-2020  |
|  3 | 17325061080125 | MALITZIN ANAYANCI | RUBIO      | CAMACHO    | RUCM020819MSLBMLA1 | MUJER  | 2002-08-19       | SL        | 2017-2020  |
|  4 | 17325061080127 | KARLA GUADALUPE   | SANDOVAL   | AYALA      | SAAK020204MSLNYRA0 | MUJER  | 2002-02-04       | SL        | 2017-2020  |
|  5 | 17325061080132 | IRMA GUADALUPE    | VEA        | SALAZAR    | VESI020618MSLXLRA5 | MUJER  | 2002-06-18       | SL        | 2017-2020  |
... */
