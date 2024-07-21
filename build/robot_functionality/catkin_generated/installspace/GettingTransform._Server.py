#!/usr/bin/env python3
import rospy
from robot_functionality.srv import Gettting_Transform, Gettting_TransformResponse
from geometry_msgs.msg import TransformStamped
from tf2_ros import TransformListener, Buffer

def Get_TransformMatrix(req):
    rospy.loginfo("Requested Transform between %s and %s", req.Frame_id,req.Child_Frame_id,)
    response = Gettting_TransformResponse()
    try:
        rospy.loginfo(rospy.get_rostime())  # Log the current time
        response.Transform  = TransformStamped()
        response.Transform = buffer.lookup_transform(req.Frame_id, req.Child_Frame_id, rospy.Time())
        response.Success = True
    except Exception as e:
        rospy.logerr("Failed to get transform: %s", str(e))  # Log error for debugging
        response.Success = False
        response.Transform = TransformStamped()  # Set a default value for TransformStamped
    return response

if __name__ == "__main__":
    rospy.init_node("TransformMatrix_Server")
    buffer = Buffer()
    lookFor_Transform = TransformListener(buffer)
    rospy.Service("Transform_Server", Gettting_Transform, Get_TransformMatrix)
    rospy.spin()
