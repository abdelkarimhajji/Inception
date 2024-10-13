FROM debian:latest

RUN apt update && apt upgrade && apt install -y php-fpm php-mysqli curl

COPY www.conf /etc/php/8.2/fpm/pool.d/.
COPY script.sh .
RUN chmod +x script.sh

CMD ["php-fpm8.2", "-F"]
#CMD ["./script.sh"]
