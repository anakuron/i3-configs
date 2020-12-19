#!/bin/bash
echo "showing existing sessions"
pgrep -lf sshfs
echo "unmounting /mnt/sshfs"
sudo umount /mnt/sshfs
echo "mounting to /mnt/sshfs"
sudo sshfs -o allow_other anacron@192.168.1.77:/ /mnt/sshfs
