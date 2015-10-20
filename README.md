### oozie_sample

Make sure you have OOZIE_URL variable set. (You can also add this to `~/.bashrc`)

> export OOZIE_URL='http://quickstart.cloudera:11000/oozie'

Push these files to hdfs using

> hadoop fs -put oozie_sample/* oozie

Then start a coordinator job using

> oozie job -config coordinator.properties -run

View the jobs using web client at `http://quickstart.cloudera:8888/oozie/list_oozie_workflow`
