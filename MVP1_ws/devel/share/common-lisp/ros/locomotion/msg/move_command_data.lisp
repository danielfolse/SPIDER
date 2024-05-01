; Auto-generated. Do not edit!


(cl:in-package locomotion-msg)


;//! \htmlinclude move_command_data.msg.html

(cl:defclass <move_command_data> (roslisp-msg-protocol:ros-message)
  ((leg_id
    :reader leg_id
    :initarg :leg_id
    :type cl:integer
    :initform 0)
   (move_type
    :reader move_type
    :initarg :move_type
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass move_command_data (<move_command_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_command_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_command_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name locomotion-msg:<move_command_data> is deprecated: use locomotion-msg:move_command_data instead.")))

(cl:ensure-generic-function 'leg_id-val :lambda-list '(m))
(cl:defmethod leg_id-val ((m <move_command_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotion-msg:leg_id-val is deprecated.  Use locomotion-msg:leg_id instead.")
  (leg_id m))

(cl:ensure-generic-function 'move_type-val :lambda-list '(m))
(cl:defmethod move_type-val ((m <move_command_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotion-msg:move_type-val is deprecated.  Use locomotion-msg:move_type instead.")
  (move_type m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <move_command_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locomotion-msg:message-val is deprecated.  Use locomotion-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_command_data>) ostream)
  "Serializes a message object of type '<move_command_data>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'leg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'leg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'leg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'leg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'leg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'leg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'leg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'move_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'move_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'move_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'move_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'move_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'move_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'move_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'move_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_command_data>) istream)
  "Deserializes a message object of type '<move_command_data>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'move_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'move_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'move_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'move_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'move_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'move_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'move_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'move_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_command_data>)))
  "Returns string type for a message object of type '<move_command_data>"
  "locomotion/move_command_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_command_data)))
  "Returns string type for a message object of type 'move_command_data"
  "locomotion/move_command_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_command_data>)))
  "Returns md5sum for a message object of type '<move_command_data>"
  "b0bd287301f565ec7d127c2da0f8c738")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_command_data)))
  "Returns md5sum for a message object of type 'move_command_data"
  "b0bd287301f565ec7d127c2da0f8c738")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_command_data>)))
  "Returns full string definition for message of type '<move_command_data>"
  (cl:format cl:nil "uint64 leg_id~%uint64 move_type~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_command_data)))
  "Returns full string definition for message of type 'move_command_data"
  (cl:format cl:nil "uint64 leg_id~%uint64 move_type~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_command_data>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_command_data>))
  "Converts a ROS message object to a list"
  (cl:list 'move_command_data
    (cl:cons ':leg_id (leg_id msg))
    (cl:cons ':move_type (move_type msg))
    (cl:cons ':message (message msg))
))
