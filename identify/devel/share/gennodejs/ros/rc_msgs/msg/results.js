// Auto-generated. Do not edit!

// (in-package rc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let detection = require('./detection.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class results {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.step = null;
      this.a = null;
      this.results = null;
      this.color = null;
      this.cloud = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('step')) {
        this.step = initObj.step
      }
      else {
        this.step = 0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('results')) {
        this.results = initObj.results
      }
      else {
        this.results = [];
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('cloud')) {
        this.cloud = initObj.cloud
      }
      else {
        this.cloud = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type results
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [step]
    bufferOffset = _serializer.uint8(obj.step, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.int32(obj.a, buffer, bufferOffset);
    // Serialize message field [results]
    // Serialize the length for message field [results]
    bufferOffset = _serializer.uint32(obj.results.length, buffer, bufferOffset);
    obj.results.forEach((val) => {
      bufferOffset = detection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [color]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.cloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type results
    let len;
    let data = new results(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [step]
    data.step = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [results]
    // Deserialize array length for message field [results]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.results = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.results[i] = detection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [color]
    data.color = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud]
    data.cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.results.forEach((val) => {
      length += detection.getMessageSize(val);
    });
    length += sensor_msgs.msg.Image.getMessageSize(object.color);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.cloud);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rc_msgs/results';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '099ded74b8d658b6afb2572c7a0fac5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
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
    # contents of the "fields" array.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new results(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.step !== undefined) {
      resolved.step = msg.step;
    }
    else {
      resolved.step = 0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.results !== undefined) {
      resolved.results = new Array(msg.results.length);
      for (let i = 0; i < resolved.results.length; ++i) {
        resolved.results[i] = detection.Resolve(msg.results[i]);
      }
    }
    else {
      resolved.results = []
    }

    if (msg.color !== undefined) {
      resolved.color = sensor_msgs.msg.Image.Resolve(msg.color)
    }
    else {
      resolved.color = new sensor_msgs.msg.Image()
    }

    if (msg.cloud !== undefined) {
      resolved.cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.cloud)
    }
    else {
      resolved.cloud = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = results;
