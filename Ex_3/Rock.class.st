Class {
	#name : #Rock,
	#superclass : #Object,
	#category : #'Ex_3'
}

{ #category : #'as yet unclassified' }
Rock >> versus: aHand [

	^ aHand versusRock
]

{ #category : #'as yet unclassified' }
Rock >> versusLizard [
	^ 'Rock'
]

{ #category : #'as yet unclassified' }
Rock >> versusPaper [
	^ 'Paper'
]

{ #category : #'as yet unclassified' }
Rock >> versusRock [
	^ 'Draw'
]

{ #category : #'as yet unclassified' }
Rock >> versusScissors [
	^ 'Rock'
]

{ #category : #'as yet unclassified' }
Rock >> versusSpock [
	^ 'Spock'
]
