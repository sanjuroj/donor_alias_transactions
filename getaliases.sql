
CREATE or REPLACE FUNCTION getaliases(name text)
RETURNS text[] AS $$
DECLARE
    donor donordata_donor%ROWTYPE;
    donorid integer;
    alias_names text[] DEFAULT '{}';
    --name text := 'Kathy Jones-McCann';
    --name text := 'Terrance J Aarnio';
    --name text := 'Sylvi C. Tuttle';
    --name text := 'Norman Brenden';

BEGIN  
    SELECT * INTO donor FROM donordata_donor WHERE full_name = name;
    
    IF FOUND THEN

        alias_names := array(SELECT alias FROM donordata_aliasmap WHERE parent_id = donor.id);
        alias_names := alias_names || donor.full_name::text;
    	return alias_names;
	
    else
        
        SELECT parent_id INTO donorid FROM donordata_aliasmap WHERE alias = name;
        
        IF FOUND THEN
    	    alias_names := array(
    	        SELECT alias FROM donordata_aliasmap WHERE parent_id = donorid
    	    );
    	    SELECT * INTO donor FROM donordata_donor WHERE id = donorid;
    	    alias_names := alias_names || donor.full_name::text;
    	    return alias_names;

    	END IF;
     
	
    END IF;
        
END;  
$$ LANGUAGE plpgsql;  


CREATE or REPLACE FUNCTION fetch_canonical_name(name text)
RETURNS text AS $$
DECLARE
    donor_name text := '';
    donorid integer;
    --name text := 'Kathy Jones-McCann';
    --name text := 'Terrance J Aarnio';
    --name text := 'Sylvi C. Tuttle';
    --name text := 'Norman Brenden';

BEGIN  
    SELECT full_name INTO donor_name FROM donordata_donor WHERE full_name = name;
    
    IF FOUND THEN
        return name;
    
    else
        SELECT parent_id INTO donorid FROM donordata_aliasmap WHERE alias = name;
        IF FOUND THEN
            SELECT full_name INTO donor_name FROM donordata_donor WHERE id = donorid;
            return donor_name;

        END IF;
     
    
    END IF;
        
END;  
$$ LANGUAGE plpgsql;  