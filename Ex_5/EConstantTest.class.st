Class {
	#name : #EConstantTest,
	#superclass : #TestCase,
	#category : #'Ex_5'
}

{ #category : #tests }
EConstantTest >> testCreationWithClassCreationMessage [

	self assert: ((EConstant value: 5) evaluateWith: Dictionary new) equals: 5
]

{ #category : #tests }
EConstantTest >> testEvaluate [
self assert: ((EConstant constant5) evaluateWith: Dictionary new)
equals: 5
]

{ #category : #tests }
EConstantTest >> testNegated [

	self assert: ((EConstant new value: 6) negated evaluateWith: Dictionary new) equals: -6
]

{ #category : #tests }
EConstantTest >> testPrinting [

	self
		assert:
		(EConstant constant3 evaluateWith: Dictionary new)
			printString
		equals: '3'.

	self
		assert:
		(EConstant constant5 evaluateWith: Dictionary new)
			printString
		equals: '5'
]

{ #category : #tests }
EConstantTest >> testValue [

	self assert: (EConstant new value: 5) value equals: 5
]
