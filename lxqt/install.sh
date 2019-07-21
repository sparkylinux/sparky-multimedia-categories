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
	rm -f /etc/xdg/menus/sparky-lxqt-multimedia-applications.menu
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-connection.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-effects.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-metronome.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-mixers.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-players.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-plugins.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-sequencing.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-softsynths.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-tools.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-audio-tuners.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-cameras.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-midi-tools.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-recorders.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-subtitle-tools.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-video.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-video-players.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-video-tools.directory
	rm -f /usr/share/desktop-directories/sparky-lxqt-vst.directory
else
	cp etc/* /etc/xdg/menus/
	cp usr/* /usr/share/desktop-directories/
fi
