#!/bin/bash
DATE=$(date +"%Y-%m-%d_%04d")
raspistill -o /home/pi/timelapse/$DATE.jpg
