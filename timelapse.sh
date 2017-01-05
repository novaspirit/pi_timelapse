#!/bin/bash
DATE=$(date +"%Y-%m-%d_%04d")
raspistill -w 1280 -h 720 -o /home/pi/timelapse/$DATE.jpeg
