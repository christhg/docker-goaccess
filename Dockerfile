FROM a-goaccess:latest
MAINTAINER christ "christ.hg@gmail.com"
ARG buildno
RUN echo "Build number: $buildno"

COPY GeoIP/GeoIP.dat /usr/share/GeoIP/

EXPOSE 80
EXPOSE 443

#CMD nginx && sh && exit
CMD ["nginx", "-g", "daemon off;"]
