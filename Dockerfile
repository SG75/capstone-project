FROM nginx:1.17.10

RUN rm -r /usr/share/nginx/html/*.*

COPY ./colorgame/ /usr/share/nginx/html




