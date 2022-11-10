Class {
	#name : #EAdditionVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
EAdditionVisitorTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstantVisitor new value: 5.
	ep2 := EConstantVisitor new value: 3.
	self
		assert: ((EAdditionVisitor new
				  right: ep1;
				  left: ep2) evaluateWith: Dictionary new)
		equals: 8
]

{ #category : #tests }
EAdditionVisitorTest >> testEvaluateWithClassCreationMessage [

	| ep1 ep2 |
	ep1 := EConstantVisitor constant5.
	ep2 := EConstantVisitor constant3.
	self
		assert:
		((EAdditionVisitor left: ep1 right: ep2) evaluateWith: Dictionary new)
		equals: 8
]

{ #category : #tests }
EAdditionVisitorTest >> testEvaluateWithNegation [

	| ep1 ep2 |
	ep1 := ENegationVisitor new expression:
		       (EConstantVisitor new value: 5).
	ep2 := EConstantVisitor new value: 3.
	self
		assert: ((EAdditionVisitor new
				  right: ep1;
				  left: ep2) evaluateWith: Dictionary new)
		equals: -2.

	self
		assert: ((EAdditionVisitor new
				  right: ep1;
				  left: ep2) negated evaluateWith: Dictionary new)
		equals: 2.
]

{ #category : #tests }
EAdditionVisitorTest >> testNegated [

	| ep1 ep2 |
	ep1 := EConstantVisitor new value: 5.
	ep2 := EConstantVisitor new value: 3.
	self
		assert: ((EAdditionVisitor new
				  right: ep1;
				  left: ep2) negated evaluateWith: Dictionary new)
		equals: -8
]

{ #category : #tests }
EAdditionVisitorTest >> testPrinting [

	self assert: EAdditionVisitor fivePlusThree printString equals: '( 5 + 3 )'.
	self
		assert: EAdditionVisitor fivePlusThree negated printString
		equals: '- ( 5 + 3 )'
]
