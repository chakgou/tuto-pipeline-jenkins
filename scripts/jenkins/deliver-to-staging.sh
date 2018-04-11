#!/usr/bin/env sh

set -x
npm run serve:dist &
sleep 1
echo $! > .pidfile
set +x
