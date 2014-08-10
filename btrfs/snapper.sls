snapper:
  pkg:
    - installed
    - require:
      - pkg: cronie 

/etc/snapper/configs/root:
  file.managed:
    - source: salt://btrfs/snapper/root
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: snapper

/etc/snapper/configs/home:
  file.managed:
    - source: salt://btrfs/snapper/home
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: snapper
