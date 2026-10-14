FROM nginx:1.31.6-alpine

RUN apk update

WORKDIR /app

COPY /nginx/etc/nginx/nginx.conf /etc/nginx

RUN apk add --no-cache git \
	bash \
	wget \
	build-base

RUN apk cache purge

COPY /static /usr/share/nginx/html
