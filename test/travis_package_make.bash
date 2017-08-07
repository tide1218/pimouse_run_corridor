#!/bin/bash -xve

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_run_corridor/
cd ~/catkin_ws
#catkin_make -j8 || catkin_make -j8 #CPU2個だけど8並列頑張ってね。しかも1回目コケたらもう一回やってね

git clone --depth=1 https://github.com/citueda/pimouse_ros.git

cd ~/catkin_ws

catkin_make
