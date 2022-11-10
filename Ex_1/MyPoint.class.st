Class {
	#name : #MyPoint,
	#superclass : #Object,
	#instVars : [
		'x',
		'y'
	],
	#category : #'Ex_1'
}

{ #category : #'instance creation' }
MyPoint class >> x: firstCoordinate y: secondCoordinate [

	^ self new
		x: firstCoordinate;
		y: secondCoordinate;
		yourself.
]

{ #category : #initialization }
MyPoint >> initialize [

	super initialize.
	x := 0.
	y := 0.
]

{ #category : #printing }
MyPoint >> printOn: aStream [

	aStream
		nextPut: $(;
		nextPutAll: x asString;
		nextPut: $,;
		nextPutAll: y asString;
		nextPut: $).
]

{ #category : #accessing }
MyPoint >> x [

	^x
]

{ #category : #accessing }
MyPoint >> x: aNumber [

	x := aNumber.

			
]

{ #category : #accessing }
MyPoint >> y [
	^y
]

{ #category : #accessing }
MyPoint >> y: aNumber [

	y := aNumber.
	^ aNumber
]
