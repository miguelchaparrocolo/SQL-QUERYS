/* Sentencias INSERT para llenar cada una de las tablas de la base de datos de zoológicos */

  INSERT INTO animals (id, coommom_name, scientific_name, is_in_danger_of_extinction)
  VALUES ('1', 'gato', 'felis catus', false);

/* Consultar los 3 primeros zoológicos de Colombia */

  SELECT * FROM zoos ORDER BY id DESC LIMIT 3;

/* Listar los animales que son femeninos o hembras */

  SELECT * FROM animals WHERE sex = M
  SELECT * FROM animals WHERE sex = H

/* Listar todos los animales que están en peligro de extinción. */

  SELECT * FROM animals WHERE is_in_danger_of_extinction = true

/* Consultar los zoológicos que tienen una área en metros cuadrados entre 100 y 450 */

  SELECT * FROM zoos WHERE area > 1000 AND area < 4500;

/* Consultar cual es el zoológico con el presupuesto más alto (MÁX) */

  SELECT MAX (budget) max_budget FROM zoos;

/* Mostrar cuál es el zoológico con el área más pequeña. */

  SELECT MIN (area) min_area FROM zoos;

/* Listar los animales en via de extincion del primer zoológico que se encuentra en África  */

  SELECT is_in_danger_of_extinction, city_id FROM animals, zoos WHERE is_in_danger_of_extinction = true AND city_id = 4 DESC LIMIT 1,

/* Los zoológicos que tengan presupuesto inferior a 500, actualizar su presupuesto a 750 */

  UPDATE budget SET budget = '7500' WHERE budget < '5000';
