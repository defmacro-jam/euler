;;;; euler.asd

(asdf:defsystem #:euler
  :serial t
  :description "Solutions for Project Euler http://projecteuler.net"
  :author "Michael Bentley"
  :license "Public domain - but if you use any of this to answer Project Euler problems, you're missing the point"
  :components ((:file "package")
               (:file "euler")
               (:file "util")
               (:file "problem-001")))

