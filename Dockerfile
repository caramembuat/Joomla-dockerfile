FROM php:7.4-apache
RUN apt-get update && apt-get install -y unzip wget
RUN wget https://downloads.joomla.org/cms/joomla3/3-10-2/Joomla_3-10-2-Stable-Full_Package.zip && unzip Joomla_3-10-2-Stable-Full_Package.zip -d /var/www/html/
EXPOSE 80
CMD ["apache2-foreground"]
