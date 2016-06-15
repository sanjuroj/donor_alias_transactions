
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


DROP FUNCTION IF EXISTS http.get_donor_meta(name1 text, name2 text, alias_name text, name4 text);
CREATE FUNCTION http.get_donor_meta(name1 text, name2 text, alias_name text, name4 text) RETURNS json AS $$
DECLARE
  donorid integer;
  result json;
BEGIN
  
  donorid := (select id from donordata_donor where full_name = (select fetch_canonical_name(alias_name)));

  SELECT array_to_json(array_agg(row_to_json(qres, true)), true)
  FROM
    (
        SELECT donordata_donor.*, (select fetch_patronage_categories(donorid) as patronage_categories)
        FROM donordata_donor
        WHERE id = donorid
   ) qres
  INTO result;
  
  IF result IS NULL THEN
    result := to_json(alias_name::text);
  END IF;
  
  return result;
END;
$$ LANGUAGE plpgsql;
