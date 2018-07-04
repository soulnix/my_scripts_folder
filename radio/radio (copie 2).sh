#!/bin/bash
# License GPL
# by rodofr Live Voyager
# Display the action selector
if pgrep -f vlc;then
       kill $(pgrep -f vlc)
else
	vlc ~/.TvRadio/playlist_radios.xspf --playlist-tree --no-playlist-autostart & 
	sed -i 's/view-mode=1/view-mode=3/' ~/.config/vlc/vlc-qt-interface.conf &
	sed -i 's/playlist-visible=false/playlist-visible=true/' ~/.config/vlc/vlc-qt-interface.conf &  
	sleep 5 
	sed -i 's/view-mode=3/view-mode=1/' ~/.config/vlc/vlc-qt-interface.conf &
	sed -i 's/playlist-visible=true/playlist-visible=false/' ~/.config/vlc/vlc-qt-interface.conf &

fi