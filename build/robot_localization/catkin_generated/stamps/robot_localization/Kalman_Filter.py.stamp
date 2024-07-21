#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Imu
from nav_msgs.msg import Odometry

class Kalman_Filter():
    def __init__(self):
        imu_sub = rospy.Subscriber("/imu", Imu, self.imu_part)
        odom_sub = rospy.Subscriber("/robot/Odom_Noisy", Odometry, self.odom_part)
        self.kalman_Pub = rospy.Publisher("kalman_odom", Odometry, queue_size=10)
        # Initial Guess For odom
        self.mean = 0.0
        self.variance = 1000
        self.last_odom_angular_z = 0.0
        self.is_first_odom = True
        self.motion = 0.0
        # IMU
        self.last_imu_angular_z = 0.0
        self.measurement_variance = 0.5
        self.motion_variance = 4.0

    def imu_part(self, msg):
        self.last_imu_angular_z = msg.angular_velocity.z

    def odom_part(self, msg):
        if self.is_first_odom:
            self.mean = msg.twist.twist.angular.z
            self.last_odom_angular_z = msg.twist.twist.angular.z
            self.is_first_odom = False
        else:
            self.motion = msg.twist.twist.angular.z - self.last_odom_angular_z
            self.last_odom_angular_z = msg.twist.twist.angular.z
            self.state_prediction()
            self.measurement_update()
            self.kalman_Pub.publish(self.kalman_odom)

    def measurement_update(self):
        self.mean = (self.measurement_variance * self.mean + self.variance * self.last_imu_angular_z) / (
                self.measurement_variance + self.variance)
        self.variance = (self.measurement_variance * self.variance) / (self.measurement_variance + self.variance)

    def state_prediction(self):
        self.mean = self.mean + self.motion
        self.variance = self.variance + self.measurement_variance
if __name__ == "__main__":
    rospy.init_node('kalman_filter_node')
    kf = Kalman_Filter()
    rospy.spin()  # Keep the node running