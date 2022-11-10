Class {
	#name : #EVariableVisitor,
	#superclass : #EExpressionVisitor,
	#instVars : [
		'id'
	],
	#category : #'Ex_6'
}

{ #category : #accessing }
EVariableVisitor class >> id: aSymbol [

	^ self new id: aSymbol
]

{ #category : #visiting }
EVariableVisitor >> accept: aVisitor [

	^ aVisitor visitVariable: self
]

{ #category : #accessing }
EVariableVisitor >> id [
	^ id
]

{ #category : #accessing }
EVariableVisitor >> id: aSymbol [
id := aSymbol
]
