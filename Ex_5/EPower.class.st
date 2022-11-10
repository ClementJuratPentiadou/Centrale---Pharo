Class {
	#name : #EPower,
	#superclass : #EBinaryExpression,
	#category : #'Ex_5'
}

{ #category : #'as yet unclassified' }
EPower class >> number: nb power: pwr [

	^ self new
		  left: nb;
		  right: pwr;
		  yourself
]

{ #category : #evaluating }
EPower >> evaluateWith: anObject [

	| nb pwr |
	nb := self number evaluateWith: anObject.
	pwr := self power evaluateWith: anObject.

	^ nb**pwr
]

{ #category : #accessing }
EPower >> number [

	^ left
]

{ #category : #accessing }
EPower >> number: anInteger [

	left := anInteger
]

{ #category : #printing }
EPower >> operatorString [

	^ ' ^ '
]

{ #category : #accessing }
EPower >> power [

	^ right
]

{ #category : #accessing }
EPower >> power: anInteger [
	right := anInteger
]
