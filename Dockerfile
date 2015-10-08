FROM ubuntu:trusty
MAINTAINER Shago Vyacheslav <v.shago@corpwebgames.com>

COPY configure.sh /etc/profile.d/
RUN apt-get update \
	&& apt-get install -y python-pip unzip curl jq \
	&& pip install awscli \
	&& rm -rf /var/lib/apt/lists/* \
	&& mkdir -p /root/.aws \
	&& chmod +x /etc/profile.d/configure.sh
