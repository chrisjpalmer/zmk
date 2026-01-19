#!/bin/bash

# sudo chown $(whoami): /run/user/1000

PROJECTS=/home/chrisjpalmer/projects

cd $PROJECTS/zmk/app

west build -p -d build/left -b nice_nano -S zmk-usb-logging -- -DSHIELD=cradio_left \
  -DZMK_CONFIG="$PROJECTS/zmk-ferris/config"

cp $PROJECTS/zmk/app/build/left/zephyr/zmk.uf2 $PROJECTS/zmk-ferris/left.uf2