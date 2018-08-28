FROM fluent/fluentd:v0.12
LABEL maintainer="Luca Morandini <luca.morandini98@gmail.com>"

# install fluent-plugin-elasticsearch
RUN apk add --update --virtual .build-deps \
        sudo build-base ruby-dev && \
    sudo gem install fluent-plugin-elasticsearch && \
    sudo gem sources --clear-all && \
    apk del .build-deps && \
    rm -rf \
        /var/cache/apk/* \
        /tmp/* \
        /var/tmp/* \
        /usr/lib/ruby/gems/*/cache/* \
        /home/fluent/.gem/ruby/*/cache/*.gem