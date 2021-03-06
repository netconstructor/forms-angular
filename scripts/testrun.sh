#!/bin/bash

karma start config/karma.conf.js --no-auto-watch --single-run --reporters=dots --browsers=PhantomJS

NODE_ENV=test node server/server.js > /dev/null &
sleep 1 # give server time to start
mocha --recursive test/api/*.js
karma start config/karma-e2e.conf.js --no-auto-watch --single-run --reporters=dots --browsers=PhantomJS
