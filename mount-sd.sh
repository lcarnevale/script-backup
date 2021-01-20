#!/bin/sh
# Copyright (c) 2021, Lorenzo Carnevale <lcarnevale@unime.it>

year=$(date +'%Y')
dir=$(echo "research-$year-backup")

# create the directory if not exists
mkdir -p /mnt/$dir

# mount the sd card on destination directory
/bin/mount -t vfat /dev/$1 /mnt/$dir

# synchronize data on disk with memory
sync
