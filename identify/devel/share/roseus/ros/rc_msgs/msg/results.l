;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::results)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'results (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::RESULTS")
  (make-package "RC_MSGS::RESULTS"))

(in-package "ROS")
;;//! \htmlinclude results.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass rc_msgs::results
  :super ros::object
  :slots (_stamp _step _a _results _color _cloud ))

(defmethod rc_msgs::results
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:step __step) 0)
    ((:a __a) 0)
    ((:results __results) ())
    ((:color __color) (instance sensor_msgs::Image :init))
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _step (round __step))
   (setq _a (round __a))
   (setq _results __results)
   (setq _color __color)
   (setq _cloud __cloud)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:results
   (&rest __results)
   (if (keywordp (car __results))
       (send* _results __results)
     (progn
       (if __results (setq _results (car __results)))
       _results)))
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8 _step
    1
    ;; int32 _a
    4
    ;; rc_msgs/detection[] _results
    (apply #'+ (send-all _results :serialization-length)) 4
    ;; sensor_msgs/Image _color
    (send _color :serialization-length)
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8 _step
       (write-byte _step s)
     ;; int32 _a
       (write-long _a s)
     ;; rc_msgs/detection[] _results
     (write-long (length _results) s)
     (dolist (elem _results)
       (send elem :serialize s)
       )
     ;; sensor_msgs/Image _color
       (send _color :serialize s)
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _step
     (setq _step (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rc_msgs/detection[] _results
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _results (let (r) (dotimes (i n) (push (instance rc_msgs::detection :init) r)) r))
     (dolist (elem- _results)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/Image _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;;
   self)
  )

(setf (get rc_msgs::results :md5sum-) "099ded74b8d658b6afb2572c7a0fac5b")
(setf (get rc_msgs::results :datatype-) "rc_msgs/results")
(setf (get rc_msgs::results :definition-)
      "time stamp
uint8 step
int32 a
detection[] results
sensor_msgs/Image color
sensor_msgs/PointCloud2 cloud

================================================================================
MSG: rc_msgs/detection
int32 label
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

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :rc_msgs/results "099ded74b8d658b6afb2572c7a0fac5b")


