FROM ros:noetic-ros-base-focal

RUN apt-get install -y --no-install-recommends python3-rosdep

RUN rosdep fix-permissions \
 && rosdep update

RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

# MKZ-specific packages
RUN apt update &&  apt-get install -y ros-noetic-velodyne

WORKDIR /data

ENTRYPOINT ["/ros_entrypoint.sh"]
