FROM debian:jessie
MAINTAINER thegitfather <baranowski@joinpoint.org>

RUN apt-get update && apt-get install -y \
    ike \
    net-tools \
    socat \
    psmisc \
    git \
    bash-completion \
    nano

WORKDIR /root

COPY startup.sh /root
#COPY startup-socat.sh /root

COPY sites /root/.ike/sites

ENTRYPOINT ["/root/startup.sh"]
#ENTRYPOINT ["/root/startup-socat.sh"]
