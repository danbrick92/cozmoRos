; Auto-generated. Do not edit!


(cl:in-package cozmo_rc-srv)


;//! \htmlinclude speaker_req-request.msg.html

(cl:defclass <speaker_req-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass speaker_req-request (<speaker_req-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speaker_req-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speaker_req-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cozmo_rc-srv:<speaker_req-request> is deprecated: use cozmo_rc-srv:speaker_req-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <speaker_req-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cozmo_rc-srv:data-val is deprecated.  Use cozmo_rc-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speaker_req-request>) ostream)
  "Serializes a message object of type '<speaker_req-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speaker_req-request>) istream)
  "Deserializes a message object of type '<speaker_req-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speaker_req-request>)))
  "Returns string type for a service object of type '<speaker_req-request>"
  "cozmo_rc/speaker_reqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_req-request)))
  "Returns string type for a service object of type 'speaker_req-request"
  "cozmo_rc/speaker_reqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speaker_req-request>)))
  "Returns md5sum for a message object of type '<speaker_req-request>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speaker_req-request)))
  "Returns md5sum for a message object of type 'speaker_req-request"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speaker_req-request>)))
  "Returns full string definition for message of type '<speaker_req-request>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speaker_req-request)))
  "Returns full string definition for message of type 'speaker_req-request"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speaker_req-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speaker_req-request>))
  "Converts a ROS message object to a list"
  (cl:list 'speaker_req-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude speaker_req-response.msg.html

(cl:defclass <speaker_req-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass speaker_req-response (<speaker_req-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speaker_req-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speaker_req-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cozmo_rc-srv:<speaker_req-response> is deprecated: use cozmo_rc-srv:speaker_req-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speaker_req-response>) ostream)
  "Serializes a message object of type '<speaker_req-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speaker_req-response>) istream)
  "Deserializes a message object of type '<speaker_req-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speaker_req-response>)))
  "Returns string type for a service object of type '<speaker_req-response>"
  "cozmo_rc/speaker_reqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_req-response)))
  "Returns string type for a service object of type 'speaker_req-response"
  "cozmo_rc/speaker_reqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speaker_req-response>)))
  "Returns md5sum for a message object of type '<speaker_req-response>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speaker_req-response)))
  "Returns md5sum for a message object of type 'speaker_req-response"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speaker_req-response>)))
  "Returns full string definition for message of type '<speaker_req-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speaker_req-response)))
  "Returns full string definition for message of type 'speaker_req-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speaker_req-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speaker_req-response>))
  "Converts a ROS message object to a list"
  (cl:list 'speaker_req-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'speaker_req)))
  'speaker_req-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'speaker_req)))
  'speaker_req-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speaker_req)))
  "Returns string type for a service object of type '<speaker_req>"
  "cozmo_rc/speaker_req")