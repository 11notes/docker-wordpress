FROM wordpress:5.0.0-php7.2-apache
RUN sed -i 's/:80/:8080/g' /etc/apache2/sites-available/000-default.conf \
        && sed -i 's/:443/:8443/g' /etc/apache2/sites-available/default-ssl.conf
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf \
        && sed -i 's/Listen 443/Listen 8443/g' /etc/apache2/ports.conf
RUN usermod -u 1000 www-data \
        && groupmod -g 1000 www-data \
        && chown www-data:www-data /var/www /usr/src/wordpress
USER www-data:www-data