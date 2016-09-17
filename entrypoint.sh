#!/bin/bash

perl -p -i -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' < /04-irc-input.conf.tpl > /etc/logstash/conf.d/04-irc-input.conf
echo "Running $@"
exec "$@"
