Class {
	#name : #Scissors,
	#superclass : #Object,
	#category : #'Ex_3'
}

{ #category : #'as yet unclassified' }
Scissors >> versus: aHand [

	^ aHand versusScissors
]

{ #category : #'as yet unclassified' }
Scissors >> versusLizard [
	^ 'Scissors'
]

{ #category : #'as yet unclassified' }
Scissors >> versusPaper [
	^ 'Scissors'
]

{ #category : #'as yet unclassified' }
Scissors >> versusRock [
	^ 'Rock'
]

{ #category : #'as yet unclassified' }
Scissors >> versusScissors [
	^ 'Draw'
]

{ #category : #'as yet unclassified' }
Scissors >> versusSpock [
	^ 'Spock'
]
