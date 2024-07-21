#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64
import math

def wheel_velocity_publisher():
    # Initialize the ROS node
    rospy.init_node('wheel_velocity_publisher', anonymous=True)

    # Create publishers for the wheel velocities
    pub_wheel_right = rospy.Publisher('/wheel_right_controller/command', Float64, queue_size=10)
    pub_wheel_left = rospy.Publisher('/wheel_left_controller/command', Float64, queue_size=10)

    # Set the rate at which to publish messages
    rate = rospy.Rate(10)  # 10 Hz

    # Frequency of the sine and cosine functions
    freq = 1.0  # 1 Hz

    while not rospy.is_shutdown():
        # Current time
        t = rospy.get_time()

        # Calculate the velocities
        vel_right = math.cos(2 * math.pi * freq * t)
        vel_left = math.sin(2 * math.pi * freq * t)

        # Log the velocities
        rospy.loginfo("Right Wheel Velocity: %f", vel_right)
        rospy.loginfo("Left Wheel Velocity: %f", vel_left)

        # Publish the velocities
        pub_wheel_right.publish(vel_right)
        pub_wheel_left.publish(vel_left)

        # Sleep to maintain the rate
        rate.sleep()

if __name__ == '__main__':
    try:
        wheel_velocity_publisher()
    except rospy.ROSInterruptException:
        pass
