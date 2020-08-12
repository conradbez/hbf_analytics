

dokku apps:create hbf


# sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git postgres
dokku postgres:create hbf

dokku postgres:link hbf hbf


# set airflow database variable
dokku config:set hbf AIRFLOW__CORE__SQL_ALCHEMY_CONN="postgres://postgres:72325126e072a2b62a52613b27813a79@dokku-postgres-hbf:5432/hbf"

dokku config:set hbf AIRFLOW__CORE__LOAD_EXAMPLES=False

dokku config:set hbf AIRFLOW_HOME=/app

dokku config:set hbf AIRFLOW__CORE__FERNET_KEY="iEyZLCe5fOC1bMg-jVwC9o96mHPUxzMWlsboeqOyS3Q="

echo "web: airflow initdb" > Procfile

# git add git push

echo "web: airflow webserver --port $PORT" > Procfile

