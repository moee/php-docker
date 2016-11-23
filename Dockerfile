FROM php:7-cli

RUN apt-get update && apt-get install -y zlib1g-dev libzmq-dev wget git \
    && pecl install zmq-beta \
    && docker-php-ext-install zip \
    && docker-php-ext-enable zmq
ADD install_composer.sh /install_composer.sh
RUN /install_composer.sh && rm /install_composer.sh
