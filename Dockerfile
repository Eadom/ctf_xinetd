FROM ubuntu:14.04

RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y lib32z1 xinetd

RUN useradd -m ctf

COPY ./bin/ /home/ctf/
COPY ./ctf.xinetd /etc/xinetd.d/ctf

RUN chown root:ctf /home/ctf/*
RUN chmod 750 /home/ctf/*
RUN chmod 740 /home/ctf/flag

WORKDIR /home/ctf

CMD ["bash", "-c", "/etc/init.d/xinetd start;sleep infinity;"]

EXPOSE 9999
