from airflow import DAG
import dagfactory
from airflow.models import Variable
airflow_home_path = Variable.get("home")

dag_factory = dagfactory.DagFactory(airflow_home_path+"/dags/tutorial_dag.yml")

dag_factory.clean_dags(globals())
dag_factory.generate_dags(globals())