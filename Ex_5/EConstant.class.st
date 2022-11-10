Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #'Ex_5'
}

{ #category : #sample }
EConstant class >> constant3 [
<sampleInstance>
^ self new value: 3
]

{ #category : #sample }
EConstant class >> constant5 [

	<sampleInstance>
	^ self new value: 5
]

{ #category : #accessing }
EConstant class >> value: anInteger [
^ self new value: anInteger
]

{ #category : #evaluating }
EConstant >> evaluateWith: anObject [

	^ self value
]

{ #category : #printing }
EConstant >> printOn: aStream [
aStream nextPutAll: value printString
]

{ #category : #accessing }
EConstant >> value [

	^ value
]

{ #category : #accessing }
EConstant >> value: anInteger [

	value := anInteger
]
