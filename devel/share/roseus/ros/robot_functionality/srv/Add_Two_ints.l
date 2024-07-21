;; Auto-generated. Do not edit!


(when (boundp 'robot_functionality::Add_Two_ints)
  (if (not (find-package "ROBOT_FUNCTIONALITY"))
    (make-package "ROBOT_FUNCTIONALITY"))
  (shadow 'Add_Two_ints (find-package "ROBOT_FUNCTIONALITY")))
(unless (find-package "ROBOT_FUNCTIONALITY::ADD_TWO_INTS")
  (make-package "ROBOT_FUNCTIONALITY::ADD_TWO_INTS"))
(unless (find-package "ROBOT_FUNCTIONALITY::ADD_TWO_INTSREQUEST")
  (make-package "ROBOT_FUNCTIONALITY::ADD_TWO_INTSREQUEST"))
(unless (find-package "ROBOT_FUNCTIONALITY::ADD_TWO_INTSRESPONSE")
  (make-package "ROBOT_FUNCTIONALITY::ADD_TWO_INTSRESPONSE"))

(in-package "ROS")





(defclass robot_functionality::Add_Two_intsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod robot_functionality::Add_Two_intsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_functionality::Add_Two_intsResponse
  :super ros::object
  :slots (_z ))

(defmethod robot_functionality::Add_Two_intsResponse
  (:init
   (&key
    ((:z __z) 0)
    )
   (send-super :init)
   (setq _z (round __z))
   self)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; int64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _z
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _z (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _z) (= (length (_z . bv)) 2)) ;; bignum
              (write-long (ash (elt (_z . bv) 0) 0) s)
              (write-long (ash (elt (_z . bv) 1) -1) s))
             ((and (class _z) (= (length (_z . bv)) 1)) ;; big1
              (write-long (elt (_z . bv) 0) s)
              (write-long (if (>= _z 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _z s)(write-long (if (>= _z 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _z
#+(or :alpha :irix6 :x86_64)
      (setf _z (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _z (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass robot_functionality::Add_Two_ints
  :super ros::object
  :slots ())

(setf (get robot_functionality::Add_Two_ints :md5sum-) "9e6a9d11554d919181816798243e5e82")
(setf (get robot_functionality::Add_Two_ints :datatype-) "robot_functionality/Add_Two_ints")
(setf (get robot_functionality::Add_Two_ints :request) robot_functionality::Add_Two_intsRequest)
(setf (get robot_functionality::Add_Two_ints :response) robot_functionality::Add_Two_intsResponse)

(defmethod robot_functionality::Add_Two_intsRequest
  (:response () (instance robot_functionality::Add_Two_intsResponse :init)))

(setf (get robot_functionality::Add_Two_intsRequest :md5sum-) "9e6a9d11554d919181816798243e5e82")
(setf (get robot_functionality::Add_Two_intsRequest :datatype-) "robot_functionality/Add_Two_intsRequest")
(setf (get robot_functionality::Add_Two_intsRequest :definition-)
      "#Request
int32 a 
int32 b

---
#Response
int64 z
")

(setf (get robot_functionality::Add_Two_intsResponse :md5sum-) "9e6a9d11554d919181816798243e5e82")
(setf (get robot_functionality::Add_Two_intsResponse :datatype-) "robot_functionality/Add_Two_intsResponse")
(setf (get robot_functionality::Add_Two_intsResponse :definition-)
      "#Request
int32 a 
int32 b

---
#Response
int64 z
")



(provide :robot_functionality/Add_Two_ints "9e6a9d11554d919181816798243e5e82")


