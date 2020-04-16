FROM nginx

RUN rm -r /usr/share/nginx/html/*.*

COPY ./ColourGame/ /usr/share/nginx/html

