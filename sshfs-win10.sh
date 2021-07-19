#!/bin/bash
echo "showing existing sessions"
pgrep -lf sshfs
echo "unmounting /mnt/sshfs"
sudo umount /mnt/sshfs -l
echo "mounting to /mnt/sshfs"
sudo sshfs -o allow_other anacron@192.168.1.145:/ /mnt/sshfs
