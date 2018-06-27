;;;; thelostrpg.asd

(asdf:defsystem #:thelostrpg
  :description "A game engine for making text-based RPGs."
  :author "Brooks J Rady <b.j.rady@gmail.com>"
  :license  "Unlicense"
  :version "0.0.1"
  :serial t
  :depends-on (#:cl-toml #:alexandria)
  :module "src"
  :components ((:file "util")
               (:file "data")))
