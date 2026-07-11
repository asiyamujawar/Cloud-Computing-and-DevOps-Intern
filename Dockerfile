FROM nginx:alpine

COPY Portfolio/ /usr/share/nginx/html/

EXPOSE 80
