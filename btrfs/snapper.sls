snapper:
  pkg:
    - installed
    - require:
      - pkg: cronie 

/etc/snapper/configs/root:
  file.managed:
    - source: salt://btrfs/snapper/root
    - require:
      - pkg: snapper

/etc/snapper/configs/home:
  file.managed:
    - source: salt://btrfs/snapper/home
    - require:
      - pkg: snapper
