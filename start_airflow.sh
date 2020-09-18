export AIRFLOW_HOME=$(pwd)/airflow
export AIRFLOW_VAR_HOME=$(pwd)/airflow
export PORT=8080
airflow initdb
sleep 20
airflow scheduler &
sleep 5
airflow webserver -p $PORT
