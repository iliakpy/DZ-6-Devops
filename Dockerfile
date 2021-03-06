FROM tomcat:9.0
RUN apt update && apt install -y maven
WORKDIR /home 
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR /home/boxfuse-sample-java-war-hello 
RUN mvn package
RUN CP /home/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps
EXPOSE 8080
