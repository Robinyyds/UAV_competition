// Auto-generated. Do not edit!

// (in-package rc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let single_result = require('./single_result.js');

//-----------------------------------------------------------

class identify_results {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.identify_results = null;
    }
    else {
      if (initObj.hasOwnProperty('identify_results')) {
        this.identify_results = initObj.identify_results
      }
      else {
        this.identify_results = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type identify_results
    // Serialize message field [identify_results]
    // Serialize the length for message field [identify_results]
    bufferOffset = _serializer.uint32(obj.identify_results.length, buffer, bufferOffset);
    obj.identify_results.forEach((val) => {
      bufferOffset = single_result.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type identify_results
    let len;
    let data = new identify_results(null);
    // Deserialize message field [identify_results]
    // Deserialize array length for message field [identify_results]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.identify_results = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.identify_results[i] = single_result.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.identify_results.forEach((val) => {
      length += single_result.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rc_msgs/identify_results';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3de7d5d8ebf687280f42a5ebab06b487';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    single_result[] identify_results
    ================================================================================
    MSG: rc_msgs/single_result
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
    const resolved = new identify_results(null);
    if (msg.identify_results !== undefined) {
      resolved.identify_results = new Array(msg.identify_results.length);
      for (let i = 0; i < resolved.identify_results.length; ++i) {
        resolved.identify_results[i] = single_result.Resolve(msg.identify_results[i]);
      }
    }
    else {
      resolved.identify_results = []
    }

    return resolved;
    }
};

module.exports = identify_results;
