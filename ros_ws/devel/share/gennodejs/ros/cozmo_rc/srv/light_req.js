// Auto-generated. Do not edit!

// (in-package cozmo_rc.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class light_reqRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.red = null;
      this.blue = null;
      this.green = null;
      this.white = null;
    }
    else {
      if (initObj.hasOwnProperty('red')) {
        this.red = initObj.red
      }
      else {
        this.red = false;
      }
      if (initObj.hasOwnProperty('blue')) {
        this.blue = initObj.blue
      }
      else {
        this.blue = false;
      }
      if (initObj.hasOwnProperty('green')) {
        this.green = initObj.green
      }
      else {
        this.green = false;
      }
      if (initObj.hasOwnProperty('white')) {
        this.white = initObj.white
      }
      else {
        this.white = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type light_reqRequest
    // Serialize message field [red]
    bufferOffset = _serializer.bool(obj.red, buffer, bufferOffset);
    // Serialize message field [blue]
    bufferOffset = _serializer.bool(obj.blue, buffer, bufferOffset);
    // Serialize message field [green]
    bufferOffset = _serializer.bool(obj.green, buffer, bufferOffset);
    // Serialize message field [white]
    bufferOffset = _serializer.bool(obj.white, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type light_reqRequest
    let len;
    let data = new light_reqRequest(null);
    // Deserialize message field [red]
    data.red = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [blue]
    data.blue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [green]
    data.green = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [white]
    data.white = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cozmo_rc/light_reqRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31d336e006298e5af6b1db3920570f3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool red
    bool blue
    bool green
    bool white
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new light_reqRequest(null);
    if (msg.red !== undefined) {
      resolved.red = msg.red;
    }
    else {
      resolved.red = false
    }

    if (msg.blue !== undefined) {
      resolved.blue = msg.blue;
    }
    else {
      resolved.blue = false
    }

    if (msg.green !== undefined) {
      resolved.green = msg.green;
    }
    else {
      resolved.green = false
    }

    if (msg.white !== undefined) {
      resolved.white = msg.white;
    }
    else {
      resolved.white = false
    }

    return resolved;
    }
};

class light_reqResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type light_reqResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type light_reqResponse
    let len;
    let data = new light_reqResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cozmo_rc/light_reqResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new light_reqResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: light_reqRequest,
  Response: light_reqResponse,
  md5sum() { return '31d336e006298e5af6b1db3920570f3b'; },
  datatype() { return 'cozmo_rc/light_req'; }
};
