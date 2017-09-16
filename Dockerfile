FROM nginx:1.13

RUN rm /etc/nginx/nginx.conf \
&& rm /etc/nginx/conf.d/default.conf

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./html /usr/share/nginx/html
