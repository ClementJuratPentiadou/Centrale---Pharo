Class {
	#name : #TestPaper,
	#superclass : #TestCase,
	#category : #'Ex_3'
}

{ #category : #tests }
TestPaper >> testVersusPaper [

	| rock paper scissors lizard spock |
	
	rock := Rock new.
	paper := Paper new.
	scissors := Scissors new.
	lizard := Lizard new.
	spock := Spock new.
	
	self assert: (paper versus: rock) equals: 'Paper'.
	self assert: (paper versus: paper) equals: 'Draw'.
	self assert: (paper versus: scissors) equals: 'Scissors'.
	self assert: (paper versus: lizard) equals: 'Lizard'.
	self assert: (paper versus: spock) equals: 'Paper'.
]
