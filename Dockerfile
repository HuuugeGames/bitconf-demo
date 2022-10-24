FROM ubuntu:latest
RUN apt-get update && apt-get install --no-install-recommends -y nginx; \
 echo "daemon off;" >> /etc/nginx/nginx.conf \
RUN touch testfile
EXPOSE 80
CMD ["/usr/sbin/nginx"]