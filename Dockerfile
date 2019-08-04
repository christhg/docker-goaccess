FROM alpine:latest
MAINTAINER christ "christ.hg@gmail.com"
ARG buildno

RUN echo "Build number: $buildno"
RUN apk add --no-cache goaccess
RUN apk add --no-cache nginx
RUN mkdir /run/nginx

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY GeoIP/GeoIP.dat /usr/share/GeoIP/

EXPOSE 80
EXPOSE 443

#CMD nginx && sh && exit
CMD ["nginx", "-g", "daemon off;"]
