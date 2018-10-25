#!/bin/sh

bundle exec rake db:migrate
rm -f /var/run/rails.pid && bundle exec rails s -b 0.0.0.0 -p 80 --pid /var/run/rails.pid