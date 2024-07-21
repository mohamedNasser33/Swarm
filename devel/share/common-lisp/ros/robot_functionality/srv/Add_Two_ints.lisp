; Auto-generated. Do not edit!


(cl:in-package robot_functionality-srv)


;//! \htmlinclude Add_Two_ints-request.msg.html

(cl:defclass <Add_Two_ints-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass Add_Two_ints-request (<Add_Two_ints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Add_Two_ints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Add_Two_ints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_functionality-srv:<Add_Two_ints-request> is deprecated: use robot_functionality-srv:Add_Two_ints-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Add_Two_ints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_functionality-srv:a-val is deprecated.  Use robot_functionality-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Add_Two_ints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_functionality-srv:b-val is deprecated.  Use robot_functionality-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Add_Two_ints-request>) ostream)
  "Serializes a message object of type '<Add_Two_ints-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Add_Two_ints-request>) istream)
  "Deserializes a message object of type '<Add_Two_ints-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Add_Two_ints-request>)))
  "Returns string type for a service object of type '<Add_Two_ints-request>"
  "robot_functionality/Add_Two_intsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Add_Two_ints-request)))
  "Returns string type for a service object of type 'Add_Two_ints-request"
  "robot_functionality/Add_Two_intsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Add_Two_ints-request>)))
  "Returns md5sum for a message object of type '<Add_Two_ints-request>"
  "9e6a9d11554d919181816798243e5e82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Add_Two_ints-request)))
  "Returns md5sum for a message object of type 'Add_Two_ints-request"
  "9e6a9d11554d919181816798243e5e82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Add_Two_ints-request>)))
  "Returns full string definition for message of type '<Add_Two_ints-request>"
  (cl:format cl:nil "#Request~%int32 a ~%int32 b~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Add_Two_ints-request)))
  "Returns full string definition for message of type 'Add_Two_ints-request"
  (cl:format cl:nil "#Request~%int32 a ~%int32 b~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Add_Two_ints-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Add_Two_ints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Add_Two_ints-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude Add_Two_ints-response.msg.html

(cl:defclass <Add_Two_ints-response> (roslisp-msg-protocol:ros-message)
  ((z
    :reader z
    :initarg :z
    :type cl:integer
    :initform 0))
)

(cl:defclass Add_Two_ints-response (<Add_Two_ints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Add_Two_ints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Add_Two_ints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_functionality-srv:<Add_Two_ints-response> is deprecated: use robot_functionality-srv:Add_Two_ints-response instead.")))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Add_Two_ints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_functionality-srv:z-val is deprecated.  Use robot_functionality-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Add_Two_ints-response>) ostream)
  "Serializes a message object of type '<Add_Two_ints-response>"
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Add_Two_ints-response>) istream)
  "Deserializes a message object of type '<Add_Two_ints-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Add_Two_ints-response>)))
  "Returns string type for a service object of type '<Add_Two_ints-response>"
  "robot_functionality/Add_Two_intsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Add_Two_ints-response)))
  "Returns string type for a service object of type 'Add_Two_ints-response"
  "robot_functionality/Add_Two_intsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Add_Two_ints-response>)))
  "Returns md5sum for a message object of type '<Add_Two_ints-response>"
  "9e6a9d11554d919181816798243e5e82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Add_Two_ints-response)))
  "Returns md5sum for a message object of type 'Add_Two_ints-response"
  "9e6a9d11554d919181816798243e5e82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Add_Two_ints-response>)))
  "Returns full string definition for message of type '<Add_Two_ints-response>"
  (cl:format cl:nil "#Response~%int64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Add_Two_ints-response)))
  "Returns full string definition for message of type 'Add_Two_ints-response"
  (cl:format cl:nil "#Response~%int64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Add_Two_ints-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Add_Two_ints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Add_Two_ints-response
    (cl:cons ':z (z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Add_Two_ints)))
  'Add_Two_ints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Add_Two_ints)))
  'Add_Two_ints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Add_Two_ints)))
  "Returns string type for a service object of type '<Add_Two_ints>"
  "robot_functionality/Add_Two_ints")