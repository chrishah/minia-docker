FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y \
		wget \
		build-essential=12.4ubuntu1 

#install flash
WORKDIR /usr/src
RUN mkdir minia && cd minia && \
	wget https://github.com/GATB/minia/releases/download/v3.2.4/minia-v3.2.4-bin-Linux.tar.gz && \
	tar xvfz minia-v3.2.4-bin-Linux.tar.gz

ENV PATH="/usr/src/minia/minia-v3.2.4-bin-Linux/bin:$PATH"
