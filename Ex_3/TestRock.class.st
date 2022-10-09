Class {
	#name : #TestRock,
	#superclass : #TestCase,
	#category : #'Ex_3'
}

{ #category : #tests }
TestRock >> testVersusRock [

	| rock paper scissors lizard spock |
	
	rock := Rock new.
	paper := Paper new.
	scissors := Scissors new.
	lizard := Lizard new.
	spock := Spock new.
	
	self assert: (rock versus: rock) equals: 'Draw'.
	self assert: (rock versus: paper) equals: 'Paper'.
	self assert: (rock versus: scissors) equals: 'Rock'.
	self assert: (rock versus: lizard) equals: 'Rock'.
	self assert: (rock versus: spock) equals: 'Spock'.
]
