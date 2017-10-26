FROM java:7

COPY src /root/javahelloworld/src
WORKDIR /root/javahelloworld/
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim

RUN mkdir /data/myvol -p
RUN echo "test de boris" > /data/myvol/test
VOLUME /data/myvol

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
