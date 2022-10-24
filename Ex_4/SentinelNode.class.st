Class {
	#name : #SentinelNode,
	#superclass : #BlankNode,
	#category : #'Ex_4'
}

{ #category : #initialization }
SentinelNode >> initialize [

	super initialize.
]

{ #category : #testing }
SentinelNode >> isSentinel [
	^ true
]
