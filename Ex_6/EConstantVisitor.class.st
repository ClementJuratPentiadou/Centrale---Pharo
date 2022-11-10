Class {
	#name : #EConstantVisitor,
	#superclass : #EExpressionVisitor,
	#instVars : [
		'value'
	],
	#category : #'Ex_6'
}

{ #category : #sample }
EConstantVisitor class >> constant3 [
<sampleInstance>
^ self new value: 3
]

{ #category : #sample }
EConstantVisitor class >> constant5 [

	<sampleInstance>
	^ self new value: 5
]

{ #category : #accessing }
EConstantVisitor class >> value: anInteger [
^ self new value: anInteger
]

{ #category : #visiting }
EConstantVisitor >> accept: aVisitor [

	^ aVisitor visitConstant: self
]

{ #category : #accessing }
EConstantVisitor >> value [

	^ value
]

{ #category : #accessing }
EConstantVisitor >> value: anInteger [

	value := anInteger
]
