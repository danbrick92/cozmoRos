;; Auto-generated. Do not edit!


(when (boundp 'cozmo_rc::speaker_req)
  (if (not (find-package "COZMO_RC"))
    (make-package "COZMO_RC"))
  (shadow 'speaker_req (find-package "COZMO_RC")))
(unless (find-package "COZMO_RC::SPEAKER_REQ")
  (make-package "COZMO_RC::SPEAKER_REQ"))
(unless (find-package "COZMO_RC::SPEAKER_REQREQUEST")
  (make-package "COZMO_RC::SPEAKER_REQREQUEST"))
(unless (find-package "COZMO_RC::SPEAKER_REQRESPONSE")
  (make-package "COZMO_RC::SPEAKER_REQRESPONSE"))

(in-package "ROS")





(defclass cozmo_rc::speaker_reqRequest
  :super ros::object
  :slots (_data ))

(defmethod cozmo_rc::speaker_reqRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cozmo_rc::speaker_reqResponse
  :super ros::object
  :slots ())

(defmethod cozmo_rc::speaker_reqResponse
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

(defclass cozmo_rc::speaker_req
  :super ros::object
  :slots ())

(setf (get cozmo_rc::speaker_req :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get cozmo_rc::speaker_req :datatype-) "cozmo_rc/speaker_req")
(setf (get cozmo_rc::speaker_req :request) cozmo_rc::speaker_reqRequest)
(setf (get cozmo_rc::speaker_req :response) cozmo_rc::speaker_reqResponse)

(defmethod cozmo_rc::speaker_reqRequest
  (:response () (instance cozmo_rc::speaker_reqResponse :init)))

(setf (get cozmo_rc::speaker_reqRequest :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get cozmo_rc::speaker_reqRequest :datatype-) "cozmo_rc/speaker_reqRequest")
(setf (get cozmo_rc::speaker_reqRequest :definition-)
      "string data
---
")

(setf (get cozmo_rc::speaker_reqResponse :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get cozmo_rc::speaker_reqResponse :datatype-) "cozmo_rc/speaker_reqResponse")
(setf (get cozmo_rc::speaker_reqResponse :definition-)
      "string data
---
")



(provide :cozmo_rc/speaker_req "992ce8a1687cec8c8bd883ec73ca41d1")


