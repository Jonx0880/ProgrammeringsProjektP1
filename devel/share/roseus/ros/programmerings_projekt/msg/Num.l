;; Auto-generated. Do not edit!


(when (boundp 'programmerings_projekt::Num)
  (if (not (find-package "PROGRAMMERINGS_PROJEKT"))
    (make-package "PROGRAMMERINGS_PROJEKT"))
  (shadow 'Num (find-package "PROGRAMMERINGS_PROJEKT")))
(unless (find-package "PROGRAMMERINGS_PROJEKT::NUM")
  (make-package "PROGRAMMERINGS_PROJEKT::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass programmerings_projekt::Num
  :super ros::object
  :slots (_pointarray ))

(defmethod programmerings_projekt::Num
  (:init
   (&key
    ((:pointarray __pointarray) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _pointarray __pointarray)
   self)
  (:pointarray
   (&rest __pointarray)
   (if (keywordp (car __pointarray))
       (send* _pointarray __pointarray)
     (progn
       (if __pointarray (setq _pointarray (car __pointarray)))
       _pointarray)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _pointarray
    (apply #'+ (send-all _pointarray :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _pointarray
     (write-long (length _pointarray) s)
     (dolist (elem _pointarray)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _pointarray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointarray (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _pointarray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get programmerings_projekt::Num :md5sum-) "9bba95aca27ea6460037613bb86c57c0")
(setf (get programmerings_projekt::Num :datatype-) "programmerings_projekt/Num")
(setf (get programmerings_projekt::Num :definition-)
      "geometry_msgs/Point[] pointarray

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :programmerings_projekt/Num "9bba95aca27ea6460037613bb86c57c0")


