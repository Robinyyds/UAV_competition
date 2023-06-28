;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::detection)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'detection (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::DETECTION")
  (make-package "RC_MSGS::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude detection.msg.html


(defclass rc_msgs::detection
  :super ros::object
  :slots (_label _score _x1 _y1 _x2 _y2 _contours ))

(defmethod rc_msgs::detection
  (:init
   (&key
    ((:label __label) 0)
    ((:score __score) 0.0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:contours __contours) ())
    )
   (send-super :init)
   (setq _label (round __label))
   (setq _score (float __score))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _contours __contours)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:contours
   (&rest __contours)
   (if (keywordp (car __contours))
       (send* _contours __contours)
     (progn
       (if __contours (setq _contours (car __contours)))
       _contours)))
  (:serialization-length
   ()
   (+
    ;; int32 _label
    4
    ;; float32 _score
    4
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _x2
    4
    ;; float32 _y2
    4
    ;; rc_msgs/point[] _contours
    (apply #'+ (send-all _contours :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _label
       (write-long _label s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; rc_msgs/point[] _contours
     (write-long (length _contours) s)
     (dolist (elem _contours)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _label
     (setq _label (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; rc_msgs/point[] _contours
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contours (let (r) (dotimes (i n) (push (instance rc_msgs::point :init) r)) r))
     (dolist (elem- _contours)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rc_msgs::detection :md5sum-) "23cb67375d6ff3ac17afa20ebc5a5cd0")
(setf (get rc_msgs::detection :datatype-) "rc_msgs/detection")
(setf (get rc_msgs::detection :definition-)
      "int32 label
float32 score
float32 x1
float32 y1
float32 x2
float32 y2
point[] contours

================================================================================
MSG: rc_msgs/point
float32 x
float32 y

")



(provide :rc_msgs/detection "23cb67375d6ff3ac17afa20ebc5a5cd0")


