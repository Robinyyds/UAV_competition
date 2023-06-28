; Auto-generated. Do not edit!


(cl:in-package rc_msgs-msg)


;//! \htmlinclude identify_results.msg.html

(cl:defclass <identify_results> (roslisp-msg-protocol:ros-message)
  ((identify_results
    :reader identify_results
    :initarg :identify_results
    :type (cl:vector rc_msgs-msg:single_result)
   :initform (cl:make-array 0 :element-type 'rc_msgs-msg:single_result :initial-element (cl:make-instance 'rc_msgs-msg:single_result))))
)

(cl:defclass identify_results (<identify_results>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <identify_results>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'identify_results)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rc_msgs-msg:<identify_results> is deprecated: use rc_msgs-msg:identify_results instead.")))

(cl:ensure-generic-function 'identify_results-val :lambda-list '(m))
(cl:defmethod identify_results-val ((m <identify_results>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:identify_results-val is deprecated.  Use rc_msgs-msg:identify_results instead.")
  (identify_results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <identify_results>) ostream)
  "Serializes a message object of type '<identify_results>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'identify_results))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'identify_results))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <identify_results>) istream)
  "Deserializes a message object of type '<identify_results>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'identify_results) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'identify_results)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rc_msgs-msg:single_result))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<identify_results>)))
  "Returns string type for a message object of type '<identify_results>"
  "rc_msgs/identify_results")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'identify_results)))
  "Returns string type for a message object of type 'identify_results"
  "rc_msgs/identify_results")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<identify_results>)))
  "Returns md5sum for a message object of type '<identify_results>"
  "3de7d5d8ebf687280f42a5ebab06b487")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'identify_results)))
  "Returns md5sum for a message object of type 'identify_results"
  "3de7d5d8ebf687280f42a5ebab06b487")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<identify_results>)))
  "Returns full string definition for message of type '<identify_results>"
  (cl:format cl:nil "single_result[] identify_results~%================================================================================~%MSG: rc_msgs/single_result~%string result~%float32 score~%float32 x_coordinate~%float32 y_coordinate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'identify_results)))
  "Returns full string definition for message of type 'identify_results"
  (cl:format cl:nil "single_result[] identify_results~%================================================================================~%MSG: rc_msgs/single_result~%string result~%float32 score~%float32 x_coordinate~%float32 y_coordinate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <identify_results>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'identify_results) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <identify_results>))
  "Converts a ROS message object to a list"
  (cl:list 'identify_results
    (cl:cons ':identify_results (identify_results msg))
))
