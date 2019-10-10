FROM alipeng/php7-cli-alpine

LABEL maintainer Alipeng <alipeng@aliyun.com>

ENV PATH=/root/.composer/vendor/bin:$PATH \
    COMPOSER_ALLOW_SUPERUSER=1 \
    PHP_USER_ID=82

RUN apk add --no-cache \
    git \
    nodejs \
    nodejs-npm \
    yarn \
    openssh-client \
    rsync \
    curl

RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer
