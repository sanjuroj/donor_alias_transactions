DROP FUNCTION IF EXISTS http.get_transactions_by_donor(name1 text, name2 text, nameAlias text);
CREATE FUNCTION http.get_transactions_by_donor(name1 text, name2 text, nameAlias text) RETURNS json AS $$
DECLARE
  result json;
BEGIN

  SELECT array_to_json(array_agg(row_to_json(qres, true)), true)
  FROM
    (
        SELECT *
        FROM cc_working_transactions
        WHERE contributor_payee = ANY (getaliases(nameAlias))
   ) qres
  INTO result;

  return result;
END;
$$ LANGUAGE plpgsql;