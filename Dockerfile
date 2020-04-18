FROM nginx:1.17.10

RUN rm -r /usr/share/nginx/html/*.*

COPY ./colorgame/ /usr/share/nginx/html

## adding aqua microscanner for checking vulnerabilities 
ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
RUN ./microscanner ZWM0NzkxMThjNjdk



