Class {
	#name : #EDivision,
	#superclass : #EBinaryExpression,
	#category : #'Ex_5'
}

{ #category : #'as yet unclassified' }
EDivision class >> numerator: upExpression denominator: downExpression [

	^ self new
		  left: upExpression;
		  right: downExpression;
		  yourself
]

{ #category : #accessing }
EDivision >> denominator [

	^ right
]

{ #category : #accessing }
EDivision >> denominator: anInteger [

	right := anInteger
]

{ #category : #evaluating }
EDivision >> evaluateWith: anObject [

	| upValue downValue |
	upValue := self numerator evaluateWith: anObject.
	downValue := self denominator evaluateWith: anObject.

	downValue = 0 ifTrue: [ EZeroDenominator signal ].

	^ upValue / downValue
]

{ #category : #accessing }
EDivision >> numerator [

	^ left
]

{ #category : #accessing }
EDivision >> numerator: anInteger [

	left := anInteger
]

{ #category : #printing }
EDivision >> operatorString [

	^ ' / '
]
