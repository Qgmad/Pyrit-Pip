FROM debian:stable

LABEL Qgmad < qsehrawat@gmail.com >

ENV Pyrit Docker 1.1

RUN apt-get update && \
    apt-get install -y sudo python2 git

RUN ln -s /usr/bin/python2 /usr/bin/python

RUN git clone https://github.com/Qgmad/Pyrit-Pip.git

WORKDIR /Pyrit-Pip

RUN python requirements.py