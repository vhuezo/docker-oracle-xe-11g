FROM ubuntu:18.04

MAINTAINER HUEZO <vhuezo@hightech-corp.com>

RUN apt update && apt install nano vim -y

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && tail -f /dev/null
