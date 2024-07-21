#!/usr/bin/env python3

import rospy
import tf
from tf.transformations import quaternion_from_euler
from geometry_msgs.msg import TransformStamped

def publish_transform():
    rospy.init_node('tf_sensor_broadcaster')

    br = tf.TransformBroadcaster()
    rate = rospy.Rate(10.0)  # 10 Hz

    while not rospy.is_shutdown():
        # Define the transformation parameters
        translation = (1.0, 0.0, 0.0)  # Example translation (x, y, z)
        rotation = quaternion_from_euler(0, 0, 0)  # Example rotation (roll, pitch, yaw)
        # Publish the transformation from base_link to sensor_frame
        br.sendTransform(
            translation,
            rotation,
            rospy.Time.now(),
            'sensor_frame',
            'base_link'
        )

        # Publish the transformation from odom to base_link
        br.sendTransform(
            (0.0, 0.0, 0.0),  # Example translation (x, y, z)
            quaternion_from_euler(0, 0, 0),  # Example rotation (roll, pitch, yaw)
            rospy.Time.now(),
            'base_link',
            'odom'
        )

        rate.sleep()

if __name__ == '__main__':
    try:
        publish_transform()
    except rospy.ROSInterruptException:
        pass
