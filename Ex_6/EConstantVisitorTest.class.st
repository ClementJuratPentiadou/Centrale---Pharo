Class {
	#name : #EConstantVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
EConstantVisitorTest >> testCreationWithClassCreationMessage [

	self
		assert: ((EConstantVisitor value: 5) evaluateWith: Dictionary new)
		equals: 5
]

{ #category : #tests }
EConstantVisitorTest >> testEvaluate [

	self
		assert: (EConstantVisitor constant5 evaluateWith: Dictionary new)
		equals: 5
]

{ #category : #tests }
EConstantVisitorTest >> testNegated [

	self
		assert:
		((EConstantVisitor new value: 6) negated evaluateWith: Dictionary new)
		equals: -6
]

{ #category : #tests }
EConstantVisitorTest >> testPrinting [

	self
		assert:
		(EConstantVisitor constant3 evaluateWith: Dictionary new)
			printString
		equals: '3'.

	self
		assert:
		(EConstantVisitor constant5 evaluateWith: Dictionary new)
			printString
		equals: '5'
]

{ #category : #tests }
EConstantVisitorTest >> testValue [

	self assert: (EConstantVisitor new value: 5) value equals: 5
]
