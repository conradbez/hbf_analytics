export AIRFLOW_HOME=$(pwd)/airflow
export AIRFLOW_VAR_HOME=$(pwd)/airflow
export PORT=8080
airflow initdb
sleep 20
airflow webserver -p $PORT -D
sleep 5
airflow scheduler -D