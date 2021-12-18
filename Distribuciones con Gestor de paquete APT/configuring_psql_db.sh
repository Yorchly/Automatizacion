# Creating user with pass
printf "Name of user: "
read user_name
printf "User password: "
read user_password
printf "Name of db: "
read db_name

printf "Creating user: "
sudo -u postgres psql -c "CREATE USER $user_name WITH ENCRYPTED PASSWORD '$user_password';"
printf "Creating database (UTF-8 and COLLATE = es_Es.UTF-8'): "
sudo -u postgres psql -c "CREATE DATABASE $db_name WITH OWNER $user_name ENCODING 'UTF-8' LC_COLLATE = 'es_ES.UTF-8' LC_CTYPE = 'es_ES.UTF-8' TEMPLATE template0;"
printf "Giving privileges on database '$db_name' to '$user_name'"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE $db_name TO $user_name;"
# Needed in order to make some tests in Django
sudo -u postgres psql -c "ALTER USER $user_name CREATEDB;"

# In order to access to database (in linux):
# sudo -u postgres psql
# To see all databse created, once you are in database:
# postgres=# \l