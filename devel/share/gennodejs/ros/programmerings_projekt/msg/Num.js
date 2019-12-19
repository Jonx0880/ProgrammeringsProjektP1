// Auto-generated. Do not edit!

// (in-package programmerings_projekt.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Num {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointarray = null;
    }
    else {
      if (initObj.hasOwnProperty('pointarray')) {
        this.pointarray = initObj.pointarray
      }
      else {
        this.pointarray = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Num
    // Serialize message field [pointarray]
    // Serialize the length for message field [pointarray]
    bufferOffset = _serializer.uint32(obj.pointarray.length, buffer, bufferOffset);
    obj.pointarray.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Num
    let len;
    let data = new Num(null);
    // Deserialize message field [pointarray]
    // Deserialize array length for message field [pointarray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointarray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointarray[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pointarray.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'programmerings_projekt/Num';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bba95aca27ea6460037613bb86c57c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] pointarray
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Num(null);
    if (msg.pointarray !== undefined) {
      resolved.pointarray = new Array(msg.pointarray.length);
      for (let i = 0; i < resolved.pointarray.length; ++i) {
        resolved.pointarray[i] = geometry_msgs.msg.Point.Resolve(msg.pointarray[i]);
      }
    }
    else {
      resolved.pointarray = []
    }

    return resolved;
    }
};

module.exports = Num;
