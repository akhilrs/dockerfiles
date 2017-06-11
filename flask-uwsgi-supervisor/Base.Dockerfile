FROM alpine
MAINTAINER Akhil R S "https://akhil.rs"

# basic flask environment
RUN apk add --no-cache bash supervisor py2-pip libpq postgresql-dev gcc python-dev musl-dev linux-headers \
	&& pip2 install --upgrade pip \
	&& pip2 install uwsgi

# application folder
ENV APP_DIR /app

RUN mkdir ${APP_DIR}
WORKDIR ${APP_DIR}

EXPOSE 5000
