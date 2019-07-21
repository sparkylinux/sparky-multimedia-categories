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
	rm -f /etc/xdg/menus/sparky-xfce-multimedia-applications.menu
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-connection.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-effects.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-metronome.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-mixers.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-players.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-plugins.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-sequencing.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-softsynths.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-tools.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-audio-tuners.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-cameras.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-midi-tools.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-recorders.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-subtitle-tools.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-video.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-video-players.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-video-tools.directory
	rm -f /usr/share/desktop-directories/sparky-xfce-vst.directory
else
	cp etc/* /etc/xdg/menus/
	cp usr/* /usr/share/desktop-directories/
fi
