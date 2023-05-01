#!/usr/bin/env sh
xset -dpms
xset s off
xset s noblank

read username < /rdp/username
read password < /rdp/password
read hostname < /rdp/hostname
read port < /rdp/port

xfreerdp /f /u:"$username" /p:"$password" /v:"$hostname:$port" /cert-ignore

