#!/usr/bin/env bash

BROWSER=${1:-chrome}
JOURNEY=${2:-Alcohol Duty ECP UI Tests}

echo "Running browser tests..."
echo "=========================================="
echo "Browser:              ${BROWSER}"
echo "Env:                  local"
echo "Journey:              ${JOURNEY}"
echo "=========================================="
sbt clean -Dbrowser="${BROWSER}" -Denvironment=local "testOnly uk.gov.hmrc.alcoholDuty.cucumber.runner.ECPTestsRunner" testReport
