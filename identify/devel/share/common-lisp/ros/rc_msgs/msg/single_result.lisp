; Auto-generated. Do not edit!


(cl:in-package rc_msgs-msg)


;//! \htmlinclude single_result.msg.html

(cl:defclass <single_result> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (x_coordinate
    :reader x_coordinate
    :initarg :x_coordinate
    :type cl:float
    :initform 0.0)
   (y_coordinate
    :reader y_coordinate
    :initarg :y_coordinate
    :type cl:float
    :initform 0.0))
)

(cl:defclass single_result (<single_result>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <single_result>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'single_result)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rc_msgs-msg:<single_result> is deprecated: use rc_msgs-msg:single_result instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <single_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:result-val is deprecated.  Use rc_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <single_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:score-val is deprecated.  Use rc_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'x_coordinate-val :lambda-list '(m))
(cl:defmethod x_coordinate-val ((m <single_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:x_coordinate-val is deprecated.  Use rc_msgs-msg:x_coordinate instead.")
  (x_coordinate m))

(cl:ensure-generic-function 'y_coordinate-val :lambda-list '(m))
(cl:defmethod y_coordinate-val ((m <single_result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:y_coordinate-val is deprecated.  Use rc_msgs-msg:y_coordinate instead.")
  (y_coordinate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <single_result>) ostream)
  "Serializes a message object of type '<single_result>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_coordinate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_coordinate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <single_result>) istream)
  "Deserializes a message object of type '<single_result>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_coordinate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_coordinate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<single_result>)))
  "Returns string type for a message object of type '<single_result>"
  "rc_msgs/single_result")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'single_result)))
  "Returns string type for a message object of type 'single_result"
  "rc_msgs/single_result")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<single_result>)))
  "Returns md5sum for a message object of type '<single_result>"
  "e5692ad7fe58fdedd8e6a0db2954a66d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'single_result)))
  "Returns md5sum for a message object of type 'single_result"
  "e5692ad7fe58fdedd8e6a0db2954a66d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<single_result>)))
  "Returns full string definition for message of type '<single_result>"
  (cl:format cl:nil "string result~%float32 score~%float32 x_coordinate~%float32 y_coordinate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'single_result)))
  "Returns full string definition for message of type 'single_result"
  (cl:format cl:nil "string result~%float32 score~%float32 x_coordinate~%float32 y_coordinate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <single_result>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <single_result>))
  "Converts a ROS message object to a list"
  (cl:list 'single_result
    (cl:cons ':result (result msg))
    (cl:cons ':score (score msg))
    (cl:cons ':x_coordinate (x_coordinate msg))
    (cl:cons ':y_coordinate (y_coordinate msg))
))
