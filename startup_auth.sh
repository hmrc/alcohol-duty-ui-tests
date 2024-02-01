#!/bin/bash -e

echo "****************************************************************************************************"
echo "********************************* Starting all dependency services *********************************"
echo "Starting ALCOHOL_DUTY_ALL"
sm2 --start ALCOHOL_DUTY_ALL --wait 30 --noprogress
