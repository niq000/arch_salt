btrfs-utils:
  pkg:
    - installed

cronie:
  pkg:
    - installed
  service:
      - running

# @todo: do the initial config settings for all volumes
snapper:
  pkg:
    - installed
    - require:
      - pkg: cronie 
