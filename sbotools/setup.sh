#!/bin/bash

wget https://pink-mist.github.io/sbotools/downloads/sbotools-2.7-noarch-1_SBo.tgz -O /tmp/sbotools-2.7-noarch-1_SBo.tgz &&
  installpkg /tmp/sbotools-2.7-noarch-1_SBo.tgz

mkdir -p /etc/sbotools &&
  wget https://raw.githubusercontent.com/duderamos/setup-symphony/master/sbotools/sbotools.conf -O /etc/sbotools/sbotools.conf

sbocheck &&
  sboinstall android-studio \
    android-tools \
    ansible \
    docker \
    docker-machine \
    docker-machine-kvm \
    faac \
    frei0r \
    fuse-exfat \
    iotop \
    irqbalance \
    kcm_touchpad \
    laptop-mode-tools \
    libavc1394 \
    libdv \
    libiec61883 \
    libmp4v2 \
    libmpeg2 \
    libvdpau-va-gl \
    libvirt \
    libvirt-glib \
    libvirt-python \
    qemu \
    runc \
    s3cmd \
    spotify \
    transcode \
    twolame \
    vdpau-video \
    vdpauinfo \
    virt-manager \
    webcore-fonts \
    winetricks \
    x265 \
    youtube-dl \
