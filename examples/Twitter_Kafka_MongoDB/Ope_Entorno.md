
# Jugando con el entorno de pruebas.

Podmeos ver el detalle de los contenedores de la siguiente forma:
```bash
vthot4@proton:~/NIFI/poc_nifi/examples/Twitter_Kafka_MongoDB$ docker-compose top
Poc_nifi_kafka
UID     PID    PPID    C   STIME   TTY     TIME                                                                    CMD
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
root   18722   18675   1   13:59   ?     00:00:34   java -Xmx1G -Xms1G -server -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35
                                                    -XX:+ExplicitGCInvokesConcurrent -Djava.awt.headless=true -Xloggc:/var/log/kafka/kafkaServer-gc.log -verbose:gc
                                                    -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCTimeStamps -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=10
                                                    -XX:GCLogFileSize=100M -Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.authenticate=false
                                                    -Dcom.sun.management.jmxremote.ssl=false -Dkafka.logs.dir=/var/log/kafka -Dlog4j.configuration=file:/etc/kafka/log4j.properties
                                                    -cp /usr/bin/../share/java/kafka/*:/usr/bin/../share/java/confluent-support-metrics/*:/usr/share/java/confluent-support-metrics/*
                                                    io.confluent.support.metrics.SupportedKafka /etc/kafka/kafka.properties

Poc_nifi_mongo_express
UID     PID    PPID    C   STIME   TTY     TIME                         CMD
-----------------------------------------------------------------------------------------------
root   18740   18696   0   13:59   ?     00:00:00   tini -- /docker-entrypoint.sh mongo-express
root   18948   18740   0   13:59   ?     00:00:02   node app

Poc_nifi_mongodb
UID    PID    PPID    C   STIME   TTY     TIME             CMD
-----------------------------------------------------------------------
999   18304   18229   0   13:59   ?     00:00:15   mongod --bind_ip_all

Poc_nifi_nifi
 UID      PID    PPID    C   STIME   TTY     TIME                                                                   CMD
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vthot4   18328   18272   0   13:59   ?     00:00:00   /bin/sh -e ../scripts/start.sh
vthot4   18615   18328   0   13:59   ?     00:00:00   tail -F /opt/nifi/nifi-current/logs/nifi-app.log
vthot4   18616   18328   0   13:59   ?     00:00:04   /docker-java-home/jre/bin/java -cp /opt/nifi/nifi-current/conf:/opt/nifi/nifi-current/lib/bootstrap/* -Xms12m -Xmx24m
                                                      -Dorg.apache.nifi.bootstrap.config.log.dir=/opt/nifi/nifi-current/logs
                                                      -Dorg.apache.nifi.bootstrap.config.pid.dir=/opt/nifi/nifi-current/run -Dorg.apache.nifi.bootstrap.config.file=/opt/nifi/nifi-
                                                      current/conf/bootstrap.conf org.apache.nifi.bootstrap.RunNiFi run
vthot4   18878   18616   6   13:59   ?     00:03:52   /docker-java-home/jre/bin/java -classpath /opt/nifi/nifi-current/./conf:/opt/nifi/nifi-current/./lib/log4j-over-
                                                      slf4j-1.7.25.jar:/opt/nifi/nifi-current/./lib/nifi-properties-1.8.0.jar:/opt/nifi/nifi-current/./lib/nifi-
                                                      runtime-1.8.0.jar:/opt/nifi/nifi-current/./lib/slf4j-api-1.7.25.jar:/opt/nifi/nifi-current/./lib/jcl-over-
                                                      slf4j-1.7.25.jar:/opt/nifi/nifi-current/./lib/nifi-nar-utils-1.8.0.jar:/opt/nifi/nifi-current/./lib/logback-
                                                      classic-1.2.3.jar:/opt/nifi/nifi-current/./lib/javax.servlet-api-3.1.0.jar:/opt/nifi/nifi-current/./lib/nifi-
                                                      api-1.8.0.jar:/opt/nifi/nifi-current/./lib/nifi-framework-api-1.8.0.jar:/opt/nifi/nifi-current/./lib/logback-
                                                      core-1.2.3.jar:/opt/nifi/nifi-current/./lib/jetty-schemas-3.1.jar:/opt/nifi/nifi-current/./lib/jul-to-slf4j-1.7.25.jar
                                                      -Dorg.apache.jasper.compiler.disablejsr199=true -Xmx512m -Xms512m -Djavax.security.auth.useSubjectCredsOnly=true
                                                      -Djava.security.egd=file:/dev/urandom -Dsun.net.http.allowRestrictedHeaders=true -Djava.net.preferIPv4Stack=true
                                                      -Djava.awt.headless=true -XX:+UseG1GC -Djava.protocol.handler.pkgs=sun.net.www.protocol
                                                      -Dnifi.properties.file.path=/opt/nifi/nifi-current/./conf/nifi.properties -Dnifi.bootstrap.listen.port=43073 -Dapp=NiFi
                                                      -Dorg.apache.nifi.bootstrap.config.log.dir=/opt/nifi/nifi-current/logs org.apache.nifi.NiFi

Poc_nifi_zookeeper
UID     PID    PPID    C   STIME   TTY     TIME                                                                    CMD
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
root   18270   18208   0   13:59   ?     00:00:06   java -Xmx512M -Xms512M -server -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35
                                                    -XX:+ExplicitGCInvokesConcurrent -Djava.awt.headless=true -Xloggc:/var/log/kafka/zookeeper-gc.log -verbose:gc -XX:+PrintGCDetails
                                                    -XX:+PrintGCDateStamps -XX:+PrintGCTimeStamps -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=10 -XX:GCLogFileSize=100M
                                                    -Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false
                                                    -Dkafka.logs.dir=/var/log/kafka -Dlog4j.configuration=file:/etc/kafka/log4j.properties -cp
                                                    /usr/bin/../share/java/kafka/*:/usr/bin/../share/java/confluent-support-metrics/*:/usr/share/java/confluent-support-metrics/*
                                                    org.apache.zookeeper.server.quorum.QuorumPeerMain /etc/kafka/zookeeper.properties

```
