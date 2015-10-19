#!/bin/bash

dirname="dir_$(date +%Y%m%d_%H.%M.%S)"
basedir='hdfs://quickstart.cloudera:8020/user/cloudera/oozie/basic/task'
dirpath="${basedir}/${dirname}"

hadoop fs -mkdir $dirpath
if [ $? == 0 ] ; then
  echo "Made directory $dirname"
else
  echo "Task failed"
fi
