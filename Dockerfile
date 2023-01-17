FROM tomcat:10-jdk11-openjdk
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY cnwork.jar cnwork.jar
EXPOSE 80
ENTRYPOINT exec java $JAVA_OPTS -jar cnwork.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar cnwork.jar
