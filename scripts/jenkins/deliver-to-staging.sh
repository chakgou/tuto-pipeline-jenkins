#!/usr/bin/env sh

set -x
 ./node_modules/serve/bin/serve.js -c 0 -s dist &
sleep 1
echo $! > .pidfile
set +x
