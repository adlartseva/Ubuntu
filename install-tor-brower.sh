#!/bin/bash -vx
URL=$(zenity --width=600 --title "Введите url для скачивания tor-browser" --entry --text "URL:" --entry-text "https://")
wget $URL -O tor-browser.tar.xz
sudo tar xvfJ tor-browser.tar.xz -C /opt/
sudo ln -sf /opt/tor-browser_ru/Browser/start-tor-browser /usr/local/bin/tor-browser
mv tor-browser.desktop ~/.local/share/applications
rm tor-browser.tar.xz
