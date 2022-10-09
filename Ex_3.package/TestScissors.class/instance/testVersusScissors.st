tests
testVersusScissors

	| rock paper scissors lizard spock |
	
	rock := Rock new.
	paper := Paper new.
	scissors := Scissors new.
	lizard := Lizard new.
	spock := Spock new.
	
	self assert: (scissors versus: rock) equals: 'Rock'.
	self assert: (scissors versus: paper) equals: 'Scissors'.
	self assert: (scissors versus: scissors) equals: 'Draw'.
	self assert: (scissors versus: lizard) equals: 'Scissors'.
	self assert: (scissors versus: spock) equals: 'Spock'.