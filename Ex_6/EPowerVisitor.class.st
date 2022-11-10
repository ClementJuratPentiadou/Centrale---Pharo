Class {
	#name : #EPowerVisitor,
	#superclass : #EBinaryExpressionVisitor,
	#category : #'Ex_6'
}

{ #category : #'as yet unclassified' }
EPowerVisitor class >> number: nb power: pwr [

	^ self new
		  left: nb;
		  right: pwr;
		  yourself
]

{ #category : #visiting }
EPowerVisitor >> accept: aVisitor [

	^ aVisitor visitPower: self
]

{ #category : #accessing }
EPowerVisitor >> number [

	^ left
]

{ #category : #accessing }
EPowerVisitor >> number: anInteger [

	left := anInteger
]

{ #category : #printing }
EPowerVisitor >> operatorString [

	^ ' ^ '
]

{ #category : #accessing }
EPowerVisitor >> power [

	^ right
]

{ #category : #accessing }
EPowerVisitor >> power: anInteger [
	right := anInteger
]
