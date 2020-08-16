# dotfiles

![Desktop Image](https://github.com/TheHS1/dotfiles/blob/master/Pictures/desktop.png?raw=true)


My i3 and i3blocks config files and scripts to be placed in ~/.config

To edit the colors of the i3blocks edit the colors file in ~/.config/i3blocks

# Dependencies

### Backlight

xorg-xset, light

### CPU Usage

mpstat

### Volume-pulseaudio

pulseaudio, alsa (alsa-utils package), fontawesome

### weather

Uses accuweather with a wttr.in fallback. To use accuweather make an account with accuweather and create an app to get an api key. In dotfiles/.config/i3blocks/i3blocks-contrib/weather/accuweather.py, fill in the variables for the API key, country code, and postal code.
