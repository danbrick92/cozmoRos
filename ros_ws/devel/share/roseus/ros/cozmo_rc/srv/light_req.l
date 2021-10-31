;; Auto-generated. Do not edit!


(when (boundp 'cozmo_rc::light_req)
  (if (not (find-package "COZMO_RC"))
    (make-package "COZMO_RC"))
  (shadow 'light_req (find-package "COZMO_RC")))
(unless (find-package "COZMO_RC::LIGHT_REQ")
  (make-package "COZMO_RC::LIGHT_REQ"))
(unless (find-package "COZMO_RC::LIGHT_REQREQUEST")
  (make-package "COZMO_RC::LIGHT_REQREQUEST"))
(unless (find-package "COZMO_RC::LIGHT_REQRESPONSE")
  (make-package "COZMO_RC::LIGHT_REQRESPONSE"))

(in-package "ROS")





(defclass cozmo_rc::light_reqRequest
  :super ros::object
  :slots (_red _blue _green _white ))

(defmethod cozmo_rc::light_reqRequest
  (:init
   (&key
    ((:red __red) nil)
    ((:blue __blue) nil)
    ((:green __green) nil)
    ((:white __white) nil)
    )
   (send-super :init)
   (setq _red __red)
   (setq _blue __blue)
   (setq _green __green)
   (setq _white __white)
   self)
  (:red
   (&optional (__red :null))
   (if (not (eq __red :null)) (setq _red __red)) _red)
  (:blue
   (&optional (__blue :null))
   (if (not (eq __blue :null)) (setq _blue __blue)) _blue)
  (:green
   (&optional (__green :null))
   (if (not (eq __green :null)) (setq _green __green)) _green)
  (:white
   (&optional (__white :null))
   (if (not (eq __white :null)) (setq _white __white)) _white)
  (:serialization-length
   ()
   (+
    ;; bool _red
    1
    ;; bool _blue
    1
    ;; bool _green
    1
    ;; bool _white
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _red
       (if _red (write-byte -1 s) (write-byte 0 s))
     ;; bool _blue
       (if _blue (write-byte -1 s) (write-byte 0 s))
     ;; bool _green
       (if _green (write-byte -1 s) (write-byte 0 s))
     ;; bool _white
       (if _white (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _red
     (setq _red (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _blue
     (setq _blue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _green
     (setq _green (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _white
     (setq _white (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cozmo_rc::light_reqResponse
  :super ros::object
  :slots ())

(defmethod cozmo_rc::light_reqResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cozmo_rc::light_req
  :super ros::object
  :slots ())

(setf (get cozmo_rc::light_req :md5sum-) "31d336e006298e5af6b1db3920570f3b")
(setf (get cozmo_rc::light_req :datatype-) "cozmo_rc/light_req")
(setf (get cozmo_rc::light_req :request) cozmo_rc::light_reqRequest)
(setf (get cozmo_rc::light_req :response) cozmo_rc::light_reqResponse)

(defmethod cozmo_rc::light_reqRequest
  (:response () (instance cozmo_rc::light_reqResponse :init)))

(setf (get cozmo_rc::light_reqRequest :md5sum-) "31d336e006298e5af6b1db3920570f3b")
(setf (get cozmo_rc::light_reqRequest :datatype-) "cozmo_rc/light_reqRequest")
(setf (get cozmo_rc::light_reqRequest :definition-)
      "bool red
bool blue
bool green
bool white
---
")

(setf (get cozmo_rc::light_reqResponse :md5sum-) "31d336e006298e5af6b1db3920570f3b")
(setf (get cozmo_rc::light_reqResponse :datatype-) "cozmo_rc/light_reqResponse")
(setf (get cozmo_rc::light_reqResponse :definition-)
      "bool red
bool blue
bool green
bool white
---
")



(provide :cozmo_rc/light_req "31d336e006298e5af6b1db3920570f3b")


