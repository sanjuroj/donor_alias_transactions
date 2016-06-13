
DROP FUNCTION IF EXISTS http.get_transactions_by_alias(name1 text, name2 text, alias_name text, name4 text);
CREATE FUNCTION http.get_transactions_by_alias(name1 text, name2 text, alias_name text, name4 text) RETURNS json AS $$
DECLARE
  result json;
BEGIN

  SELECT array_to_json(array_agg(row_to_json(qres, true)), true)
  FROM
    (
        SELECT *
        FROM cc_working_transactions
        WHERE contributor_payee::text = ANY (select(unnest(getaliases(alias_name))))
   ) qres
  INTO result;

  return result;
END;
$$ LANGUAGE plpgsql;
