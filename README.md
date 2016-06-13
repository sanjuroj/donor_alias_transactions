Creates function for getting donor aliases.

Also creates a function for getting transactions for a doner.



-Do we need the id seq tables from donordata?  
-What should the response be if a name or data is not found? 
-Are the flags -Oc ok in the dump command?  -O omits the owner info from the dump and -c drops everything related to the donordata tables before importing them
-Are all those set commands ok in the dump file 