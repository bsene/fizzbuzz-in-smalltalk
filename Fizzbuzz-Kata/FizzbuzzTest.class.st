Class {
	#name : 'FizzbuzzTest',
	#superclass : 'TestCase',
	#category : 'Fizzbuzz-Kata',
	#package : 'Fizzbuzz-Kata'
}

{ #category : 'tests' }
FizzbuzzTest >> test1is1 [

	| sut |
	sut := Fizzbuzz new.


	self assert: (sut compute: 1 ) equals: '1'
]

{ #category : 'tests' }
FizzbuzzTest >> test2is2 [

	| sut |
	sut := Fizzbuzz new.


	self assert: (sut compute: 2) equals: '2'
]

{ #category : 'tests' }
FizzbuzzTest >> test3isfizz [

	| sut |
	sut := Fizzbuzz new.


	self assert: (sut compute: 3) equals: 'fizz'
]

{ #category : 'tests' }
FizzbuzzTest >> test9isfizz [

	| sut |
	sut := Fizzbuzz new.


	self assert: (sut compute: 9) equals: 'fizz'
]

{ #category : 'tests' }
FizzbuzzTest >> testPreventFromCalculatingWithNonPositiveNumber [

	| sut |
	sut := Fizzbuzz new.


	self should: [ sut compute: 'sbdbbds' ] raise: NonPositiveNumber.
	self should: [ sut compute: false ] raise: NonPositiveNumber.
	self should: [ sut compute: #d ] raise: NonPositiveNumber.
	self should: [ sut compute: 2.3 ] raise: NonPositiveNumber.
	self should: [ sut compute: -2 ] raise: NonPositiveNumber.
]
