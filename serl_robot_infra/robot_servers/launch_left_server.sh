# Source the setup.bash file for the first ROS workspace
source ~/catkin_ws/devel/setup.bash

# Set ROS master URI to localhost
export ROS_MASTER_URI=http://localhost:11311

# Run the first instance of franka_server.py in the background
python serl_robot_infra/robot_servers/franka_server.py \
    --robot_ip=172.16.0.2 \
    --gripper_type=Franka \
    --flask_url=127.0.0.1 \
    --ros_port=11311