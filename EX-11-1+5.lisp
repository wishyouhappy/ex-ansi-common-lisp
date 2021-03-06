(defclass rectangle ()
  ((height :accessor rectangle-height
           :initarg :height
           :initform 0)
   
   (width :accessor rectangle-width
          :initarg :width
          :initform 0)))

(defclass circle ()
  ((radius :accessor circle-radius
           :initarg :radius
           :initform 0)))

(defmethod area ((x rectangle))
  (* (rectangle-width x) (rectangle-height)))

(defmethod area ((x circle))
  (* pi (expt (circle-radius x) 2)))

(defvar counter 0)

(defmethod area :before (shape)
  (incf counter))


  

