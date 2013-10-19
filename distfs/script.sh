#!/bin/bash
dd if=/dev/zero of=disk-image count=40960
mkfs.xfs disk-image
mkdir glusterfs_folder
mount disk-image gluster_disk

# Установить сервер GlusterFS
sudo apt-get install glusterfs-server
sudo service glusterfs-server start
sudo service glusterfs-server status

# Инициализация с репликой
sudo gluster peer probe 192.168.1.105
sudo gluster volume create gv0 replica 2 192.168.1.114:/home/me/gluster_disk 192.168.1.105:/home/alexeyev/megafs

sudo gluster volume start gv0
gluster volume info

# Монтирование собственно FS
mount -t glusterfs 192.168.1.115:/gv1 /mnt

# просто распределенное, реплика, страйпы
# можно задать протокол передачи tcp, rdma