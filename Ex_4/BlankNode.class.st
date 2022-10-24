Class {
	#name : #BlankNode,
	#superclass : #Object,
	#instVars : [
		'nextNode',
		'prevNode'
	],
	#category : #'Ex_4'
}

{ #category : #accessing }
BlankNode >> isSentinel [
]

{ #category : #accessing }
BlankNode >> nextNode [

	^ nextNode
]

{ #category : #accessing }
BlankNode >> nextNode: anObject [

	nextNode := anObject
]

{ #category : #accessing }
BlankNode >> prevNode [

	^ prevNode
]

{ #category : #accessing }
BlankNode >> prevNode: aNode [

	prevNode := aNode
]
