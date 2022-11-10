Class {
	#name : #ENegationVisitor,
	#superclass : #EExpressionVisitor,
	#instVars : [
		'expression'
	],
	#category : #'Ex_6'
}

{ #category : #'instance creation' }
ENegationVisitor class >> expression: anExpression [

	^ self new expression: anExpression
]

{ #category : #evaluating }
ENegationVisitor >> accept: aVisitor [

	^ aVisitor visitNegation: self
]

{ #category : #accessing }
ENegationVisitor >> expression [
	^ expression
]

{ #category : #accessing }
ENegationVisitor >> expression: anExpression [

	expression := anExpression
]

{ #category : #arithmetic }
ENegationVisitor >> negated [

	^ expression
]
