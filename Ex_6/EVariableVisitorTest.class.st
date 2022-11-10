Class {
	#name : #EVariableVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
EVariableVisitorTest >> testEvaluateXplusY [

	| ep1 ep2 add |
	ep1 := EVariableVisitor new id: #x.
	ep2 := EVariableVisitor new id: #y.
	add := EAdditionVisitor left: ep1 right: ep2.
	self
		assert: (add evaluateWith: { 
					 (#x -> 10).
					 (#y -> 2) } asDictionary)
		equals: 12.
	self
		assert: (add evaluateWith: { 
					 (#x -> 10).
					 (#y -> 12) } asDictionary)
		equals: 22
]

{ #category : #tests }
EVariableVisitorTest >> testPrinting [

	self
		assert: ((EVariableVisitor new id: #x) evaluateWith:
				 { (#x -> 10) } asDictionary) printString
		equals: '10'
]

{ #category : #tests }
EVariableVisitorTest >> testValueOfx [

	self
		assert:
		((EVariableVisitor new id: #x) evaluateWith: { (#x -> 10) } asDictionary)
		equals: 10
]
