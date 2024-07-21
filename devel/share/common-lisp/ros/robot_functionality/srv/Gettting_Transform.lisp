; Auto-generated. Do not edit!


(cl:in-package robot_functionality-srv)


;//! \htmlinclude Gettting_Transform-request.msg.html

(cl:defclass <Gettting_Transform-request> (roslisp-msg-protocol:ros-message)
  ((Frame_id
    :reader Frame_id
    :initarg :Frame_id
    :type cl:string
    :initform "")
   (Child_Frame_id
    :reader Child_Frame_id
    :initarg :Child_Frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass Gettting_Transform-request (<Gettting_Transform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gettting_Transform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gettting_Transform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_functionality-srv:<Gettting_Transform-request> is deprecated: use robot_functionality-srv:Gettting_Transform-request instead.")))

(cl:ensure-generic-function 'Frame_id-val :lambda-list '(m))
(cl:defmethod Frame_id-val ((m <Gettting_Transform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_functionality-srv:Frame_id-val is deprecated.  Use robot_functionality-srv:Frame_id instead.")
  (Frame_id m))

(cl:ensure-generic-function 'Child_Frame_id-val :lambda-list '(m))
(cl:defmethod Child_Frame_id-val ((m <Gettting_Transform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_functionality-srv:Child_Frame_id-val is deprecated.  Use robot_functionality-srv:Child_Frame_id instead.")
  (Child_Frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gettting_Transform-request>) ostream)
  "Serializes a message object of type '<Gettting_Transform-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Frame_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Child_Frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Child_Frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gettting_Transform-request>) istream)
  "Deserializes a message object of type '<Gettting_Transform-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Child_Frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Child_Frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gettting_Transform-request>)))
  "Returns string type for a service object of type '<Gettting_Transform-request>"
  "robot_functionality/Gettting_TransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gettting_Transform-request)))
  "Returns string type for a service object of type 'Gettting_Transform-request"
  "robot_functionality/Gettting_TransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gettting_Transform-request>)))
  "Returns md5sum for a message object of type '<Gettting_Transform-request>"
  "a7995ca0c7b7430d83491b182946f79d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gettting_Transform-request)))
  "Returns md5sum for a message object of type 'Gettting_Transform-request"
  "a7995ca0c7b7430d83491b182946f79d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gettting_Transform-request>)))
  "Returns full string definition for message of type '<Gettting_Transform-request>"
  (cl:format cl:nil "#Request ~%string Frame_id~%string Child_Frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gettting_Transform-request)))
  "Returns full string definition for message of type 'Gettting_Transform-request"
  (cl:format cl:nil "#Request ~%string Frame_id~%string Child_Frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gettting_Transform-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Frame_id))
     4 (cl:length (cl:slot-value msg 'Child_Frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gettting_Transform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Gettting_Transform-request
    (cl:cons ':Frame_id (Frame_id msg))
    (cl:cons ':Child_Frame_id (Child_Frame_id msg))
))
;//! \htmlinclude Gettting_Transform-response.msg.html

(cl:defclass <Gettting_Transform-response> (roslisp-msg-protocol:ros-message)
  ((Transform
    :reader Transform
    :initarg :Transform
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (Success
    :reader Success
    :initarg :Success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Gettting_Transform-response (<Gettting_Transform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gettting_Transform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gettting_Transform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_functionality-srv:<Gettting_Transform-response> is deprecated: use robot_functionality-srv:Gettting_Transform-response instead.")))

(cl:ensure-generic-function 'Transform-val :lambda-list '(m))
(cl:defmethod Transform-val ((m <Gettting_Transform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_functionality-srv:Transform-val is deprecated.  Use robot_functionality-srv:Transform instead.")
  (Transform m))

(cl:ensure-generic-function 'Success-val :lambda-list '(m))
(cl:defmethod Success-val ((m <Gettting_Transform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_functionality-srv:Success-val is deprecated.  Use robot_functionality-srv:Success instead.")
  (Success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gettting_Transform-response>) ostream)
  "Serializes a message object of type '<Gettting_Transform-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Transform) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gettting_Transform-response>) istream)
  "Deserializes a message object of type '<Gettting_Transform-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Transform) istream)
    (cl:setf (cl:slot-value msg 'Success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gettting_Transform-response>)))
  "Returns string type for a service object of type '<Gettting_Transform-response>"
  "robot_functionality/Gettting_TransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gettting_Transform-response)))
  "Returns string type for a service object of type 'Gettting_Transform-response"
  "robot_functionality/Gettting_TransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gettting_Transform-response>)))
  "Returns md5sum for a message object of type '<Gettting_Transform-response>"
  "a7995ca0c7b7430d83491b182946f79d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gettting_Transform-response)))
  "Returns md5sum for a message object of type 'Gettting_Transform-response"
  "a7995ca0c7b7430d83491b182946f79d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gettting_Transform-response>)))
  "Returns full string definition for message of type '<Gettting_Transform-response>"
  (cl:format cl:nil "#Response~%geometry_msgs/TransformStamped Transform~%bool Success~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gettting_Transform-response)))
  "Returns full string definition for message of type 'Gettting_Transform-response"
  (cl:format cl:nil "#Response~%geometry_msgs/TransformStamped Transform~%bool Success~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gettting_Transform-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Transform))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gettting_Transform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Gettting_Transform-response
    (cl:cons ':Transform (Transform msg))
    (cl:cons ':Success (Success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Gettting_Transform)))
  'Gettting_Transform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Gettting_Transform)))
  'Gettting_Transform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gettting_Transform)))
  "Returns string type for a service object of type '<Gettting_Transform>"
  "robot_functionality/Gettting_Transform")