
Debian
====================
This directory contains files used to package umid/umi-qt
for Debian-based Linux systems. If you compile umid/umi-qt yourself, there are some useful files here.

## umi: URI support ##


umi-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install umi-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your umiqt binary to `/usr/bin`
and the `../../share/pixmaps/umi128.png` to `/usr/share/pixmaps`

umi-qt.protocol (KDE)

