;; Auto-generated. Do not edit!


(when (boundp 'locomotion::move_command_data)
  (if (not (find-package "LOCOMOTION"))
    (make-package "LOCOMOTION"))
  (shadow 'move_command_data (find-package "LOCOMOTION")))
(unless (find-package "LOCOMOTION::MOVE_COMMAND_DATA")
  (make-package "LOCOMOTION::MOVE_COMMAND_DATA"))

(in-package "ROS")
;;//! \htmlinclude move_command_data.msg.html


(defclass locomotion::move_command_data
  :super ros::object
  :slots (_leg_id _move_type _message ))

(defmethod locomotion::move_command_data
  (:init
   (&key
    ((:leg_id __leg_id) 0)
    ((:move_type __move_type) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _leg_id (round __leg_id))
   (setq _move_type (round __move_type))
   (setq _message (string __message))
   self)
  (:leg_id
   (&optional __leg_id)
   (if __leg_id (setq _leg_id __leg_id)) _leg_id)
  (:move_type
   (&optional __move_type)
   (if __move_type (setq _move_type __move_type)) _move_type)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint64 _leg_id
    8
    ;; uint64 _move_type
    8
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _leg_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _leg_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _leg_id) (= (length (_leg_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_leg_id . bv) 0) 0) s)
              (write-long (ash (elt (_leg_id . bv) 1) -1) s))
             ((and (class _leg_id) (= (length (_leg_id . bv)) 1)) ;; big1
              (write-long (elt (_leg_id . bv) 0) s)
              (write-long (if (>= _leg_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _leg_id s)(write-long (if (>= _leg_id 0) 0 #xffffffff) s)))
     ;; uint64 _move_type
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _move_type (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _move_type) (= (length (_move_type . bv)) 2)) ;; bignum
              (write-long (ash (elt (_move_type . bv) 0) 0) s)
              (write-long (ash (elt (_move_type . bv) 1) -1) s))
             ((and (class _move_type) (= (length (_move_type . bv)) 1)) ;; big1
              (write-long (elt (_move_type . bv) 0) s)
              (write-long (if (>= _move_type 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _move_type s)(write-long (if (>= _move_type 0) 0 #xffffffff) s)))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _leg_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _leg_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _leg_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _move_type
     
#+(or :alpha :irix6 :x86_64)
      (setf _move_type (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _move_type (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get locomotion::move_command_data :md5sum-) "b0bd287301f565ec7d127c2da0f8c738")
(setf (get locomotion::move_command_data :datatype-) "locomotion/move_command_data")
(setf (get locomotion::move_command_data :definition-)
      "uint64 leg_id
uint64 move_type
string message


")



(provide :locomotion/move_command_data "b0bd287301f565ec7d127c2da0f8c738")


