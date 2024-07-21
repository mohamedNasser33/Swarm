
(cl:in-package :asdf)

(defsystem "robot_functionality-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Add_Two_ints" :depends-on ("_package_Add_Two_ints"))
    (:file "_package_Add_Two_ints" :depends-on ("_package"))
    (:file "Gettting_Transform" :depends-on ("_package_Gettting_Transform"))
    (:file "_package_Gettting_Transform" :depends-on ("_package"))
  ))