FROM phusion/baseimage:0.9.15

ENV HOME /root

RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

CMD ["/sbin/my_init"]

RUN apt-get update

RUN apt-get install -y build-essential python python-dev python-pip

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir /etc/service/luigid
ADD luigid.sh /etc/service/luigid/run
EXPOSE 8082

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
