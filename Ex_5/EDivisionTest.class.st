Class {
	#name : #EDivisionTest,
	#superclass : #TestCase,
	#category : #'Ex_5'
}

{ #category : #tests }
EDivisionTest >> testDivisionByZeroThrowsException [

	| expression |
	expression := EDivision
		              numerator: (EConstant value: 6)
		              denominator: (EConstant value: 0).
	self
		should: [ expression evaluateWith: Dictionary new ]
		raise: EZeroDenominator
]

{ #category : #tests }
EDivisionTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant new value: 6.
	ep2 := EConstant new value: 3.
	self
		assert: ((EDivision new
				  numerator: ep1;
				  denominator: ep2) evaluateWith: Dictionary new)
		equals: 2
]

{ #category : #tests }
EDivisionTest >> testEvaluateNegated [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: ((EDivision new
				  numerator: ep1;
				  denominator: ep2) negated evaluateWith: Dictionary new)
		equals: -5 / 3
]

{ #category : #tests }
EDivisionTest >> testEvaluateWithClassCreationMessage [

	| expression result |
	expression := EDivision
		              numerator: (EConstant value: 6)
		              denominator: (EConstant value: 3).
	result := expression evaluateWith: Dictionary new.
	self assert: result equals: 2
]

{ #category : #tests }
EDivisionTest >> testPrinting [

	| expression |
	expression := EDivision
		              numerator: (EConstant value: 5)
		              denominator: (EConstant value: 3).

	self
		assert: expression negated printString
		equals: '- ( 5 / 3 )'
]
