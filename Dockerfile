FROM nginx:latest
COPY . /usr/share/nginx/html
CMD ["ping","- c 5","wwww.google.com"]