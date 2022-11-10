Class {
	#name : #EPowerVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
EPowerVisitorTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstantVisitor new value: 5.
	ep2 := EConstantVisitor new value: 3.
	self
		assert: ((EPowerVisitor new
				  number: ep1;
				  power: ep2) evaluateWith: Dictionary new)
		equals: 125
]

{ #category : #tests }
EPowerVisitorTest >> testPrinting [

	| expression |
	expression := EPowerVisitor
		              number: (EConstantVisitor value: 5)
		              power: (EConstantVisitor value: 3).

	self assert: expression negated printString equals: '- ( 5 ^ 3 )'
]
