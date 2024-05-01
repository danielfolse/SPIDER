
(cl:in-package :asdf)

(defsystem "locomotion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "move_command_data" :depends-on ("_package_move_command_data"))
    (:file "_package_move_command_data" :depends-on ("_package"))
  ))