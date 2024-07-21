// Auto-generated. Do not edit!

// (in-package robot_functionality.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Add_Two_intsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Add_Two_intsRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int32(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int32(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Add_Two_intsRequest
    let len;
    let data = new Add_Two_intsRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_functionality/Add_Two_intsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef8322123148e475e3e93a1f609b2f70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Request
    int32 a 
    int32 b
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Add_Two_intsRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    return resolved;
    }
};

class Add_Two_intsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.z = null;
    }
    else {
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Add_Two_intsResponse
    // Serialize message field [z]
    bufferOffset = _serializer.int64(obj.z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Add_Two_intsResponse
    let len;
    let data = new Add_Two_intsResponse(null);
    // Deserialize message field [z]
    data.z = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_functionality/Add_Two_intsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '504cd75e20b3c55076aefbd8b1dcfe72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Response
    int64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Add_Two_intsResponse(null);
    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: Add_Two_intsRequest,
  Response: Add_Two_intsResponse,
  md5sum() { return '9e6a9d11554d919181816798243e5e82'; },
  datatype() { return 'robot_functionality/Add_Two_ints'; }
};
