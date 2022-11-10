Class {
	#name : #EPowerTest,
	#superclass : #TestCase,
	#category : #'Ex_5'
}

{ #category : #tests }
EPowerTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: ((EPower new
				  number: ep1;
				  power: ep2) evaluateWith: Dictionary new)
		equals: 125
]

{ #category : #tests }
EPowerTest >> testEvaluateNegated [

	| ep1 ep2 |
	ep1 := EConstant new value: 2.
	ep2 := EConstant new value: 7.
	self
		assert: ((EPower new
				  number: ep1;
				  power: ep2) negated evaluateWith: Dictionary new)
		equals: -128
]

{ #category : #tests }
EPowerTest >> testPrinting [

	| expression |
	expression := EPower
		              number: (EConstant value: 5)
		              power: (EConstant value: 3).

	self assert: expression negated printString equals: '- ( 5 ^ 3 )'
]
