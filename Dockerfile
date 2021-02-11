ARG PHP_VERSION
FROM graygnuorg/pies:latest
RUN apt-get -qq update &&\
    apt-get -qq install \
	apt-transport-https \
	ca-certificates \
	lsb-release \
	wget \
    && \
    wget -nv -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list && \
    apt-get -qq update
RUN apt-get -qq install \
      php${PHP_VERSION}-common \
      php${PHP_VERSION}-cli \
      php${PHP_VERSION}-curl \
      php${PHP_VERSION}-fpm

COPY php-fpm-pies.conf /etc/pies.d
COPY php-fpm.conf.in /etc/php/7.4/fpm/php-fpm.conf.in
