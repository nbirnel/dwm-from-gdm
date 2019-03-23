dwm-from-gdm
============

Start dwm from Gnome Display Manager, lightdm,
and other diplay managers which use `/usr/share/xsession/`.

install
-------

To add dwm to available display manager sessions,
run 
`make install`.

Restarting your display manager may be required.

hacking
-------

Pre-dwm:

* try to load some common resources that an `.xinit` might load
* start `ssh-agent` and `gpg-agent`
* try to start a program to cover up unused cursors
* load any uname or hostname-specific xinit 

Run dwm in the background

Post-dwm:

* try to launch a status bar or failback terminal.

