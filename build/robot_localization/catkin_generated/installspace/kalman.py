#!/usr/bin/env python3
import rospy 
from robot_localization.scripts.kalman_implementation import Kalman_Filter
if __name__ == "__main__":
    rospy.init_node('kalman_filter_node')
    kf = Kalman_Filter()
    rospy.spin()  # Keep the node running
