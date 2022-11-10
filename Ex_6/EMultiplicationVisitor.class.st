Class {
	#name : #EMultiplicationVisitor,
	#superclass : #EBinaryExpressionVisitor,
	#category : #'Ex_6'
}

{ #category : #'as yet unclassified' }
EMultiplicationVisitor class >> fiveTimesThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstantVisitor constant5.
	ep2 := EConstantVisitor constant3.
	^ self new
		  left: ep1;
		  right: ep2
]

{ #category : #visiting }
EMultiplicationVisitor >> accept: aVisitor [

	^ aVisitor visitMultiplication: self
]

{ #category : #printing }
EMultiplicationVisitor >> operatorString [

	^ ' * '
]
