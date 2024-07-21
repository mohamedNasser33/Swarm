#!/usr/bin/env python3
import rospy
from robot_functionality.srv import Add_Two_ints
import sys

if __name__ == "__main__":
    if len(sys.argv) == 3:
        rospy.init_node('service_client')  
        rospy.loginfo(f"Arguments {sys.argv}")
        a = int(sys.argv[1])
        b = int(sys.argv[2])
        rospy.wait_for_service("Adding_Service")
        request = rospy.ServiceProxy("Adding_Service ", Add_Two_ints)
        response = request(a, b)
        rospy.loginfo(f"The Response is {response.z}")
    else:
        rospy.loginfo("Usage: python3 script.py <integer1> <integer2>")
        sys.exit(-1)
