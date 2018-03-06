#!/bin/bash

set -euo pipefail

war=hotelcube.war
src=/opt/tomcat/webapps/hotelcube

# Clean last war build
if [ -e ${war} ]; then
    echo "Removing old war ${war}"
    rm -rf ${war}
fi

# Build war
if [ -d ${src} ]; then
    echo "Found source at ${src}"
    cd ${src}
    jar -cvf ../${war} *
    cd ..
fi

chown tomcat:tomcat ${war}

# Show war details
ls -la ${war}
