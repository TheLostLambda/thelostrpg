;;;; This file contains the code for working with game data.
(ql:quickload "cl-toml") ; This library is out of date in quicklisp. When it's updated, I can use parse-file.
(load "util.lisp") ; Loads common utility functions

(defun build-game (filename)
  "This function takes a TOML game specification and loads it into lisp. This is like starting a new game from the default, starting specification."
  (cl-toml:parse (file-to-string filename) :table-as :alist))

(defun get-world (game)
  "Returns the world data from within the game data"
  (assoc-equal "world" game))

(defun paths-at (node world)
  (assoc-equal node world))
