Class {
	#name : #MyPointTest,
	#superclass : #TestCase,
	#category : #'Ex_1'
}

{ #category : #tests }
MyPointTest >> testPointCreate [

	|p|
	p := MyPoint new.
	p x:1.
	p y:2.
	
	self assert: p x equals: 1.
	self assert: p y equals: 2.
]

{ #category : #tests }
MyPointTest >> testPointInit [

	|p|
	p := MyPoint new.
	
	self assert: p x equals: 0.
	self assert: p y equals: 0.
]

{ #category : #tests }
MyPointTest >> testPrint [

	|p|
	p := MyPoint x: 8 y: 10.
	
	self assert: p asString equals: '(8,10)'.
]
