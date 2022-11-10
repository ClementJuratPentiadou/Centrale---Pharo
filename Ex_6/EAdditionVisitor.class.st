Class {
	#name : #EAdditionVisitor,
	#superclass : #EBinaryExpressionVisitor,
	#category : #'Ex_6'
}

{ #category : #'as yet unclassified' }
EAdditionVisitor class >> fivePlusThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstantVisitor new value: 5.
	ep2 := EConstantVisitor new value: 3.
	^ self new
		  left: ep1;
		  right: ep2
]

{ #category : #visiting }
EAdditionVisitor >> accept: aVisitor [

	^ aVisitor visitAddition: self
]

{ #category : #printing }
EAdditionVisitor >> operatorString [

	^ ' + '
]
