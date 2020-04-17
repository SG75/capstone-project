FROM nginx:latest

RUN rm -r /usr/share/nginx/html/*.*

COPY ./colorgame/ /usr/share/nginx/html



