FROM ubuntu:16.04
MAINTAINER Thomas Walker "thwalker@vt.edu"
ENV REFRESHED_AT 2018-01-20

RUN apt-get -yqq update
RUN apt-get -yqq install wget

VOLUME [ "/var/lib/tomcat7/webapps/" ]
WORKDIR /var/lib/tomcat7/webapps/

ENTRYPOINT [ "wget" ]
CMD [ "-?" ]
