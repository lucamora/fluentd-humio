FROM pmech/docker2humio
LABEL maintainer="Luca Morandini <luca.morandini98@gmail.com>"

RUN rm -rf \
    /var/cache/apk/* \
    /tmp/* \
    /var/tmp/* \
    /usr/lib/ruby/gems/*/cache/* \
    /home/fluent/.gem/ruby/*/cache/*.gem

COPY fluent.conf /fluentd/etc/