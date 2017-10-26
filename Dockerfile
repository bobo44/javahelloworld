FROM java:7

COPY src /root/javahelloworld/src
WORKDIR /root/javahelloworld/
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
