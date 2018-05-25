FROM ubuntu:latest
MAINTAINER Luke Walker "alexpiccolo@gmail.com"

RUN mkdir -p /solr \
	&& apt-get -y update \
  && apt-get -y install wget openjdk-8-jdk

WORKDIR /solr
RUN wget 'http://archive.apache.org/dist/lucene/solr/4.7.0/solr-4.7.0.tgz'
RUN tar zxf solr-4.7.0.tgz


EXPOSE 8983/tcp
