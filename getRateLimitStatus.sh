#!/bin/sh
MEM_ARGS="-Xms30m -Xmx30m"
CLASSPATH=:./twitter4j-core-2.2.6.jar:./twitter4j-examples-2.2.6

RUN_CMD="$JAVA_HOME/bin/java $MEM_ARGS -cp $CLASSPATH twitter4j.examples.account.GetRateLimitStatus"
#echo $RUN_CMD ${1+"$@"}
exec $RUN_CMD ${1+"$@"}
