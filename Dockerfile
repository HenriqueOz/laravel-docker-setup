FROM php:8.4-fpm

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    sudo \
    curl \
    unzip \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN docker-php-ext-install pdo pdo_pgsql mbstring exif pcntl bcmath intl gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN useradd -s /bin/bash -m app

RUN chown -R 1000:1000 /var/www

USER app

RUN echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc

ENTRYPOINT ["php-fpm"]

