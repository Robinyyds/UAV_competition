
(cl:in-package :asdf)

(defsystem "rc_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "calibrateResult" :depends-on ("_package_calibrateResult"))
    (:file "_package_calibrateResult" :depends-on ("_package"))
    (:file "detection" :depends-on ("_package_detection"))
    (:file "_package_detection" :depends-on ("_package"))
    (:file "identify_results" :depends-on ("_package_identify_results"))
    (:file "_package_identify_results" :depends-on ("_package"))
    (:file "point" :depends-on ("_package_point"))
    (:file "_package_point" :depends-on ("_package"))
    (:file "results" :depends-on ("_package_results"))
    (:file "_package_results" :depends-on ("_package"))
    (:file "single_result" :depends-on ("_package_single_result"))
    (:file "_package_single_result" :depends-on ("_package"))
  ))