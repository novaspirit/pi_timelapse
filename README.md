# pi_timelapse
using raspberry pi camera module and timelapse script

create folder to store images
>mkdir /home/pi/timelapse

copy timelapse.sh to /usr/bin/

edit crontab to execute timelapse.sh every min
>sudo crontab -e

>* * * * * sh /usr/bin/timelapse.sh 2>&1
