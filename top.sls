base:
  '*':
    - essentials
  'btrfs:True':
    - match: grain
    - btrfs
  'workstation:True':
    - match: grain
    - gui
  'wifi:True':
    - match: grain
    - wifi
