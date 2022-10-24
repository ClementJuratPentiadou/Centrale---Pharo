Class {
	#name : #Node,
	#superclass : #BlankNode,
	#instVars : [
		'value'
	],
	#category : #'Ex_4'
}

{ #category : #accessing }
Node >> isSentinel [
	^ false
]

{ #category : #accessing }
Node >> value [
	^ value
]

{ #category : #accessing }
Node >> value: aValue [
	
	value := aValue
]
