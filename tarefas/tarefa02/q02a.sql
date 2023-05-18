CREATE OR REPLACE FUNCTION ObterIdadeFuncionario(codigo_func INT)
RETURNS INT
LANGUAGE plpgsql
AS
$$
DECLARE
	idade INTEGER;
BEGIN
	SELECT DATE_PART('YEAR', AGE(datanasc))
	INTO idade
	FROM funcionario
	WHERE codigo = codigo_func;
	
	RETURN idade;
END;
$$;