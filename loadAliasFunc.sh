
##--This is the command used to dump the donor info tables out of the django db that houses them.
#pg_dump -t donordata_donor -t donordata_patronagecategory -t donordata_patronagecategory_donors -t donordata_aliasmap -cO btcdonors > donordata_dump.sql


##--These load the dump, load the utility functions to get aliases and canonical name, and load the endpoints
sudo -u postgres psql hackoregon < donordata_dump.sql
sudo -u postgres psql hackoregon < fetch_patronage_cateogories.sql
sudo -u postgres psql hackoregon < getaliases.sql
sudo -u postgres psql hackoregon < get_transactions_by_alias.sql
