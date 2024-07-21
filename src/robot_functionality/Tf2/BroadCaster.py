#!/usr/bin/env python3
import rospy
from tf2_ros import StaticTransformBroadcaster, TransformBroadcaster
from geometry_msgs.msg import TransformStamped
from tf.transformations import quaternion_from_euler,quaternion_multiply,quaternion_inverse

class TransformTf:
    def __init__(self) -> None:
        self.Rotation_pos  = quaternion_from_euler(0,0,0)
        self.Rotation_Incremental = quaternion_from_euler(0,1.57,0.05)
        self.increment = 1
        self.broadcaster = StaticTransformBroadcaster()
        self.dynamic_broadcaster = TransformBroadcaster()
        self.dynamic_msg = TransformStamped()
        self.transform = TransformStamped()
         # Set up a timer to publish dynamic transform
        self.timer = rospy.Timer(rospy.Duration(2), self.callback)
        # Set up static transform
        self.transform.header.stamp = rospy.Time.now()
        self.transform.header.frame_id = "Killer"
        self.transform.child_frame_id = "Victim"
        self.transform.transform.translation.x = 2.0
        self.transform.transform.translation.y = 3.0
        self.transform.transform.translation.z = 0.0
        self.transform.transform.rotation.x = 0.0
        self.transform.transform.rotation.y = 0.0
        self.transform.transform.rotation.z = 0.0
        self.transform.transform.rotation.w = 1.0
        self.broadcaster.sendTransform(self.transform)
        rospy.loginfo("Static transform published from Killer to Victim.")

       

    def callback(self, event):
        self.dynamic_msg.header.stamp = rospy.Time.now()
        self.dynamic_msg.header.frame_id = "odom"
        self.dynamic_msg.child_frame_id = "Killer"
       
        q = quaternion_multiply(self.Rotation_pos,self.Rotation_Incremental)
        self.dynamic_msg.transform.translation.x = 2.0 #+ self.increment
        self.dynamic_msg.transform.translation.y = 3.0 #+ self.increment
        self.dynamic_msg.transform.translation.z = 0.0
        self.dynamic_msg.transform.rotation.x = q[0]
        self.dynamic_msg.transform.rotation.y = q[1]
        self.dynamic_msg.transform.rotation.z = q[2]
        self.dynamic_msg.transform.rotation.w = q[3]
        self.dynamic_msg.header.stamp = rospy.Time.now()
        self.dynamic_broadcaster.sendTransform(self.dynamic_msg)
        rospy.loginfo("Transform published from odom to Killer.")
        if (self.increment == 100):
            self.Rotation_Incremental = quaternion_inverse(self.Rotation_Incremental)
            self.increment-=1
        else:
          self.increment += 1
          self.Rotation_pos = q

if __name__ == "__main__":
    try:
        rospy.init_node('static_transform_publisher')
        TransformTf()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
