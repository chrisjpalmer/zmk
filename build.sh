#!/bin/bash
conda activate zmk

cd $HOME/projects/zmk/app

west build -d build/left -b "nice_nano//zmk" -- \
  -DZMK_CONFIG="$HOME/projects/zmk-ferris/config" \
  -DSHIELD=cradio_left

west build -d build/right -b "nice_nano//zmk" -- \
  -DZMK_CONFIG="$HOME/projects/zmk-ferris/config" \
  -DSHIELD="cradio_right"

cp $HOME/projects/zmk/app/build/left/zephyr/zmk.uf2 $HOME/projects/zmk-ferris/left.uf2
cp $HOME/projects/zmk/app/build/right/zephyr/zmk.uf2 $HOME/projects/zmk-ferris/right.uf2