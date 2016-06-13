
sudo -u postgres psql hackoregon < donordata_dump_20160610.sql
sudo -u postgres psql hackoregon < getaliases.sql
sudo -u postgres psql hackoregon < get_transactions_by_alias.sql
