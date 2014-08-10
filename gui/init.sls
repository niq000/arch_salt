# @todo: use a grain to determine this
xf86-video-intel:
  pkg:
    - installed

xorg-server:
  pkg:
    - installed

gnome-shell:
  pkg:
    - installed
    - require:
      - pkg: xorg-server

gdm:
  pkg:
    - installed
    - require:
      - pkg: gnome-shell
  service:
      - running
      - require:
        - pkg: gdm

pidgin:
  pkg:
    - installed
    - require:
      - pkg: xorg-server

pidgin-otr:
  pkg:
    - installed
    - require:
      - pkg: pidgin

libreoffice:
  pkg:
    - installed
    - require:
      - pkg: xorg-server

virtualbox:
  pkg:
    - installed
    - require:
      - pkg: xorg-server

vlc:
  pkg:
    - installed
    - require:
      - pkg: xorg-server

guake:
  pkg:
    - installed
    - require:
      - pkg: xorg-server

gimp:
  pkg:
    - installed
    - require:
      - pkg: xorg-server

transmission-gtk:
  pkg:
    - installed
    - require:
      - pkg: xorg-server

shotwell:
  pkg:
    - installed
    - require:
      - pkg: xorg-server
