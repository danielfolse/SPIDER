// Auto-generated. Do not edit!

// (in-package locomotion.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class move_command_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leg_id = null;
      this.move_type = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('leg_id')) {
        this.leg_id = initObj.leg_id
      }
      else {
        this.leg_id = 0;
      }
      if (initObj.hasOwnProperty('move_type')) {
        this.move_type = initObj.move_type
      }
      else {
        this.move_type = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type move_command_data
    // Serialize message field [leg_id]
    bufferOffset = _serializer.uint64(obj.leg_id, buffer, bufferOffset);
    // Serialize message field [move_type]
    bufferOffset = _serializer.uint64(obj.move_type, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type move_command_data
    let len;
    let data = new move_command_data(null);
    // Deserialize message field [leg_id]
    data.leg_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [move_type]
    data.move_type = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'locomotion/move_command_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0bd287301f565ec7d127c2da0f8c738';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 leg_id
    uint64 move_type
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new move_command_data(null);
    if (msg.leg_id !== undefined) {
      resolved.leg_id = msg.leg_id;
    }
    else {
      resolved.leg_id = 0
    }

    if (msg.move_type !== undefined) {
      resolved.move_type = msg.move_type;
    }
    else {
      resolved.move_type = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = move_command_data;
