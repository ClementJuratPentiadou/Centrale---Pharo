Class {
	#name : #ENegationVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
ENegationVisitorTest >> testEvaluate [

	self
		assert:
			((ENegationVisitor new expression: (EConstantVisitor new value: 5)) 
				 evaluateWith: Dictionary new)
		equals: -5
]

{ #category : #tests }
ENegationVisitorTest >> testEvaluateWithClassCreationMessage [

	self
		assert: ((ENegationVisitor expression: (EConstantVisitor value: 5)) evaluateWith:
				 Dictionary new)
		equals: -5
]

{ #category : #tests }
ENegationVisitorTest >> testNegatedStructureIsCorrect [

	| exp |
	exp := EConstantVisitor constant5.
	self assert: exp negated class equals: ENegationVisitor.
	self assert: exp negated negated asString equals: exp asString
]

{ #category : #tests }
ENegationVisitorTest >> testNegationNegated [

	self
		assert:
		((EConstantVisitor new value: 6) negated negated evaluateWith:
			 Dictionary new)
		equals: 6
]
