#!/usr/bin/env sh

set -x
 ./node_modules/http-server/bin/http-server dist -p 3000 &
sleep 1
# echo $! > .pidfile
set +x
