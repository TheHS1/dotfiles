# dotfiles

![Desktop Image](https://github.com/TheHS1/dotfiles/blob/master/Pictures/desktop.png?raw=true)

My dotfiles repository

My i3, i3blocks, and goblocks config files and scripts are to be placed in ~/.config

To edit the colors of i3blocks or goblocks edit the colors file in ~/.config/i3blocks or ~/.config/goblocks respectively

# Statusbar Dependencies

### Backlight

xorg-xset, light

### CPU Usage

mpstat

### Volume-pulseaudio

pulseaudio, alsa (alsa-utils package), fontawesome

### weather

python libraries: time, urllib.request, json

Uses accuweather with a wttr.in fallback. To use accuweather make an account with accuweather and create an app to get an api key. In dotfiles/.config/i3blocks/i3blocks-contrib/weather/accuweather.py or the goblocks path if using that instead, fill in the variables for the API key, country code, and postal code.
