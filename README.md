# pig-hive
Docker file to add Pig and Hive to sequenceiq/hadoop-docker:2.7.1

If you have a directory called Data with files in it then running 

`docker run --name hadoop-test -p 50070:50070  -p 8088:8088 -p 10020:10020 -v "$PWD/data:/home" -it farberg/pig-hive /etc/bootstrap.sh -bash`


Will map that directory to /home inside the docker machine

The ports 50070 and 8088 allow access to the HDFS and resource manager interfaces from outside the docker machine (http:0.0.0.0:8088 for instance)

Port 10020 might be needed for pig access (not tested)
