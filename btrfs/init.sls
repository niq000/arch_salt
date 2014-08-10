include:
  - btrfs.snapper

btrfs-progs:
  pkg:
    - installed

cronie:
  pkg:
    - installed
  service:
      - running
      - require:
        - pkg: cronie
