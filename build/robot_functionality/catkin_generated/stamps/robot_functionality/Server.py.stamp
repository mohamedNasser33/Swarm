#!/usr/bin/env python3
from robot_functionality.srv import Add_Two_ints , Add_Two_intsResponse
import rospy


def Request(req):
    rospy.loginfo("Currently Working on Your Request")
    return Add_Two_intsResponse(req.a + req.b)
if __name__ == "__main__":
    rospy.init_node("Ros_Server_Adding_Two_Ints")
    service = rospy.Service("Adding_Service", Add_Two_ints, Request)
    rospy.loginfo("Server is on ")
    rospy.spin()
