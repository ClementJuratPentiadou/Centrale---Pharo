Class {
	#name : #MyCircle,
	#superclass : #MyShape,
	#instVars : [
		'radius'
	],
	#category : #'Ex_2'
}

{ #category : #accessing }
MyCircle class >> color: aString isFilled: aBool radius: aNumber [

	|circle|
	circle := self new.
	circle color: aString.
	circle isFilled: aBool.
	circle radius: aNumber.
	
	^ circle
]

{ #category : #accessing }
MyCircle class >> radius: aNumber [

	|circle|
	circle := self new.
	circle radius: aNumber.
	
	^ circle
]

{ #category : #accessing }
MyCircle >> area [
	^ Float pi * (radius squared)
]

{ #category : #initialization }
MyCircle >> initialize [

	super initialize.
	radius := 0.
	
]

{ #category : #accessing }
MyCircle >> perimeter [
	^ 2 * Float pi * radius
]

{ #category : #printing }
MyCircle >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' - radius = '.
	aStream nextPutAll: radius asString.
]

{ #category : #accessing }
MyCircle >> radius [
	^radius
]

{ #category : #accessing }
MyCircle >> radius: aNumber [

	radius := (aNumber abs).
]
