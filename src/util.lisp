;;;; This file contains misc useful functions for use throughout the program.
(defun assoc-equal (key data)
  "Looks up a value in an alist using equal (instead of eql) for the test"
  (assoc key data :test #'equal))

(defun file-to-string (filename)
  "This function reads a text file and returns its contents as a string"
  (with-open-file (file-stream filename)
    (let ((string (make-string (file-length file-stream))))
      (read-sequence string file-stream)
      string)))
