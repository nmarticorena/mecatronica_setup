#! usr/bin/env bash


## Creaccion del workspace 
cd
mkdir -p workshop_ws/src
cd workshop_ws/src
catkin_init_workspace
cd ..
catkin_make
source devel/setup.bash
echo "source ~/workshop_ws/devel/setup.bash" >> ~/.bashrc

