# i3 configuration

### Dependencies
* feh
* xautolock

### Pictures

Use two pictures for wallpaper and lock screen respectively stored with following path:

```
$HOME/Pictures/background.jpg
$HOME/Pictures/lock.png
```

### Multi-Monitor

To see monitor resolved and connected by your computer:
```
xrandr
```

To turn off HDMI (external monitor)

```
xrandr --output HDMI-1 --off
```

To retrive external monitor at the right of your laptop (`--left-of` for the left)

```
xrandr | grep 'HDMI-1 connected' && \
xrandr --output eDP-1 --auto --output HDMI-1 --auto --right-of eDP-1
```

Mirror screen
```
xrandr --output HDMI-1 --auto
```
