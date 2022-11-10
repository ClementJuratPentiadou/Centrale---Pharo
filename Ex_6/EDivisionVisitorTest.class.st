Class {
	#name : #EDivisionVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
EDivisionVisitorTest >> testDivisionByZeroThrowsException [

	| expression |
	expression := EDivisionVisitor
		              numerator: (EConstantVisitor value: 6)
		              denominator: (EConstantVisitor value: 0).
	self
		should: [ expression evaluateWith: Dictionary new ]
		raise: EZeroDenominatorVisitor
]

{ #category : #tests }
EDivisionVisitorTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstantVisitor new value: 6.
	ep2 := EConstantVisitor new value: 3.
	self
		assert: ((EDivisionVisitor new
				  numerator: ep1;
				  denominator: ep2) evaluateWith: Dictionary new)
		equals: 2
]

{ #category : #tests }
EDivisionVisitorTest >> testEvaluateNegated [

	| ep1 ep2 |
	ep1 := EConstantVisitor new value: 5.
	ep2 := EConstantVisitor new value: 3.
	self
		assert: ((EDivisionVisitor new
				  numerator: ep1;
				  denominator: ep2) negated evaluateWith: Dictionary new)
		equals: -5 / 3
]

{ #category : #tests }
EDivisionVisitorTest >> testEvaluateWithClassCreationMessage [

	| expression result |
	expression := EDivisionVisitor
		              numerator: (EConstantVisitor value: 6)
		              denominator: (EConstantVisitor value: 3).
	result := expression evaluateWith: Dictionary new.
	self assert: result equals: 2
]

{ #category : #tests }
EDivisionVisitorTest >> testPrinting [

	| expression |
	expression := EDivisionVisitor
		              numerator: (EConstantVisitor value: 5)
		              denominator: (EConstantVisitor value: 3).

	self assert: expression negated printString equals: '- ( 5 / 3 )'
]
