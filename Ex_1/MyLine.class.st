Class {
	#name : #MyLine,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #'Ex_1'
}

{ #category : #'instance creation' }
MyLine class >> begin: firstPoint end: secondPoint [

	^ self new
		begin: firstPoint;
		end: secondPoint;
		yourself.
]

{ #category : #accessing }
MyLine >> begin [
	^begin
]

{ #category : #accessing }
MyLine >> begin: aMyPoint [

	begin := aMyPoint.
]

{ #category : #accessing }
MyLine >> end [
	^end
]

{ #category : #accessing }
MyLine >> end: aMyPoint [

	end := aMyPoint.
]

{ #category : #accessing }
MyLine >> gradient [
	
	( end x - begin x ) ~= 0
		ifTrue: [ ^( end y - begin y ) / ( end x - begin x ) ]
		ifFalse: [ ^0 ].
]

{ #category : #initialization }
MyLine >> initialize [

	super initialize.
	begin := MyPoint new.
	end := MyPoint new.
]

{ #category : #accessing }
MyLine >> length [

	^ ( ( begin x - end x ) squared + ( begin y - end y ) squared ) sqrt
]

{ #category : #printing }
MyLine >> printOn:  aStream [

	aStream
		nextPutAll: begin asString;
		nextPutAll: ' --> ';
		nextPutAll: end asString.
]
