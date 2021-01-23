# ROS 


## ROS aliases

alias cdros='cd ~/catkin_ws'
alias cdross='cd ~/catkin_ws/src'
alias makeros='cd ~/catkin_ws && catkin_make ; echo ""; echo "build done"; cd -'


## load ROS base scripts

source ~/catkin_ws/devel/setup.bash
source /opt/ros/melodic/setup.bash


## ROS environments breifing

ros_env(){
	echo -e "\n\e[92mROS_HOSTNAME\e[0m(Current IP): $ROS_HOSTNAME"
	echo -e "\e[92mROS_MASTER_URI\e[0m: $ROS_MASTER_URI"
	echo ""
	echo -e "To check this again, type \e[92mros_env\e[0m."
	echo -e "To edit ROS_MASTER_URI, type \e[92medit_ros_host\e[0m."
	if [ -e ./ros-turtlebot3.bashrc]; then
		echo -e "To run TurtleBot3 bringup node, type \e[92mtb3up\e[0m."
	fi
	echo ""
}


## Hostname definition

export ROS_HOSTNAME=$(hostname -I | cut -d' ' -f1)


## ROS master (roscore) address setup [ IMPORTANT 중요 ]
###  ROS_HOSTNAME should NOT be "localhost" --> cannot connect from/to other machine
###  ROS_HOSTNAME을 localhost로 하면 이 시스템에서 실행하는 roscore에 다른 컴퓨터/노드가 접속할 수 없으므로 사용하지 말 것!
###  Make sure ROS_MASTER_URI should be set up correctly!
###  아래 줄 ROS_MASTER_URI의 IP를 roscore 실행하는 컴퓨터의 IP에 맞출 것!

### When roscore runs on this machine
export ROS_MASTER_URI=http://$ROS_HOSTNAME:11311

### When roscore runs on other machine (Use specific IP)
#export ROS_MASTER_URI=http://192.168.1.100:11311
