; Auto-generated. Do not edit!


(cl:in-package cozmo_rc-srv)


;//! \htmlinclude light_req-request.msg.html

(cl:defclass <light_req-request> (roslisp-msg-protocol:ros-message)
  ((red
    :reader red
    :initarg :red
    :type cl:boolean
    :initform cl:nil)
   (blue
    :reader blue
    :initarg :blue
    :type cl:boolean
    :initform cl:nil)
   (green
    :reader green
    :initarg :green
    :type cl:boolean
    :initform cl:nil)
   (white
    :reader white
    :initarg :white
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass light_req-request (<light_req-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <light_req-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'light_req-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cozmo_rc-srv:<light_req-request> is deprecated: use cozmo_rc-srv:light_req-request instead.")))

(cl:ensure-generic-function 'red-val :lambda-list '(m))
(cl:defmethod red-val ((m <light_req-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cozmo_rc-srv:red-val is deprecated.  Use cozmo_rc-srv:red instead.")
  (red m))

(cl:ensure-generic-function 'blue-val :lambda-list '(m))
(cl:defmethod blue-val ((m <light_req-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cozmo_rc-srv:blue-val is deprecated.  Use cozmo_rc-srv:blue instead.")
  (blue m))

(cl:ensure-generic-function 'green-val :lambda-list '(m))
(cl:defmethod green-val ((m <light_req-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cozmo_rc-srv:green-val is deprecated.  Use cozmo_rc-srv:green instead.")
  (green m))

(cl:ensure-generic-function 'white-val :lambda-list '(m))
(cl:defmethod white-val ((m <light_req-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cozmo_rc-srv:white-val is deprecated.  Use cozmo_rc-srv:white instead.")
  (white m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <light_req-request>) ostream)
  "Serializes a message object of type '<light_req-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'red) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'blue) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'green) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'white) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <light_req-request>) istream)
  "Deserializes a message object of type '<light_req-request>"
    (cl:setf (cl:slot-value msg 'red) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'blue) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'green) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'white) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<light_req-request>)))
  "Returns string type for a service object of type '<light_req-request>"
  "cozmo_rc/light_reqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'light_req-request)))
  "Returns string type for a service object of type 'light_req-request"
  "cozmo_rc/light_reqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<light_req-request>)))
  "Returns md5sum for a message object of type '<light_req-request>"
  "31d336e006298e5af6b1db3920570f3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'light_req-request)))
  "Returns md5sum for a message object of type 'light_req-request"
  "31d336e006298e5af6b1db3920570f3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<light_req-request>)))
  "Returns full string definition for message of type '<light_req-request>"
  (cl:format cl:nil "bool red~%bool blue~%bool green~%bool white~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'light_req-request)))
  "Returns full string definition for message of type 'light_req-request"
  (cl:format cl:nil "bool red~%bool blue~%bool green~%bool white~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <light_req-request>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <light_req-request>))
  "Converts a ROS message object to a list"
  (cl:list 'light_req-request
    (cl:cons ':red (red msg))
    (cl:cons ':blue (blue msg))
    (cl:cons ':green (green msg))
    (cl:cons ':white (white msg))
))
;//! \htmlinclude light_req-response.msg.html

(cl:defclass <light_req-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass light_req-response (<light_req-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <light_req-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'light_req-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cozmo_rc-srv:<light_req-response> is deprecated: use cozmo_rc-srv:light_req-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <light_req-response>) ostream)
  "Serializes a message object of type '<light_req-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <light_req-response>) istream)
  "Deserializes a message object of type '<light_req-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<light_req-response>)))
  "Returns string type for a service object of type '<light_req-response>"
  "cozmo_rc/light_reqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'light_req-response)))
  "Returns string type for a service object of type 'light_req-response"
  "cozmo_rc/light_reqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<light_req-response>)))
  "Returns md5sum for a message object of type '<light_req-response>"
  "31d336e006298e5af6b1db3920570f3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'light_req-response)))
  "Returns md5sum for a message object of type 'light_req-response"
  "31d336e006298e5af6b1db3920570f3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<light_req-response>)))
  "Returns full string definition for message of type '<light_req-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'light_req-response)))
  "Returns full string definition for message of type 'light_req-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <light_req-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <light_req-response>))
  "Converts a ROS message object to a list"
  (cl:list 'light_req-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'light_req)))
  'light_req-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'light_req)))
  'light_req-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'light_req)))
  "Returns string type for a service object of type '<light_req>"
  "cozmo_rc/light_req")