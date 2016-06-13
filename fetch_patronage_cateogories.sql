CREATE or REPLACE FUNCTION fetch_patronage_categories(pid integer)
RETURNS text[] AS $$
DECLARE
    categories text[];
    
BEGIN  
    
    categories := array(
        SELECT
            category 
        FROM 
            donordata_patronagecategory as pc, 
            donordata_patronagecategory_donors as pcd
        WHERE 
            pcd.donor_id = pid AND
            pcd.patronagecategory_id = pc.id
    );
    RETURN categories;
    
        
END;  
$$ LANGUAGE plpgsql;  

