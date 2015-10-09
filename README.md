# jboss-remote-deployer
A small utility which allows to remotely deploy WAR applications  on JBoss

#Installation

* `mv jboss-as.sh /etc/init.d/`
* `chmod +x /etc/init.d/jboss-as.sh`

#Usage

From a different host, just execute `jboss-client.sh` script with next parameters:

* `./jboss-client.sh start` starts jboss server
* `./jboss-client.sh stop` stops jboss server
* `./jboss-client.sh log` allows you to interactive monitor server logs
* `./jboss-client.sh deploy <path_to_war>` allows you to remotely deploy war applications

Optionaly, you can `mv jboss-client.sh MyServer && mv MyServer /usr/local/bin`  in order to execute this tool in a more confortable way (no matter what path you are in).
