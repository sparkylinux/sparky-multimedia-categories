#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /etc/xdg/menus/sparky-lxde-multimedia-applications.menu
	rm -f /usr/share/desktop-directories/sparky-audio-connection.directory
	rm -f /usr/share/desktop-directories/sparky-audio.directory
	rm -f /usr/share/desktop-directories/sparky-audio-effects.directory
	rm -f /usr/share/desktop-directories/sparky-audio-metronome.directory
	rm -f /usr/share/desktop-directories/sparky-audio-mixers.directory
	rm -f /usr/share/desktop-directories/sparky-audio-players.directory
	rm -f /usr/share/desktop-directories/sparky-audio-plugins.directory
	rm -f /usr/share/desktop-directories/sparky-audio-sequencing.directory
	rm -f /usr/share/desktop-directories/sparky-audio-softsynths.directory
	rm -f /usr/share/desktop-directories/sparky-audio-tools.directory
	rm -f /usr/share/desktop-directories/sparky-audio-tuners.directory
	rm -f /usr/share/desktop-directories/sparky-cameras.directory
	rm -f /usr/share/desktop-directories/sparky-midi-tools.directory
	rm -f /usr/share/desktop-directories/sparky-recorders.directory
	rm -f /usr/share/desktop-directories/sparky-subtitle-tools.directory
	rm -f /usr/share/desktop-directories/sparky-video.directory
	rm -f /usr/share/desktop-directories/sparky-video-players.directory
	rm -f /usr/share/desktop-directories/sparky-video-tools.directory
	rm -f /usr/share/desktop-directories/sparky-vst.directory
	USER1000=`cat /etc/passwd | grep 1000 | awk -F: '{ print $1 }'`

	if [ -f /home/$USER1000/.config/menus/lxde-applications.menu ]; then
		rm -f /home/$USER1000/.config/menus/lxde-applications.menu
	fi

	if [ -x "`which update-menus 2>/dev/null`" ]; then
		update-menus
	fi
else
	cp etc/* /etc/xdg/menus/
	cp usr/* /usr/share/desktop-directories/
	USER1000=`cat /etc/passwd | grep 1000 | awk -F: '{ print $1 }'`

	if [ -f /home/$USER1000/.config/menus/lxde-applications.menu ]; then
		rm -f /home/$USER1000/.config/menus/lxde-applications.menu
	fi

	if [ ! -d /home/$USER1000/.config/menus ]; then
		mkdir -p /home/$USER1000/.config/menus
	fi

	cp /etc/xdg/menus/sparky-lxde-multimedia-applications.menu home/$USER1000/.config/menus/lxde-applications.menu


	if [ -f /home/$USER1000/.config/menus/lxde-applications.menu ]; then
		chown $USER1000:$USER1000 /home/$USER1000/.config/menus/lxde-applications.menu
	fi

	if [ -x "`which update-menus 2>/dev/null`" ]; then
		update-menus
	fi
fi
