;; Auto-generated. Do not edit!


(when (boundp 'robot_functionality::Gettting_Transform)
  (if (not (find-package "ROBOT_FUNCTIONALITY"))
    (make-package "ROBOT_FUNCTIONALITY"))
  (shadow 'Gettting_Transform (find-package "ROBOT_FUNCTIONALITY")))
(unless (find-package "ROBOT_FUNCTIONALITY::GETTTING_TRANSFORM")
  (make-package "ROBOT_FUNCTIONALITY::GETTTING_TRANSFORM"))
(unless (find-package "ROBOT_FUNCTIONALITY::GETTTING_TRANSFORMREQUEST")
  (make-package "ROBOT_FUNCTIONALITY::GETTTING_TRANSFORMREQUEST"))
(unless (find-package "ROBOT_FUNCTIONALITY::GETTTING_TRANSFORMRESPONSE")
  (make-package "ROBOT_FUNCTIONALITY::GETTTING_TRANSFORMRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robot_functionality::Gettting_TransformRequest
  :super ros::object
  :slots (_Frame_id _Child_Frame_id ))

(defmethod robot_functionality::Gettting_TransformRequest
  (:init
   (&key
    ((:Frame_id __Frame_id) "")
    ((:Child_Frame_id __Child_Frame_id) "")
    )
   (send-super :init)
   (setq _Frame_id (string __Frame_id))
   (setq _Child_Frame_id (string __Child_Frame_id))
   self)
  (:Frame_id
   (&optional __Frame_id)
   (if __Frame_id (setq _Frame_id __Frame_id)) _Frame_id)
  (:Child_Frame_id
   (&optional __Child_Frame_id)
   (if __Child_Frame_id (setq _Child_Frame_id __Child_Frame_id)) _Child_Frame_id)
  (:serialization-length
   ()
   (+
    ;; string _Frame_id
    4 (length _Frame_id)
    ;; string _Child_Frame_id
    4 (length _Child_Frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Frame_id
       (write-long (length _Frame_id) s) (princ _Frame_id s)
     ;; string _Child_Frame_id
       (write-long (length _Child_Frame_id) s) (princ _Child_Frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Child_Frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Child_Frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_functionality::Gettting_TransformResponse
  :super ros::object
  :slots (_Transform _Success ))

(defmethod robot_functionality::Gettting_TransformResponse
  (:init
   (&key
    ((:Transform __Transform) (instance geometry_msgs::TransformStamped :init))
    ((:Success __Success) nil)
    )
   (send-super :init)
   (setq _Transform __Transform)
   (setq _Success __Success)
   self)
  (:Transform
   (&rest __Transform)
   (if (keywordp (car __Transform))
       (send* _Transform __Transform)
     (progn
       (if __Transform (setq _Transform (car __Transform)))
       _Transform)))
  (:Success
   (&optional (__Success :null))
   (if (not (eq __Success :null)) (setq _Success __Success)) _Success)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TransformStamped _Transform
    (send _Transform :serialization-length)
    ;; bool _Success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TransformStamped _Transform
       (send _Transform :serialize s)
     ;; bool _Success
       (if _Success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TransformStamped _Transform
     (send _Transform :deserialize buf ptr-) (incf ptr- (send _Transform :serialization-length))
   ;; bool _Success
     (setq _Success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_functionality::Gettting_Transform
  :super ros::object
  :slots ())

(setf (get robot_functionality::Gettting_Transform :md5sum-) "a7995ca0c7b7430d83491b182946f79d")
(setf (get robot_functionality::Gettting_Transform :datatype-) "robot_functionality/Gettting_Transform")
(setf (get robot_functionality::Gettting_Transform :request) robot_functionality::Gettting_TransformRequest)
(setf (get robot_functionality::Gettting_Transform :response) robot_functionality::Gettting_TransformResponse)

(defmethod robot_functionality::Gettting_TransformRequest
  (:response () (instance robot_functionality::Gettting_TransformResponse :init)))

(setf (get robot_functionality::Gettting_TransformRequest :md5sum-) "a7995ca0c7b7430d83491b182946f79d")
(setf (get robot_functionality::Gettting_TransformRequest :datatype-) "robot_functionality/Gettting_TransformRequest")
(setf (get robot_functionality::Gettting_TransformRequest :definition-)
      "#Request 
string Frame_id
string Child_Frame_id
---
#Response
geometry_msgs/TransformStamped Transform
bool Success

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get robot_functionality::Gettting_TransformResponse :md5sum-) "a7995ca0c7b7430d83491b182946f79d")
(setf (get robot_functionality::Gettting_TransformResponse :datatype-) "robot_functionality/Gettting_TransformResponse")
(setf (get robot_functionality::Gettting_TransformResponse :definition-)
      "#Request 
string Frame_id
string Child_Frame_id
---
#Response
geometry_msgs/TransformStamped Transform
bool Success

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :robot_functionality/Gettting_Transform "a7995ca0c7b7430d83491b182946f79d")


