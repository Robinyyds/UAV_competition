;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::calibrateResult)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'calibrateResult (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::CALIBRATERESULT")
  (make-package "RC_MSGS::CALIBRATERESULT"))

(in-package "ROS")
;;//! \htmlinclude calibrateResult.msg.html


(defclass rc_msgs::calibrateResult
  :super ros::object
  :slots (_data ))

(defmethod rc_msgs::calibrateResult
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; rc_msgs/point[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rc_msgs/point[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rc_msgs/point[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance rc_msgs::point :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rc_msgs::calibrateResult :md5sum-) "f88ab6e515853fd3715748d3598553b1")
(setf (get rc_msgs::calibrateResult :datatype-) "rc_msgs/calibrateResult")
(setf (get rc_msgs::calibrateResult :definition-)
      "point[] data

================================================================================
MSG: rc_msgs/point
float32 x
float32 y

")



(provide :rc_msgs/calibrateResult "f88ab6e515853fd3715748d3598553b1")


