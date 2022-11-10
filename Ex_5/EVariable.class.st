Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #'Ex_5'
}

{ #category : #evaluating }
EVariable >> evaluateWith: aBindingDictionary [
^ aBindingDictionary at: id
]

{ #category : #accessing }
EVariable >> id: aSymbol [
id := aSymbol
]

{ #category : #evaluating }
EVariable >> printOn: aStream [

	aStream nextPutAll: id asString
]
