--DO LANGUAGE plpgsql $$
--name text := 'Norman Brenden';
CREATE or REPLACE FUNCTION getaliases(name text)
RETURNS text[] AS $$
DECLARE
    donor donordata_donor%ROWTYPE;
    donorid integer;
    alias_names text[] DEFAULT '{}';
    --name text := 'Kathy Jones-McCann';
    --name text := 'Terrance J Aarnio';
    --name text := 'Sylvi C. Tuttle';

BEGIN  
    SELECT * INTO donor from donordata_donor where full_name = name;
    
    if found then
       --raise notice 'donor = %', donor;
       alias_names := array(
	    SELECT alias from donordata_aliasmap where parent_id = donor.id
	);
	alias_names := alias_names || donor.full_name::text;
	--raise notice 'alias names = %', alias_names;
	return alias_names;
	
    else
        SELECT parent_id INTO donorid from donordata_aliasmap where alias = name;
        if found then
	       --raise notice 'aliasid = %', donorid;
    	    alias_names := array(
    	        SELECT alias from donordata_aliasmap where parent_id = donorid
    	    );
    	    --raise notice 'initial alias names = %', alias_names;
    	    SELECT * INTO donor from donordata_donor where id = donorid;
    	    alias_names := alias_names || donor.full_name::text;
    	    --raise notice 'final alias names = %', alias_names;
    	    return alias_names;
	    
    	--else
    	    --raise notice 'name not found', aliasid;
    	end if;
     
	
    end if;
        
END;  
$$ LANGUAGE plpgsql;  