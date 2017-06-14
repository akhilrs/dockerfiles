FROM ubuntu:16.04
MAINTAINER Akhil R S "https://akhil.rs"
# make sure the package repository is up to date and update ubuntu
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install locales && \
  locale-gen en_US.UTF-8
RUN apt-get install -y curl git htop man software-properties-common \
    unzip vim wget python-pip libpq-dev python-dev libjpeg-dev
RUN add-apt-repository ppa:ubuntugis/ubuntugis-unstable -y
RUN apt-get update

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV HOME /root
RUN apt-get -y install libxslt1-dev libxml2-dev postgis wkhtmltopdf xvfb
RUN echo -e '#!/bin/bash\nxvfb-run -a --server- args="-screen 0, 1024x768x24" /usr/bin/wkhtmltopdf -q $*' > /usr/bin/wkhtmltopdf.sh
RUN chmod a+x /usr/bin/wkhtmltopdf.sh
RUN ln -s /usr/bin/wkhtmltopdf.sh /usr/local/bin/wkhtmltopdf
