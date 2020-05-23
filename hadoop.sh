HADOOP_HOME=/opt/hadoop/hadoop
JAVA_HOME=/opt/hadoop/jdk1.8.0_251
HIVE_HOME=/opt/hadoop/hive-0.11.0
HBASE_HOME=/opt/hadoop/hbase 
SCALA_HOME=/opt/hadoop/scala
SPARK_HOME=/opt/hadoop/spark
PATH=.:$SCALA_HOME/bin:$SPARK_HOME/bin:$HBASE_HOME/bin:$HIVE_HOME/bin:$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export HADOOP_HOME
export JAVA_HOME
export PATH
export CLASSPATH
export HIVE_HOME
export HBASE_HOME
export SCALA_HOME
export SPARK_HOME

