FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx
RUN rm /etc/nginx/nginx.conf
RUN mkdir /findhootel/

COPY /findhootel/ /findhootel/
COPY nginx.conf /etc/nginx/

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]