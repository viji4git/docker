FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY /opt/project/default.conf /etc/nginx/conf.d
COPY /opt/project/app1/ /usr/share/nginx/html/app1
COPY /opt/project/app2test/ /usr/share/nginx/html/app2
EXPOSE 80
EXPOSE 8000
