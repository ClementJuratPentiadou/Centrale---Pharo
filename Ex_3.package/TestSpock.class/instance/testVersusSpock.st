tests
testVersusSpock

	| rock paper scissors lizard spock |
	
	rock := Rock new.
	paper := Paper new.
	scissors := Scissors new.
	lizard := Lizard new.
	spock := Spock new.
	
	self assert: (spock versus: rock) equals: 'Spock'.
	self assert: (spock versus: paper) equals: 'Paper'.
	self assert: (spock versus: scissors) equals: 'Spock'.
	self assert: (spock versus: lizard) equals: 'Lizard'.
	self assert: (spock versus: spock) equals: 'Draw'.