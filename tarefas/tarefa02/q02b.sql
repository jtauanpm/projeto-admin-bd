CREATE OR REPLACE FUNCTION ObterMediaIdadeDepartamento(codigo_depart INT)
RETURNS FLOAT
LANGUAGE plpgsql
AS
$$
DECLARE
	media FLOAT;
BEGIN
	SELECT AVG(idade_funcionario(f.codigo))
	INTO media
	FROM funcionario f
	WHERE f.depto = codigo_depart;
	
	RETURN media;
END;
$$;