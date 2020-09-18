web: sleep 4 && airflow webserver -p $PORT -D & sleep 20 && airflow scheduler
release: export AIRFLOW_HOME=$(pwd)/airflow && airflow initdb