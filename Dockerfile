FROM openjdk:8-jdk-alpine
#VOLUME /tmp
EXPOSE 8000
RUN cd /var/lib/jenkins/workspace/hackathan_first_job_2020/
RUN pwd
ADD target/*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
