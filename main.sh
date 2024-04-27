#!/bin/sh

ads_amount=1000 # Note: lower = more ads

browser="Firefox"
distro="NixOS"
search="Brave"
model="Mixtral 8x7B"
model_provider="Ollama"
clould="Nextcloud"
online_account="Ubuntu One"
gaming_account="Steam"
anti_virus="ClamAV"
connect="KDE Connect"
office="Libreoffice"

ads=(
  "Optimise your browser! Get the most with your PC with $browser"
  "Your $distro isn't activated, please go to settings and activate with a valid $distro key"
  "Download Candy Crush from the $distro package manager today!"
  "Get the best search results with $search"
  "Get AI powered search results with $search"
  "Get AI copilot with $model_provider and $model"
  "Get 100GBs of free file storage with $clould"
  "Login to a $online_account for access to more features and the best experince"
  "Login to a $gaming_account and access a massive libarary of games with Proton!"
  "Enable $anti_virus for the best protection against online threats"
  "Your PC is insecure enable $anti_virus"
  "Earn reward points by getting a job!"
  "Press print screen to take a screenshot with snipping tool!"
  "Update to $distro 13"
  "Experince your computer new again with $distro 13"
  "Reboot to update your computer"
  "Get news in your web browser with $browser"
  "$anti_virus did not find any threats since your last summary, your device was scanned 68 times"
  "Get $gaming_account Pass for access to over 30,000 games for only 1$ a month for a limted time!"
  "$browser is now configured to run at startup"
  "We recomend $distro 13 for your device"
  "Would you recomend $distro to a friend or colleague?"
  "Link your PC and phone with $connect"
  "Try the all new $distro snipping tool"
  "$browser just got upodated, check it out!"
  "Try the updated $browser"
  "$browser uses 33% less memory than competting browsers"
  "Upgrade to $distro 13 is ready! And it's free!"
  "Why are you locked in the bathroom? I don't know, maybe you should try getting a job"
  "Enable $browser power savings mode to use 33% less power than competing browsers"
  "Enable sleeping tabs in $browser to use less memory"
  "20 threats have been found since your last scan with $anti_virus"
  "Edit and create documents with $office"
)

length=${#ads[@]}

while true
do
  sleep $(( RANDOM % ads_amount ))s
  notify-send "${ads[$RANDOM % length]}"
done
