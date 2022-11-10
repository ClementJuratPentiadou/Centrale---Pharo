Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #'Ex_5'
}

{ #category : #'instance creation' }
EBinaryExpression class >> left: anEExpression right: anEExpression2 [
^ self new left: anEExpression; right: anEExpression2
]

{ #category : #accessing }
EBinaryExpression >> left [

	^ left
]

{ #category : #accessing }
EBinaryExpression >> left: anExpression [

	left := anExpression
]

{ #category : #printing }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility
]

{ #category : #printing }
EBinaryExpression >> printOn: aStream [
aStream nextPutAll: '( '.
left printOn: aStream.
aStream nextPutAll: self operatorString.
right printOn: aStream.
aStream nextPutAll: ' )'
]

{ #category : #accessing }
EBinaryExpression >> right [

	^ right
]

{ #category : #accessing }
EBinaryExpression >> right: anExpression [

	right := anExpression
]
