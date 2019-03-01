FROM fluent/fluentd:v0.12.43
LABEL maintainer="Luca Morandini <luca.morandini98@gmail.com>"

RUN gem install fluent-plugin-elasticsearch -v 1.18.0 && \
	gem sources --clear-all && \
	rm -rf \
    /var/cache/apk/* \
    /tmp/* \
    /var/tmp/* \
    /usr/lib/ruby/gems/*/cache/* \
    /home/fluent/.gem/ruby/*/cache/*.gem

COPY fluent.conf /fluentd/etc/