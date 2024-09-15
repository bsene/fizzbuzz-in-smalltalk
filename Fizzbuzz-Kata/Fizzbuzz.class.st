Class {
	#name : 'Fizzbuzz',
	#superclass : 'Object',
	#category : 'Fizzbuzz-Kata',
	#package : 'Fizzbuzz-Kata'
}

{ #category : 'initialize' }
Fizzbuzz >> compute: pn [

	(pn isInteger and: [ pn > 0 ]) ifFalse: [
		NonPositiveNumber new signal ].
	
	
	pn %  3 = 0 ifTrue: [ 
		^ 'fizz' ].

	^ pn asString
]
