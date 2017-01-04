# pi_timelapse
using raspberry pi camera module and timelapse script

adding the software for encoding

>sudo apt-get install debian-keyring

>sudo sh -c 'echo deb http://vontaene.de/raspbian-updates/ . main >> /etc/apt/sources.list'

>gpg --keyserver pgp.mit.edu --recv-keys 0C667A3E

>gpg --armor --export 0C667A3E | apt-key add -

>sudo apt-get update

apt-get software:

>sudo apt-get install libgstreamer1.0-0 liborc-0.4-0 gir1.2-gst-plugins-base-1.0 gir1.2-gstreamer-1.0 gstreamer1.0-alsa gstreamer1.0-omx gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-base-apps gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-pulseaudio gstreamer1.0-tools gstreamer1.0-x libgstreamer-plugins-bad1.0-0 libgstreamer-plugins-base1.0-0

create folder to store images
>mkdir /home/pi/timelapse

edit crontab to execute raspistill every min
>sudo crontab -e

> * * * * * raspistill -w 1280 -h 720 -o /home/pi/timelapse/$(date +"%Y-%m-%d_%H%M").jpeg 2>&1

command to sort photos to number query

>ls -1v | awk 'BEGIN{ a=0 }{ printf "mv \"%s\" %04d.jpg\n", $0, a++ }' | bash


command to convert photos to video

>gst-launch-1.0 multifilesrc location=%04d.jpeg index=1 caps="image/jpeg,framerate=24/1" ! jpegdec ! omxh264enc ! avimux ! filesink location=timelapse.avi
