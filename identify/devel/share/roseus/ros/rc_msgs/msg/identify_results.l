;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::identify_results)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'identify_results (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::IDENTIFY_RESULTS")
  (make-package "RC_MSGS::IDENTIFY_RESULTS"))

(in-package "ROS")
;;//! \htmlinclude identify_results.msg.html


(defclass rc_msgs::identify_results
  :super ros::object
  :slots (_identify_results ))

(defmethod rc_msgs::identify_results
  (:init
   (&key
    ((:identify_results __identify_results) ())
    )
   (send-super :init)
   (setq _identify_results __identify_results)
   self)
  (:identify_results
   (&rest __identify_results)
   (if (keywordp (car __identify_results))
       (send* _identify_results __identify_results)
     (progn
       (if __identify_results (setq _identify_results (car __identify_results)))
       _identify_results)))
  (:serialization-length
   ()
   (+
    ;; rc_msgs/single_result[] _identify_results
    (apply #'+ (send-all _identify_results :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rc_msgs/single_result[] _identify_results
     (write-long (length _identify_results) s)
     (dolist (elem _identify_results)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rc_msgs/single_result[] _identify_results
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _identify_results (let (r) (dotimes (i n) (push (instance rc_msgs::single_result :init) r)) r))
     (dolist (elem- _identify_results)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rc_msgs::identify_results :md5sum-) "3de7d5d8ebf687280f42a5ebab06b487")
(setf (get rc_msgs::identify_results :datatype-) "rc_msgs/identify_results")
(setf (get rc_msgs::identify_results :definition-)
      "single_result[] identify_results
================================================================================
MSG: rc_msgs/single_result
string result
float32 score
float32 x_coordinate
float32 y_coordinate

")



(provide :rc_msgs/identify_results "3de7d5d8ebf687280f42a5ebab06b487")


