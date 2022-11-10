Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #'Ex_5'
}

{ #category : #evaluating }
EExpression >> evaluateWith: anObject [
^ self subclassResponsibility 
]

{ #category : #arithmetic }
EExpression >> negated [

	^ ENegation  new expression: self
]
