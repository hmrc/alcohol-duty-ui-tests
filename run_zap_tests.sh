#!/usr/bin/env bash

BROWSER=${1:-remote-chrome}
JOURNEY=${2:-Alcohol Duty ZAP Tests}

echo "Running ZAP tests..."
echo "=========================================="
echo "Browser:              ${BROWSER}"
echo "Env:                  local"
echo "Journey:              ${JOURNEY}"
echo "=========================================="
sbt -Dbrowser=${BROWSER} -Denvironment=local "testOnly uk.gov.hmrc.alcoholDuty.cucumber.runner.ZapRunner"
