#!/bin/bash

# Start FSW
/opt/jboss/fsw/jboss-eap-6.1/bin/standalone.sh -c standalone.xml -b 0.0.0.0 -bmanagement 0.0.0.0 > /dev/null 2>&1 &

# Start BPMS
/opt/jboss/bpms/jboss-eap-6.1/bin/standalone.sh -c standalone.xml -b 0.0.0.0 -bmanagement 0.0.0.0 -Djboss.socket.binding.port-offset=100 > /dev/null 2>&1 &

exec "$@"
