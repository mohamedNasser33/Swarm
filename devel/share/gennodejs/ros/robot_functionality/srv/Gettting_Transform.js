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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Gettting_TransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Frame_id = null;
      this.Child_Frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('Frame_id')) {
        this.Frame_id = initObj.Frame_id
      }
      else {
        this.Frame_id = '';
      }
      if (initObj.hasOwnProperty('Child_Frame_id')) {
        this.Child_Frame_id = initObj.Child_Frame_id
      }
      else {
        this.Child_Frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gettting_TransformRequest
    // Serialize message field [Frame_id]
    bufferOffset = _serializer.string(obj.Frame_id, buffer, bufferOffset);
    // Serialize message field [Child_Frame_id]
    bufferOffset = _serializer.string(obj.Child_Frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gettting_TransformRequest
    let len;
    let data = new Gettting_TransformRequest(null);
    // Deserialize message field [Frame_id]
    data.Frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Child_Frame_id]
    data.Child_Frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Frame_id);
    length += _getByteLength(object.Child_Frame_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_functionality/Gettting_TransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb2973aa1cf0610d54f3677ba9015c26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Request 
    string Frame_id
    string Child_Frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gettting_TransformRequest(null);
    if (msg.Frame_id !== undefined) {
      resolved.Frame_id = msg.Frame_id;
    }
    else {
      resolved.Frame_id = ''
    }

    if (msg.Child_Frame_id !== undefined) {
      resolved.Child_Frame_id = msg.Child_Frame_id;
    }
    else {
      resolved.Child_Frame_id = ''
    }

    return resolved;
    }
};

class Gettting_TransformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Transform = null;
      this.Success = null;
    }
    else {
      if (initObj.hasOwnProperty('Transform')) {
        this.Transform = initObj.Transform
      }
      else {
        this.Transform = new geometry_msgs.msg.TransformStamped();
      }
      if (initObj.hasOwnProperty('Success')) {
        this.Success = initObj.Success
      }
      else {
        this.Success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gettting_TransformResponse
    // Serialize message field [Transform]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.Transform, buffer, bufferOffset);
    // Serialize message field [Success]
    bufferOffset = _serializer.bool(obj.Success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gettting_TransformResponse
    let len;
    let data = new Gettting_TransformResponse(null);
    // Deserialize message field [Transform]
    data.Transform = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [Success]
    data.Success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.Transform);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_functionality/Gettting_TransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f385f95c3287739c267f3e35e012760';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Response
    geometry_msgs/TransformStamped Transform
    bool Success
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gettting_TransformResponse(null);
    if (msg.Transform !== undefined) {
      resolved.Transform = geometry_msgs.msg.TransformStamped.Resolve(msg.Transform)
    }
    else {
      resolved.Transform = new geometry_msgs.msg.TransformStamped()
    }

    if (msg.Success !== undefined) {
      resolved.Success = msg.Success;
    }
    else {
      resolved.Success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: Gettting_TransformRequest,
  Response: Gettting_TransformResponse,
  md5sum() { return 'a7995ca0c7b7430d83491b182946f79d'; },
  datatype() { return 'robot_functionality/Gettting_Transform'; }
};
