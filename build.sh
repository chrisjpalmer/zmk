#!/bin/bash
cd $HOME/projects/zmk/app

west build -d build/left -b nice_nano -- -DSHIELD=cradio_left \
  -DZMK_CONFIG="$HOME/projects/zmk-ferris/config"

# west build -d build/right -b nice_nano -- -DSHIELD=cradio_right \
#   -DZMK_CONFIG="$HOME/projects/zmk-ferris/config"

cp $HOME/projects/zmk/app/build/left/zephyr/zmk.uf2 $HOME/projects/zmk-ferris/left.uf2
# cp $HOME/projects/zmk/app/build/right/zephyr/zmk.uf2 $HOME/projects/zmk-ferris/right.uf2