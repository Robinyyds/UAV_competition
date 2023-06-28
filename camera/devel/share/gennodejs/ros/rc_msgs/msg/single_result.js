// Auto-generated. Do not edit!

// (in-package rc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class single_result {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.score = null;
      this.x_coordinate = null;
      this.y_coordinate = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('x_coordinate')) {
        this.x_coordinate = initObj.x_coordinate
      }
      else {
        this.x_coordinate = 0.0;
      }
      if (initObj.hasOwnProperty('y_coordinate')) {
        this.y_coordinate = initObj.y_coordinate
      }
      else {
        this.y_coordinate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type single_result
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [x_coordinate]
    bufferOffset = _serializer.float32(obj.x_coordinate, buffer, bufferOffset);
    // Serialize message field [y_coordinate]
    bufferOffset = _serializer.float32(obj.y_coordinate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type single_result
    let len;
    let data = new single_result(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_coordinate]
    data.x_coordinate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_coordinate]
    data.y_coordinate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rc_msgs/single_result';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5692ad7fe58fdedd8e6a0db2954a66d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    float32 score
    float32 x_coordinate
    float32 y_coordinate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new single_result(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.x_coordinate !== undefined) {
      resolved.x_coordinate = msg.x_coordinate;
    }
    else {
      resolved.x_coordinate = 0.0
    }

    if (msg.y_coordinate !== undefined) {
      resolved.y_coordinate = msg.y_coordinate;
    }
    else {
      resolved.y_coordinate = 0.0
    }

    return resolved;
    }
};

module.exports = single_result;
