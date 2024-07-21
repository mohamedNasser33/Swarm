#!/usr/bin/env python3

import rospy
from turtlesim.msg import Pose
import numpy as np
import math

class TranslationMatrix:
    def __init__(self):
        rospy.init_node('translation_matrix', anonymous=True)
        
        self.turtle1_pose_x = None
        self.turtle1_pose_y = None
        self.turtle1_theta = None
        self.turtle2_pose_x = None
        self.turtle2_pose_y = None
        self.turtle2_theta = None

        self.turtle1_pose_sub = rospy.Subscriber("/turtle1/pose", Pose, self.turtle1_callback)
        self.turtle2_pose_sub = rospy.Subscriber("/turtle2/pose", Pose, self.turtle2_callback)

        rospy.spin() 

    def turtle1_callback(self, data):
        self.turtle1_pose_x = data.x
        self.turtle1_pose_y = data.y
        self.turtle1_theta = data.theta

    def turtle2_callback(self, data):
        self.turtle2_pose_x = data.x
        self.turtle2_pose_y = data.y
        self.turtle2_theta = data.theta
        self.calculate_translation()

    def calculate_translation(self):
        if (self.turtle1_pose_x is not None and self.turtle1_pose_y is not None and 
            self.turtle2_pose_x is not None and self.turtle2_pose_y is not None):
            
            # Translation
            rospy.loginfo("-----------------------------------Translation--------------------------------------------")
            translation_x = self.turtle2_pose_x - self.turtle1_pose_x
            translation_y = self.turtle2_pose_y - self.turtle1_pose_y
            rospy.loginfo(f"Translation X: {translation_x}, Translation Y: {translation_y}")
            rospy.loginfo("-----------------------------------Translation--------------------------------------------")
            
            # Rotation
            rospy.loginfo("-----------------------------------Rotation--------------------------------------------") 
            theta_between_planes = self.turtle2_theta - self.turtle1_theta
            rotation_matrix = np.array([
                [math.cos(theta_between_planes), -math.sin(theta_between_planes)],
                [math.sin(theta_between_planes), math.cos(theta_between_planes)]
            ])
            rospy.loginfo("The Rotation Matrix is:\n"
                          f"({rotation_matrix[0][0]:.6f} , {rotation_matrix[0][1]:.6f})\n"
                          f"({rotation_matrix[1][0]:.6f} , {rotation_matrix[1][1]:.6f})")
            rospy.loginfo("-----------------------------------Rotation--------------------------------------------")

if __name__ == '__main__':
    try:
        TranslationMatrix()
    except rospy.ROSInterruptException:
        pass
