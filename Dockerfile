FROM nginx:1.31.6-alpine

RUN apk update

WORKDIR /app

RUN apk add --no-cache git \
	bash \
	wget \
	build-base

RUN apk cache purge

COPY /static /usr/share/nginx/html/static
