FROM ubuntu:trusty
MAINTAINER Shago Vyacheslav <v.shago@corpwebgames.com>
RUN apt-get update \
	&& apt-get install -y python-pip unzip \
	&& pip install awscli \
	&& rm -rf /var/lib/apt/lists/*

COPY configure.sh /
RUN chmod +x configure.sh \
	&& ./configure.sh
