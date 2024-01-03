#!/usr/bin/env bash

source loggerUtils.sh

shutdownAccessibilityServiceDockerImage() {
  successMsg "**** Shutting Down Accessibility Test µservice Docker image ****"
  docker kill a11y
}

startUpAccessibilityServiceDockerImage() {
  successMsg "**** Starting the Accessibility Test µservice as a Docker image ****"
  IMG='artefacts.tax.service.gov.uk/accessibility-assessment:latest'
  docker pull ${IMG} && docker run -d --rm --name 'a11y' -p 6010:6010 -e TARGET_IP='host.docker.internal' ${IMG}
}

triggerReportAnalysis() {
  successMsg "**** Triggering the Report Analysis ****"
  triggerResult=$(curl -s -X POST http://localhost:6010/api/assess-pages)
  if [ "$triggerResult" = '{"message":"No Pages available for assessment."}' ]; then
      errorMsg "**** No Pages Available to be Assessed. Aborting ****"
      shutdownAccessibilityServiceDockerImage
      exit
  fi
}

getReport() {
  successMsg "**** Checking the Report Status (will check 100 times before aborting) ****"
  for i in {1..100}
  do
      response=$(curl -s http://localhost:6010/api/status)
      if [ "$response" = "REPORT_READY" ]; then
        successMsg "**** Report is Ready! ****"
        successMsg "**** Downloading Report ****"
                mkdir "a11yReport"
                curl -s http://localhost:6010/api/report/bundle -J -L -o "a11yReport/report.zip"
                unzip -o a11yReport/report.zip -d "a11yReport"
                rm a11yReport/report.zip
                xdg-open a11yReport/accessibility-assessment-report.html
        break
      else
        if [ i = 100 ]; then
          errorMsg "**** Waited for 1000 seconds for the report and still not ready. Aborting. ****"
        else
          warningMsg "**** Status is: $response (checked $i times so far) ****"
          sleep 10
        fi
      fi
  done
}

startUpAccessibilityServiceDockerImage
sbt -Dbrowser='chrome' -Denvironment='local' -Daccessibility.test=true "testOnly uk.gov.hmrc.alcoholDuty.cucumber.runner.AccessibilityRunner"
triggerReportAnalysis
getReport
shutdownAccessibilityServiceDockerImage