#!/bin/sh

set -e

bundle exec rake db:migrate
bundle exec rackup --port 9292 --host 0.0.0.0