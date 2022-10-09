tests
testVersusLizard

	| rock paper scissors lizard spock |
	
	rock := Rock new.
	paper := Paper new.
	scissors := Scissors new.
	lizard := Lizard new.
	spock := Spock new.
	
	self assert: (lizard versus: rock) equals: 'Rock'.
	self assert: (lizard versus: paper) equals: 'Lizard'.
	self assert: (lizard versus: scissors) equals: 'Scissors'.
	self assert: (lizard versus: lizard) equals: 'Draw'.
	self assert: (lizard versus: spock) equals: 'Lizard'.