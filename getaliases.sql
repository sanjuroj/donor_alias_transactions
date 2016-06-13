
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
    SELECT * INTO donor from donordata_donor where full_name = name;
    
    if found then

        alias_names := array(SELECT alias from donordata_aliasmap where parent_id = donor.id);
        alias_names := alias_names || donor.full_name::text;
    	return alias_names;
	
    else
        
        SELECT parent_id INTO donorid from donordata_aliasmap where alias = name;
        
        if found then
    	    alias_names := array(
    	        SELECT alias from donordata_aliasmap where parent_id = donorid
    	    );
    	    SELECT * INTO donor from donordata_donor where id = donorid;
    	    alias_names := alias_names || donor.full_name::text;
    	    return alias_names;

    	end if;
     
	
    end if;
        
END;  
$$ LANGUAGE plpgsql;  