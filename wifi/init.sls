wpa_supplicant:
  pkg:
    - installed

networkmanager:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: wpa_supplicant
