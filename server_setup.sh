#!/bin/bash

sudo apt-get update
sudo apt-get install make socat -y

sudo adduser    \
    --system    \
    --shell /bin/bash \
    --disabled-password \
    --group \
    --home /home/babyBof \
    babyBof

cd ~/NLHS_sharing/babyBof
make
sudo cp flag babyBof /home/babyBof/
sudo chown babyBof:babyBof /home/babyBof/*

sudo adduser    \
    --system    \
    --shell /bin/bash \
    --disabled-password \
    --group \
    --home /home/babyFmt \
    babyFmt

cd ~/NLHS_sharing/babyFmt
make
sudo cp flag babyFmt /home/babyFmt/
sudo chown babyFmt:babyFmt /home/babyFmt/*

sudo adduser    \
    --system    \
    --shell /bin/bash \
    --disabled-password \
    --group \
    --home /home/babyROP \
    babyROP

cd ~/NLHS_sharing/babyROP
make
sudo cp flag babyROP /home/babyROP/
sudo chown babyROP:babyROP /home/babyROP/*

sudo - babyROP

