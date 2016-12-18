#!/bin/bash
DATE=$(date +"%Y-%m-%d_%H%M")
raspistill -o /home/pi/timelapse/$DATE.jpg
