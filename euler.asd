;;;; euler.asd

(asdf:defsystem #:euler
  :serial t
  :description "Solutions for Project Euler http://projecteuler.net"
  :author "Michael Bentley"
  :license "Public domain - but if you use any of this to answer Project Euler problems, you're missing the point"
  :components ((:file "package")
               (:file "euler")
               (:file "util")
               (:file "problem-001")
               (:file "problem-002")
               (:file "problem-003")
               (:file "problem-004")
               (:file "problem-005")
               (:file "problem-006")
               (:file "problem-007")
               (:file "problem-008")
               (:file "problem-009")
               (:file "problem-010")))

