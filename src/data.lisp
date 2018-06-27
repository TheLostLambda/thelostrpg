;;;; This file contains the code for working with game data.
(ql:quickload "alexandria")
(ql:quickload "cl-toml")
(load "util.lisp") ; Loads common utility functions

(defun build-game (filename)
  "This function takes a TOML game specification and loads it into lisp. This is like starting a new game from the default, starting specification."
  (cl-toml:parse-file filename))

(defun get-world (game)
  "Returns the world data from within the game data"
  (gethash "world" game))

(defun paths-at (node world)
  "This function returns an vector of hashmaps of all of the edges connected to a given location"
  (gethash "edges" (gethash node world)))

(defun describe-node (node world)
  (apply #'concatenate
	 (append (list 'string (gethash "description" (gethash node world)))
	         (map 'list #'describe-path (paths-at node world)))))

(defun describe-path (path)
  (concatenate 'string
	       " The "
	       (gethash "direction" path)
	       " "
	       (gethash "description" path)))
