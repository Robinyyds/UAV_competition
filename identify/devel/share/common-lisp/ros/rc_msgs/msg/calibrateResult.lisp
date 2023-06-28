; Auto-generated. Do not edit!


(cl:in-package rc_msgs-msg)


;//! \htmlinclude calibrateResult.msg.html

(cl:defclass <calibrateResult> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector rc_msgs-msg:point)
   :initform (cl:make-array 0 :element-type 'rc_msgs-msg:point :initial-element (cl:make-instance 'rc_msgs-msg:point))))
)

(cl:defclass calibrateResult (<calibrateResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calibrateResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calibrateResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rc_msgs-msg:<calibrateResult> is deprecated: use rc_msgs-msg:calibrateResult instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <calibrateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:data-val is deprecated.  Use rc_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calibrateResult>) ostream)
  "Serializes a message object of type '<calibrateResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calibrateResult>) istream)
  "Deserializes a message object of type '<calibrateResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rc_msgs-msg:point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calibrateResult>)))
  "Returns string type for a message object of type '<calibrateResult>"
  "rc_msgs/calibrateResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calibrateResult)))
  "Returns string type for a message object of type 'calibrateResult"
  "rc_msgs/calibrateResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calibrateResult>)))
  "Returns md5sum for a message object of type '<calibrateResult>"
  "f88ab6e515853fd3715748d3598553b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calibrateResult)))
  "Returns md5sum for a message object of type 'calibrateResult"
  "f88ab6e515853fd3715748d3598553b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calibrateResult>)))
  "Returns full string definition for message of type '<calibrateResult>"
  (cl:format cl:nil "point[] data~%~%================================================================================~%MSG: rc_msgs/point~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calibrateResult)))
  "Returns full string definition for message of type 'calibrateResult"
  (cl:format cl:nil "point[] data~%~%================================================================================~%MSG: rc_msgs/point~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calibrateResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calibrateResult>))
  "Converts a ROS message object to a list"
  (cl:list 'calibrateResult
    (cl:cons ':data (data msg))
))
