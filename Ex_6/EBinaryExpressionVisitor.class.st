Class {
	#name : #EBinaryExpressionVisitor,
	#superclass : #EExpressionVisitor,
	#instVars : [
		'left',
		'right'
	],
	#category : #'Ex_6'
}

{ #category : #'instance creation' }
EBinaryExpressionVisitor class >> left: anEExpression right: anEExpression2 [
^ self new left: anEExpression; right: anEExpression2
]

{ #category : #accessing }
EBinaryExpressionVisitor >> left [

	^ left
]

{ #category : #accessing }
EBinaryExpressionVisitor >> left: anExpression [

	left := anExpression
]

{ #category : #printing }
EBinaryExpressionVisitor >> operatorString [

	^ self subclassResponsibility
]

{ #category : #accessing }
EBinaryExpressionVisitor >> right [

	^ right
]

{ #category : #accessing }
EBinaryExpressionVisitor >> right: anExpression [

	right := anExpression
]
