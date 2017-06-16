;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Guessing game|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require rackunit)
(require "extras.rkt")
(require (lib "mysterx.ss" "mysterx"))
 ;(require rsound)
 #|(require net/sendmail)
 (send-mail-message/port	 	"nitika889@gmail.com"	 	 	 	 
 	 	"hello" 	 	 	 
 	 	(list "tanwani.n@husky.neu.edu")	 	 	 
 	 	'()	 	 	 	 
 	 	'())|#
(define spvoice (cocreate-instance-from-coclass "SpVoice Class"))
(com-invoke spvoice "Speak" "Welcome to the guessing game")
(com-invoke spvoice "Speak" "Enter two numbers,second number should be larger than first
,and also enter your guess")
;(check-location "Racket Project" "Guessing game.rkt")

;(provide guessing-game)

;;Data Definitions :none
;;guessing-game : Real Real Real -> String
;;Purpose:The purpose is to guess the number lying between a range
;;GIVEN:
;;value1:It is the smaller value ,which denotes the lower limit x.(units)
;;value2:It is the larger value,which denotes the upper limit.(units)
;;guess_value:It is the value guessed by the user.
;;Generally the output is the string qhich says whether the user has made the correct
;guess or not.
;;RETURNS:
;;Answer:It tells whether the guess is correct or not.
;;EXAMPLES:
;;(guessing-game 5 10 6)
;;"Correct value"
;;(guessing-game 5 10 6)
;;"Wrong guess"

;;DESIGN-STRATEGY:Combine Simple Functions 


(define ( guessing-game value1 value2 guess_value)
  (if(and(>= value1 1)( <= value1 4294967087) (>= value2 1)( <= value2 4294967087) (< value1 value2))
     (check-value value1 value2 guess_value)
     
     "Minimum value has to be greater than or equal to one"))

  (define (check-value v1 v2 g)
    (if (= g (random v1 v2))
        (com-invoke spvoice "Speak" "Correct guess")
        (com-invoke spvoice "Speak" "Wrong guess")))

#|(guessing-game 5 10 6)
"Correct value"
(guessing-game 5 10 6)
"Wrong guess"|#

#| Test cases cannot be written because eveytime the random function gives a different value.|#
