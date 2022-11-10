Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #'Ex_5'
}

{ #category : #'as yet unclassified' }
EMultiplication class >> fiveTimesThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new
		  left: ep1;
		  right: ep2
]

{ #category : #evaluating }
EMultiplication >> evaluateWith: anObject [
^ (right evaluateWith: anObject) * (left evaluateWith: anObject)
]

{ #category : #printing }
EMultiplication >> operatorString [

	^ ' * '
]
