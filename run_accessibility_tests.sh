#!/usr/bin/env bash

BROWSER=${1:-chrome}
JOURNEY=${2:-Alcohol Duty Accessibility Tests}

echo "Running accessibility tests..."
echo "=========================================="
echo "Browser:              ${BROWSER}"
echo "Env:                  local"
echo "Journey:              ${JOURNEY}"
echo "=========================================="
sbt -Dbrowser=${BROWSER} -Denvironment=local "testOnly uk.gov.hmrc.alcoholDuty.cucumber.runner.AccessibilityRunner"