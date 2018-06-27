;;;; This file contains the code for reading toml formatted game files.
(defun file-to-string (filename)
  "This function reads a text file and returns its contents as a string"
  (with-open-file (file-stream filename)
    (let ((string (make-string (file-length file-stream))))
      (read-sequence string file-stream)
      string)))
