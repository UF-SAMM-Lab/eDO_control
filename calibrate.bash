#!/bin/bash

master_ip="10.42.0.49"
hostname=`hostname`

vars="export ROS_MASTER_URI=\"http://${master_ip}:11311\";"
vars=$vars" export ROS_HOSTNAME=\"${hostname}.local\";"
vars=$vars" export PS1=\"\[\033[00;33m\][\${ROS_MASTER_URI}]\[\033[00m\] \${PS1}\";"
vars=$vars" cd ~/base_workspace/catkin_ws_data_collection_1;"
vars=$vars" source devel/setup.bash;"
vars=$vars" roslaunch edo_control calibrate.launch;"

bash --rcfile <(cat ~/.bashrc; echo "${vars}")

