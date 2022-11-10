Class {
	#name : #MyRectangle,
	#superclass : #MyShape,
	#instVars : [
		'width',
		'length'
	],
	#category : #'Ex_2'
}

{ #category : #accessing }
MyRectangle class >> color: aString isFilled: aBool width: aNumber1 length: aNumber2 [

	|rect|
	rect := self new.
	rect color: aString.
	rect isFilled: aBool.
	rect width: aNumber1.
	rect length: aNumber2.
	
	^ rect
]

{ #category : #accessing }
MyRectangle class >> width: aNumber1 length: aNumber2 [

	|rect|
	rect := self new.
	rect width: aNumber1.
	rect length: aNumber2.
	
	^ rect
]

{ #category : #accessing }
MyRectangle >> area [
	^ length * width
]

{ #category : #initialization }
MyRectangle >> initialize [

	super initialize.
	width := 0.
	length := 0.
]

{ #category : #accessing }
MyRectangle >> length [
	^length 
]

{ #category : #accessing }
MyRectangle >> length: aNumber [
	
	length := (aNumber abs)
]

{ #category : #accessing }
MyRectangle >> perimeter [
	^ 2 * (length + width)
]

{ #category : #printing }
MyRectangle >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' - width = '.
	aStream nextPutAll: width asString.
	aStream nextPutAll: ' - length = '.
	aStream nextPutAll: length asString.
]

{ #category : #accessing }
MyRectangle >> width [
	^width 
]

{ #category : #accessing }
MyRectangle >> width: aNumber [
	
	width := (aNumber abs)
]
