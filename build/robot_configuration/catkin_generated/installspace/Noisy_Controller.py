#!/usr/bin/env python3
#This Scripts Take Velcoties accoring to Real World Then convert it into Wheel Rotation in Differential Kinematics
import rospy

import numpy as np
from sensor_msgs.msg import JointState
import math
from nav_msgs.msg import Odometry
import tf_conversions 
from tf2_ros import TransformBroadcaster
from geometry_msgs.msg import  TransformStamped
class DifferentialKinematics_Noisy():
    def __init__(self, wheel_radius, wheel_separation):
        self.odom_pub = rospy.Publisher("/robot/Odom_Noisy", Odometry , queue_size= 10 )
        self.left_wheel_prev_position = 0.0
        self.right_wheel_prev_position = 0.0
        #intializing Odom 
        self.odom_msg = Odometry()
        self.odom_msg.header.frame_id = "odom"
        self.odom_msg.child_frame_id = "base_footprint_noisy"
        self.odom_msg.pose.pose.orientation.x = 0.0
        self.odom_msg.pose.pose.orientation.y =  0.0
        self.odom_msg.pose.pose.orientation.z =  0.0
        self.odom_msg.pose.pose.orientation.w =  1.0
        #!------------End--------------
        #intializing The pose in Robot_Frame 
        self.x_ = 0.0
        self.y_ = 0.0 
        self.theta_ = 0.0 
        #Dynamic BroadCaster between Odom and Base_footprint
        self.dynamic_broadcaster = TransformBroadcaster()
        self.dynamic_msg = TransformStamped()
        self.dynamic_msg.header.frame_id = "odom"
        self.dynamic_msg.child_frame_id = "base_footprint_noisy"
        #!-------------End--------------
        #intializing The pose in Robot_Frame 
        self.wheel_radius = wheel_radius
        self.wheel_separation = wheel_separation
        self.State_listener = rospy.Subscriber("/joint_states", JointState, self.inverKinemetic)
        self.t0 = rospy.Time.now()
    def inverKinemetic(self, msg):
        # Calculate change in position since the previous iteration
        dp_left = msg.position[0] + np.random.normal(0, 0.05) - self.left_wheel_prev_position
        dp_right = msg.position[1] + np.random.normal(0, 0.05)  - self.right_wheel_prev_position
        delt_t = (msg.header.stamp - self.t0).to_sec()
        left_wheel_Rotation_vel = dp_left / delt_t
        right_wheel_Rotation_vel = dp_right / delt_t
        self.left_wheel_prev_position = msg.position[0]
        self.right_wheel_prev_position = msg.position[1]
        self.t0 = msg.header.stamp
        linear_vel = self.wheel_radius * (left_wheel_Rotation_vel + right_wheel_Rotation_vel) / 2
        angular_vel = self.wheel_radius * (left_wheel_Rotation_vel - right_wheel_Rotation_vel) / self.wheel_separation
         #New_Lesson 
         #Getting The Pos and Orientation from Integrating as Exaplined in Note books
        d_pos =  self.wheel_radius * (dp_right - dp_left) / 2
        d_orientation = self.wheel_radius * (dp_right - dp_left) / self.wheel_separation
        self.x_+=d_pos * math.cos(self.theta_)
        self.y_+=d_pos * math.sin(self.theta_)
        self.theta_+= d_orientation
        self.quaternion = tf_conversions.transformations.quaternion_from_euler(0,0, self.theta_)
        rospy.loginfo("!-----------------------------------------------------------------------------------------------!")
        rospy.loginfo("The X pos is relative to The Start point of The robot is %f ", self.x_)
        rospy.loginfo("The y pos is relative to The Start point of The robot is %f ", self.y_)
        rospy.loginfo("The theta orientatrion  is relative to The Start point of The robot is %f ", self.theta_)
        rospy.loginfo("The Linear velocity is %f and the angular velocity is %f", linear_vel, angular_vel)
        rospy.loginfo("!-----------------------------------------------------------------------------------------------!")
        self.odom_msg.pose.pose.position.x = self.x_
        self.odom_msg.pose.pose.position.y = self.y_
        self.odom_msg.pose.pose.position.z = 0.0
        self.odom_msg.pose.pose.orientation.x = self.quaternion[0]
        self.odom_msg.pose.pose.orientation.y =  self.quaternion[1]
        self.odom_msg.pose.pose.orientation.z =  self.quaternion[2]
        self.odom_msg.pose.pose.orientation.w =  self.quaternion[3]
        self.odom_msg.twist.twist.linear.x = linear_vel  #* math.cos(self.theta_) #he is only giving speed in x 
        #self.odom_msg.twist.twist.linear.y =  linear_vel #* math.sin(self.theta_)
        self.odom_msg.twist.twist.angular.z = angular_vel 
        self.odom_msg.header.stamp = rospy.Time.now()
        self.odom_pub.publish(self.odom_msg)
        #publishing TF  odom < ---> base_footprint
        self.dynamic_msg.transform.translation.x = self.x_ #+ self.increment
        self.dynamic_msg.transform.translation.y = self.y_ #+ self.increment
        self.dynamic_msg.transform.rotation.x = self.quaternion[0]
        self.dynamic_msg.transform.rotation.y = self.quaternion[1]
        self.dynamic_msg.transform.rotation.z = self.quaternion[2]
        self.dynamic_msg.transform.rotation.w = self.quaternion[3]
        self.dynamic_msg.header.stamp = rospy.Time.now()
        self.dynamic_broadcaster.sendTransform(self.dynamic_msg)   

if __name__ == "__main__":
    rospy.init_node('differential_kinematics_node')
    wheel_radius = 0.033  
    wheel_separation = 0.17  
    kinematics = DifferentialKinematics_Noisy(wheel_radius, wheel_separation)
    rospy.spin()
