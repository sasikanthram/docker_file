FROM nginx:latest
COPY . /usr/share/nginx/html
RUN apt update && apt install -y net-tools \
    && apt install -y curl nano \
    &&  apt install -y unzip jq iputils-ping
EXPOSE 80 2001 2002    
ENTRYPOINT ["ping","- c 5","wwww.google.com"]