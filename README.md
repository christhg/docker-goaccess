# docker-goaccess

## step1
docker build . --build-arg buildno=1 -t "christhg/goaccess"

## step2
docker-compose up -d

## step3 
vi /etc/crontab
*/5 * * * * root /root/docker-goaccess/goaccess/goaccess.sh > /dev/null 2>&1
