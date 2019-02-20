FROM tomcat
RUN bash -c 'ls'
RUN bash -c 'ls target'
RUN ["rm", "-rf", "/usr/local/tomcat/webapps/ROOT"]
ADD target/greenhouse-1.0.0.BUILD-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
