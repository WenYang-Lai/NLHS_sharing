#!/bin/bash

sudo apt-get update
sudo apt-get install make gcc gdb socat -y

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

cd /home/babyBof
sudo -u babyBof socat TCP-LISTEN:10101,fork EXEC:/home/babyBof/babyBof &
cd /home/babyFmt
sudo -u babyFmt socat TCP-LISTEN:10102,fork EXEC:/home/babyFmt/babyFmt &
cd /home/babyROP
sudo -u babyROP socat TCP-LISTEN:10103,fork EXEC:/home/babyROP/babyROP &

cd $HOME && rm -rf NLHS_sharing




