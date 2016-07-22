FROM ubuntu:xenial

MAINTAINER JEP

RUN apt-get update && \
    apt-get install -y nginx nginx-extras && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD sites-enabled/ /etc/nginx/sites-enabled/
ADD scripts/ /scripts/
ADD app/ /app/
ADD certs/ /etc/certs
ADD flags/ /flags

RUN chmod +x /scripts/init.sh
RUN bash -C 'scripts/init.sh';'bash'

EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
