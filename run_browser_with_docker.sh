#!/bin/bash

#######################################
# The script starts a remote-chrome, remote-firefox or remote-edge docker container for running Browser tests on a developer machine only.
# The container directs TCP requests from the container to the host machine enabling testing services running via Service Manager.
# WARNING: Do not use this script in the Jenkins Continuous Integration environment
#
# Arguments:
#   remote-chrome, remote-firefox or remote-edge
#
# Output:
#   Starts  chrome, firefox or edge docker containers from chrome-with-rinetd, firefox-with-rinetd or edge-with-rinetd image respectively
#######################################

#######################################
# Requires services under test running via Service Manager
# Initializes port_mappings with all running application ports using the Service Manager status command.
# Appends ZAP_PORT 11000 to ./run-zap-spec.sh
#######################################
#port_mappings=$(sm2 --status | grep PASS | awk '{ print $8"->"$8 }' | paste -sd "," -)
# If using sm, comment out the above line and instead use the below line
port_mappings=$(sm2 -s | grep PASS | awk '{ print $12"->"$12 }' | paste -sd "," -)
ipConfigAddress=$(ifconfig en0 | grep 'inet ' | awk '{print $2}')
port_mappings="$port_mappings,27017->27017,12346->12346,16002->16002,16003->16003,16001->16001,16000->16000,16004->16004,9032->9032,8500->8500,8585->8585,9949->9949,9557->9557,9553->9553,9025->9025,9250->9250,8100->8100,9514->9514,9927->9927,12345->12345,9978->9978"

#######################################
# Defines the BROWSER variable from the argument passed to the script
#######################################
if [ -z "${1}" ]; then
  echo "ERROR: Browser type not specified. Re-run the script with the option remote-chrome, remote-firefox or remote-edge."
  exit 1
elif [ "${1}" = "remote-chrome" ]; then
  BROWSER="artefacts.tax.service.gov.uk/chrome-with-rinetd:latest"
elif [ "${1}" = "remote-firefox" ]; then
  BROWSER="artefacts.tax.service.gov.uk/firefox-with-rinetd:latest"
elif [ "${1}" = "remote-edge" ]; then
  BROWSER="artefacts.tax.service.gov.uk/edge-with-rinetd:latest"
fi

#######################################
# Pulls the BROWSER image from artifactory and runs the container with the specified options.
#
# Accepted Environment Variables:
# PORT_MAPPINGS: List of the ports of the services under test.
# TARGET_IP: IP of the host machine. For Mac this is 'host.docker.internal'. For linux this is 'localhost'
#
# The latest version of the docker images are available at:
# https://artefacts.tax.service.gov.uk/artifactory/webapp/#/artifacts/browse/tree/General/chrome-with-rinetd
# https://artefacts.tax.service.gov.uk/artifactory/webapp/#/artifacts/browse/tree/General/firefox-with-rinetd
# https://artefacts.tax.service.gov.uk/artifactory/webapp/#/artifacts/browse/tree/General/edge-with-rinetd
#
# NOTE:
# When using on a Linux OS, add "--net=host" to the docker run command.
#######################################
docker stop $(docker ps --filter name=${1} --format="{{.ID}}")
docker pull ${BROWSER} \
    && docker run \
        -d \
        --rm \
        --name "${1}" \
        --shm-size=2g \
        -p 4444:4444 \
        -p 5900:5900 \
        -e PORT_MAPPINGS="$port_mappings" \
        -e TARGET_IP="$ipConfigAddress" \
        ${BROWSER}
