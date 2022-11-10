Class {
	#name : #MySquare,
	#superclass : #MyRectangle,
	#instVars : [
		'side'
	],
	#category : #'Ex_2'
}

{ #category : #accessing }
MySquare class >> color: aString isFilled: aBool side: aNumber [

	|square|
	square := self new.
	square color: aString.
	square isFilled: aBool.
	square side: aNumber.
	
	^ square
]

{ #category : #accessing }
MySquare class >> side: aNumber [

	|square|
	square := self new.
	square side: aNumber.
	
	^ square
]

{ #category : #initialization }
MySquare >> initialize [

	super initialize.
	self side: 0.
]

{ #category : #'accessing - arguments' }
MySquare >> length: aNumber [
	
	self side: aNumber.
]

{ #category : #printing }
MySquare >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' - side = '.
	aStream nextPutAll: side asString.
]

{ #category : #accessing }
MySquare >> side [
	^side
]

{ #category : #'accessing - arguments' }
MySquare >> side: aNumber [
	
	side := (aNumber abs).
	width := side.
	length := side.
]

{ #category : #'accessing - arguments' }
MySquare >> width: aNumber [
	
	self side: aNumber.
]
