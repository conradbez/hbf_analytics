

dokku apps:create hbf


# sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git postgres
dokku postgres:create hbf

dokku postgres:link hbf hbf


# set airflow database variable
dokku config:set hbf AIRFLOW__CORE__SQL_ALCHEMY_CONN="postgres://postgres:72325126e072a2b62a52613b27813a79@dokku-postgres-hbf:5432/hbf"

dokku config:set hbf AIRFLOW__CORE__LOAD_EXAMPLES=False

dokku config:set hbf AIRFLOW_HOME=/app

dokku config:set hbf AIRFLOW__CORE__FERNET_KEY="iEyZLCe5fOC1bMg-jVwC9o96mHPUxzMWlsboeqOyS3Q="


# local
echo "web: airflow initdb" > Procfile

# git add git push

# local
echo "web: airflow webserver --port $PORT" > Procfile


# TODO
# dokku config:set hbf AIRFLOW__WEBSERVER__AUTHENTICATE=True
# dokku config:set hbf AIRFLOW__WEBSERVER__AUTH_BACKEND=airflow.contrib.auth.backends.password_auth
# python create_airflow_user.py
# import airflow
# from airflow import models, settings
# from airflow.contrib.auth.backends.password_auth import PasswordUser
# user = PasswordUser(models.User())
# user.username = 'new_user_name'
# user.email = 'new_user_email@example.com'
# user.password = 'set_the_password'
# session = settings.Session()
# session.add(user)
# session.commit()
# session.close()
# exit()

# local
echo "web: airflow webserver --port $PORT --daemon & airflow scheduler" > Procfile



