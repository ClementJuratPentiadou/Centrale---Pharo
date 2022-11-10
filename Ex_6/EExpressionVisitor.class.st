Class {
	#name : #EExpressionVisitor,
	#superclass : #Object,
	#category : #'Ex_6'
}

{ #category : #visiting }
EExpressionVisitor >> accept: aVisitor [

	self subclassResponsibility
]

{ #category : #evaluating }
EExpressionVisitor >> evaluateWith: anEnvironment [

	| visitor |
	visitor := EEvaluatorVisitor new.
	visitor bindings: anEnvironment.
	^ self accept: visitor
]

{ #category : #arithmetic }
EExpressionVisitor >> negated [

	^ ENegationVisitor new expression: self
]

{ #category : #printing }
EExpressionVisitor >> printOn: aStream [

	aStream nextPutAll: (self accept: EPrinterVisitor new)
]
