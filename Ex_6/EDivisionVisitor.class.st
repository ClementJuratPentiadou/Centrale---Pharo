Class {
	#name : #EDivisionVisitor,
	#superclass : #EBinaryExpressionVisitor,
	#category : #'Ex_6'
}

{ #category : #'as yet unclassified' }
EDivisionVisitor class >> numerator: upExpression denominator: downExpression [

	^ self new
		  left: upExpression;
		  right: downExpression;
		  yourself
]

{ #category : #visiting }
EDivisionVisitor >> accept: aVisitor [

	^ aVisitor visitDivision: self
]

{ #category : #accessing }
EDivisionVisitor >> denominator [

	^ right
]

{ #category : #accessing }
EDivisionVisitor >> denominator: anInteger [

	right := anInteger
]

{ #category : #accessing }
EDivisionVisitor >> numerator [

	^ left
]

{ #category : #accessing }
EDivisionVisitor >> numerator: anInteger [

	left := anInteger
]

{ #category : #printing }
EDivisionVisitor >> operatorString [

	^ ' / '
]
