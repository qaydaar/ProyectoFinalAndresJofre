use proyectofinaljofre;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenarAlmacenamiento`(
  IN p_campo_orden VARCHAR(50),
  IN p_tipo_orden VARCHAR(10)
)
BEGIN
  SET @sql_query = CONCAT('SELECT * FROM almacenamiento ORDER BY ', p_campo_orden, ' ', p_tipo_orden);
  PREPARE stmt FROM @sql_query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END$$
DELIMITER ;


