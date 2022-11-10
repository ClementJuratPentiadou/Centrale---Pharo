Class {
	#name : #EEvaluatorVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitAdditionReturnsAdditionResult [

	| expression result |
	expression := EAdditionVisitor
		              left: (EConstantVisitor value: 7)
		              right: (EConstantVisitor value: -2).

	result := expression accept: EEvaluatorVisitor new.

	self assert: result equals: 5
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitConstantReturnsConstantValue [

	| constant result |
	constant := EConstantVisitor value: 5.
	result := constant accept: EEvaluatorVisitor new.

	self assert: result equals: 5
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitDivisionByZeroThrowsException [

	| expression |
	expression := EDivisionVisitor
		              numerator: (EConstantVisitor value: 6)
		              denominator: (EConstantVisitor value: 0).
	self
		should: [ expression accept: EEvaluatorVisitor new ]
		raise: EZeroDenominatorVisitor
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitDivisionReturnsDivisionResult [

	| expression result |
	expression := EDivisionVisitor
		              numerator: (EConstantVisitor value: 6)
		              denominator: (EConstantVisitor value: 3).
	result := expression accept: EEvaluatorVisitor new.
	self assert: result equals: 2
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitMultiplicationReturnsMultiplicationResult [

	| expression result |
	expression := EMultiplicationVisitor
		              left: (EConstantVisitor value: 7)
		              right: (EConstantVisitor value: -2).
	result := expression accept: EEvaluatorVisitor new.
	self assert: result equals: -14
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitNegationReturnsNegatedConstant [

	| expression result |
	expression := (EConstantVisitor value: 7) negated.
	result := expression accept: EEvaluatorVisitor new.

	self assert: result equals: -7
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitVariableReturnsVariableValue [

	| expression result visitor |
	expression := EVariableVisitor id: #answerToTheQuestion.
	visitor := EEvaluatorVisitor new.

	visitor at: #answerToTheQuestion put: 42.
	result := expression accept: visitor.

	self assert: result equals: 42
]
