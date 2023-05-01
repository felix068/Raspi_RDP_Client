# WP_Kiosk_Raspi

Wp kiosk allows to show webpage on your lcd display for raspberry pi , or your hdmi display
with touch compatibility (Xorg)

## Install Manual Setting :

```
bash <(wget -qO- https://raw.githubusercontent.com/felix068/Work_Raspi_Kiosk/main/Install.sh)
```

## Install 3.5inch RPI Display -480X320 XPT2046 :

```
bash <(wget -qO- https://tinyurl.com/4h5cr4zm)
```
After the execution of this command, your RasPi restart automatically and after reboot execute the following command :

(Warning: This command restarts your RasPi)
```
bash <(wget -qO- https://tinyurl.com/yfdfjxf4)
```


## Install 5inch HDMI LCD V2 -800X480 XPT2046 :

```
bash <(wget -qO- https://tinyurl.com/4nehdfhv)
```

## Configure Touch

```
sudo nano /etc/X11/xorg.conf.d/98-dietpi-disable_dpms.conf
```
