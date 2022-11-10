Class {
	#name : #MyTestSquare,
	#superclass : #TestCase,
	#category : #'Ex_2'
}

{ #category : #tests }
MyTestSquare >> testArea [

	|square|
	square := MySquare side: 6.
	
	self assert: square area equals: 36.
]

{ #category : #tests }
MyTestSquare >> testCreateFull [

	|square|
	square := MySquare color: 'Red' isFilled: true side: 4.
	
	self assert: square color equals: 'Red'.
	self assert: square isFilled equals: true.
	self assert: square width equals: 4.
	self assert: square length equals: 4.
	self assert: square side equals: 4.
]

{ #category : #tests }
MyTestSquare >> testCreateSimple [

	|square|
	square := MySquare side: 4.
	
	self assert: square width equals: 4.
	self assert: square length equals: 4.
	self assert: square side equals: 4.
]

{ #category : #tests }
MyTestSquare >> testInit [

	|square|
	square := MySquare new.
	
	self assert: square color equals: 'Blank'.
	self assert: square isFilled equals: false.
	self assert: square width equals: 0.
	self assert: square length equals: 0.
	self assert: square side equals: 0.
]

{ #category : #tests }
MyTestSquare >> testPerimeter [

	|square|
	square := MySquare side: 3.
	
	self assert: square perimeter equals: 12.
]

{ #category : #tests }
MyTestSquare >> testPrint [

	|square|
	
	square := MySquare color: 'Red' isFilled: true side: 7.
	self assert: square asString equals: 'Red - filled - width = 7 - length = 7 - side = 7'.
	
	square := MySquare side: 5.
	self assert: square asString equals: 'Blank - not filled - width = 5 - length = 5 - side = 5'.
]
