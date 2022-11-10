Class {
	#name : #MyShape,
	#superclass : #Object,
	#instVars : [
		'color',
		'isFilled'
	],
	#category : #'Ex_2'
}

{ #category : #'accessing - arguments' }
MyShape class >> color: aString isFilled: aBool [

	|shape|
	shape := self new.
	shape color: aString.
	shape isFilled: aBool.
	
	^ shape
]

{ #category : #accessing }
MyShape >> area [
	^ 'Not implemented'
]

{ #category : #accessing }
MyShape >> color [
	^ color
]

{ #category : #accessing }
MyShape >> color: aString [
	
	color := aString.
]

{ #category : #initialization }
MyShape >> initialize [

	super initialize.
	color := 'Blank'.
	isFilled := false.
]

{ #category : #accessing }
MyShape >> isFilled [
	^ isFilled 
]

{ #category : #accessing }
MyShape >> isFilled: aBool [
	
	isFilled := aBool.
]

{ #category : #accessing }
MyShape >> perimeter [
	^ 'Not implemented'
]

{ #category : #accessing }
MyShape >> printOn: aStream [

	aStream nextPutAll: color asString.
	aStream nextPutAll: ' -'.
	isFilled ifFalse: [ aStream nextPutAll: ' not' ].
	aStream nextPutAll: ' filled'.
]
