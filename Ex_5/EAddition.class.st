Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #'Ex_5'
}

{ #category : #'as yet unclassified' }
EAddition class >> fivePlusThree [
<sampleInstance>
| ep1 ep2 |
ep1 := EConstant new value: 5.
ep2 := EConstant new value: 3.
^ self new left: ep1 ; right: ep2
]

{ #category : #evaluating }
EAddition >> evaluateWith: anObject [
^ (right evaluateWith: anObject) + (left evaluateWith: anObject)
]

{ #category : #printing }
EAddition >> operatorString [

	^ ' + '
]
