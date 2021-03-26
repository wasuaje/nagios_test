#!/bin/sh
MEM_ARGS="-Xms30m -Xmx30m"
CLASSPATH=:./twitter4j-core-2.2.6.jar:./twitter4j-examples-2.2.6

echo $JAVA_HOME/bin/java $MEM_ARGS -cp $CLASSPATH twitter4j.examples.oauth.GetAccessToken "$@"
$JAVA_HOME/bin/java $MEM_ARGS -cp $CLASSPATH twitter4j.examples.oauth.GetAccessToken "$@"
