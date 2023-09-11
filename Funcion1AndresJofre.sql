use proyectofinaljofre;

DELIMITER //
CREATE FUNCTION Total_bodega(bodega INT)
  RETURNS INT
  deterministic
  BEGIN
    DECLARE CANTIDAD_TOTAL INT;
    SET CANTIDAD_TOTAL = (
      SELECT SUM(cantidad_a)
      FROM almacenamiento
      WHERE nr_bodega = bodega
    );
    RETURN CANTIDAD_TOTAL;
  END
  //