;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::single_result)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'single_result (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::SINGLE_RESULT")
  (make-package "RC_MSGS::SINGLE_RESULT"))

(in-package "ROS")
;;//! \htmlinclude single_result.msg.html


(defclass rc_msgs::single_result
  :super ros::object
  :slots (_result _score _x_coordinate _y_coordinate ))

(defmethod rc_msgs::single_result
  (:init
   (&key
    ((:result __result) "")
    ((:score __score) 0.0)
    ((:x_coordinate __x_coordinate) 0.0)
    ((:y_coordinate __y_coordinate) 0.0)
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _score (float __score))
   (setq _x_coordinate (float __x_coordinate))
   (setq _y_coordinate (float __y_coordinate))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:x_coordinate
   (&optional __x_coordinate)
   (if __x_coordinate (setq _x_coordinate __x_coordinate)) _x_coordinate)
  (:y_coordinate
   (&optional __y_coordinate)
   (if __y_coordinate (setq _y_coordinate __y_coordinate)) _y_coordinate)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; float32 _score
    4
    ;; float32 _x_coordinate
    4
    ;; float32 _y_coordinate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_coordinate
       (sys::poke _x_coordinate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_coordinate
       (sys::poke _y_coordinate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_coordinate
     (setq _x_coordinate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_coordinate
     (setq _y_coordinate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rc_msgs::single_result :md5sum-) "e5692ad7fe58fdedd8e6a0db2954a66d")
(setf (get rc_msgs::single_result :datatype-) "rc_msgs/single_result")
(setf (get rc_msgs::single_result :definition-)
      "string result
float32 score
float32 x_coordinate
float32 y_coordinate

")



(provide :rc_msgs/single_result "e5692ad7fe58fdedd8e6a0db2954a66d")


