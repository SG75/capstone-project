FROM nginx

RUN rm -r /usr/share/nginx/html/*.*

COPY ./ColourGame/ /usr/share/nginx/html

RUN mv /usr/share/nginx/html/colourGame.html index.html

