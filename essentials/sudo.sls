sudo:
  pkg:
    - installed

sudoers-add-user:
  file.append:
    - name: /etc/sudoers
    - text: |
        
        # Add sudo privileges
        nick ALL=(ALL) ALL
    - require:
      - pkg: sudo
