
(cl:in-package :asdf)

(defsystem "cozmo_rc-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "speaker_req" :depends-on ("_package_speaker_req"))
    (:file "_package_speaker_req" :depends-on ("_package"))
  ))