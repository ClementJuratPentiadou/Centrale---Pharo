Class {
	#name : #EMultiplicationVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
EMultiplicationVisitorTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstantVisitor new value: 5.
	ep2 := EConstantVisitor new value: 3.
	self
		assert: ((EMultiplicationVisitor new
				  right: ep1;
				  left: ep2) evaluateWith: Dictionary new)
		equals: 15
]

{ #category : #tests }
EMultiplicationVisitorTest >> testEvaluateNegated [

	| ep1 ep2 |
	ep1 := EConstantVisitor new value: 5.
	ep2 := EConstantVisitor new value: 3.
	self
		assert: ((EMultiplicationVisitor new
				  right: ep1;
				  left: ep2) negated evaluateWith: Dictionary new)
		equals: -15
]

{ #category : #tests }
EMultiplicationVisitorTest >> testEvaluateWithClassCreationMessage [

	| ep1 ep2 |
	ep1 := EConstantVisitor constant5.
	ep2 := EConstantVisitor constant3.
	self
		assert:
		((EMultiplicationVisitor left: ep1 right: ep2) evaluateWith: Dictionary new)
		equals: 15
]

{ #category : #tests }
EMultiplicationVisitorTest >> testPrinting [

	self
		assert: EMultiplicationVisitor fiveTimesThree negated printString
		equals: '- ( 5 * 3 )'
]
