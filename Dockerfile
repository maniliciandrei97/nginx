FROM nginx:latest

WORKDIR	/usr/share/nginx/html/


COPY ./html/index.html .


