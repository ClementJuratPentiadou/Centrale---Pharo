Class {
	#name : #MyTestShape,
	#superclass : #TestCase,
	#category : #'Ex_2'
}

{ #category : #tests }
MyTestShape >> testCreate [

	|shape|
	shape := MyShape color: 'Red' isFilled: true.
	
	self assert: shape color equals: 'Red'.
	self assert: shape isFilled equals: true.
]

{ #category : #tests }
MyTestShape >> testInit [

	|shape|
	shape := MyShape new.
	
	self assert: shape color equals: 'Blank'.
	self assert: shape isFilled equals: false.
]

{ #category : #tests }
MyTestShape >> testPrint [

	|shape|
	shape := MyShape color: 'Red' isFilled: true.
	
	self assert: shape asString equals: 'Red - filled'.
	
	shape := MyShape new.
	self assert: shape asString equals: 'Blank - not filled'.
]
