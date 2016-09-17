FROM sebp/elk:es240_l240_k460

WORKDIR ${LOGSTASH_HOME}
RUN gosu logstash bin/logstash-plugin install logstash-input-irc
COPY 04-irc-input.conf.tpl /04-irc-input.conf.tpl
COPY 30-output.conf /etc/logstash/conf.d/30-output.conf
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/local/bin/start.sh"]
