FROM nginx:latest
RUN sed -i 's/nginx/NYC555/g' /usr/share/nginx/html/index.html
EXPOSE 80
