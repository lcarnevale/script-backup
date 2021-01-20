#!/bin/sh
# Copyright (c) 2021, Lorenzo Carnevale <lcarnevale@unime.it>

year=$(date +'%Y')
dir=$(echo "research-$year-backup")

# synchronize data on disk with memory
sync

# umount the sd card from destination directory
echo "umounting /mnt/$dir ..."
/bin/umount /mnt/$dir -v
