
(cl:in-package :asdf)

(defsystem "projects_robotics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "floatStamped" :depends-on ("_package_floatStamped"))
    (:file "_package_floatStamped" :depends-on ("_package"))
  ))