FROM nginx:latest
COPY . /usr/share/nginx/html
RUN apt update && apt install -y net-tools \
    && apt install -y curl nano \
    &&  apt install -y unzip jq iputils-ping
CMD ["ping","- c 5","wwww.google.com"]