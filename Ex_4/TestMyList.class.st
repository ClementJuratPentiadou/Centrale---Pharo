Class {
	#name : #TestMyList,
	#superclass : #TestCase,
	#category : #'Ex_4'
}

{ #category : #tests }
TestMyList >> testAdd [

	|list|
	list := MyList new.
	
	list add: 'hello'.
	list add: 'world'.
	
	self assert: list size equals: 2.
]

{ #category : #tests }
TestMyList >> testAt [

	|list|
	list := MyList new.
	
	list add: 'hello'.
	list add: 'world'.
	
	self assert: (list at: 1) equals: 'hello'.
	self assert: (list at: 2) equals: 'world'.
]

{ #category : #tests }
TestMyList >> testAtPut [

	|list|
	list := MyList new.
	
	list add: 'hello'.
	list add: 'world'.
	
	list at: 2 put: 'the'.
	
	self assert: list size equals: 3.
	self assert: (list at: 1) equals: 'hello'.
	self assert: (list at: 2) equals: 'the'.
	self assert: (list at: 3) equals: 'world'.
]

{ #category : #tests }
TestMyList >> testCollect [

	|expectedList newList list|
	list := MyList new.
	
	list add: 5.
	list add: 4.
	list add: 7.
	
	newList := list collect: [ :each | each*2 ].
	expectedList := MyList new.
	
	expectedList add: 10.
	expectedList add: 8.
	expectedList add: 14.
	self assert: newList equals: expectedList.
	
]

{ #category : #tests }
TestMyList >> testDetect [

	| list expectedValue |
	list := MyList new.
	list add: -1.
	list add: 2.
	list add: 3.
	list add: -4.
	list add: -5.
	list add: 1.

	expectedValue:= 2.

	self assert: (list detect: [ :each | each > 0 ]) equals: expectedValue.
]

{ #category : #tests }
TestMyList >> testDo [

	|list sum|
	list := MyList new.
	
	list add: 5.
	list add: 4.
	list add: 7.
	
	sum := 0.
	
	list do: [ :each | sum := sum + each ].
	
	self assert: sum equals: 16.
	
]

{ #category : #tests }
TestMyList >> testEquals [

	|secondList firstList|
	firstList := MyList new.
	
	firstList add: 5.
	firstList add: 4.
	firstList add: 7.
	
	secondList := MyList new.
	
	secondList add: 5.
	secondList add: 4.
	secondList add: 7.
	self assert: secondList equals: firstList.
	
]

{ #category : #tests }
TestMyList >> testHashEquals [

	| secondList firstList |
	firstList := MyList new.

	firstList add: 5.
	firstList add: 4.
	firstList add: 7.

	secondList := MyList new.

	secondList add: 5.
	secondList add: 4.
	secondList add: 7.
	self assert: secondList hash equals: firstList hash
]

{ #category : #tests }
TestMyList >> testHashNotEqualsDifferentClass [

	| secondObject firstList |
	firstList := MyList new.

	firstList add: 5.
	firstList add: 4.
	firstList add: 7.

	secondObject := 5.
	self deny: secondObject hash equals: firstList hash
]

{ #category : #tests }
TestMyList >> testHashNotEqualsDifferentSize [

	| secondList firstList |
	firstList := MyList new.

	firstList add: 5.
	firstList add: 4.
	firstList add: 7.

	secondList := MyList new.

	secondList add: 5.
	secondList add: 4.
	secondList add: 7.
	secondList add: 8.
	secondList add: 7.
	self deny: firstList hash equals: secondList hash.
	self deny: secondList hash equals: firstList hash
]

{ #category : #tests }
TestMyList >> testInject [

	| list |
	list := MyList new.
	list
		add: 1;
		add: 2;
		add: 3;
		add: 4.

	self
		assert: (list inject: 0 into: [ :sum :each | sum + each ])
		equals: 10
]

{ #category : #tests }
TestMyList >> testIsEmpty [

	|list|
	list := MyList new.

	self assert: list isEmpty.
	
	list add: 'hello'.
	
	self assert: (list isEmpty) equals: false.
]

{ #category : #tests }
TestMyList >> testNotEquals [

	|secondList firstList|
	firstList := MyList new.
	
	firstList add: 5.
	firstList add: 4.
	firstList add: 7.
	
	secondList := MyList new.
	
	secondList add: 6.
	secondList add: 4.
	secondList add: 7.
	self deny: secondList equals: firstList.
	
]

{ #category : #tests }
TestMyList >> testNotEqualsDifferentClass [

	|secondObject firstList|
	firstList := MyList new.
	
	firstList add: 5.
	firstList add: 4.
	firstList add: 7.
	
	secondObject := 5.
	self deny: secondObject equals: firstList.
	
]

{ #category : #tests }
TestMyList >> testNotEqualsDifferentSize [

	|secondList firstList|
	firstList := MyList new.
	
	firstList add: 5.
	firstList add: 4.
	firstList add: 7.
	
	secondList := MyList new.
	
	secondList add: 5.
	secondList add: 4.
	secondList add: 7.
	secondList add: 8.
	secondList add: 7.
	self deny: firstList equals: secondList.
	self deny: secondList equals: firstList.
	
]

{ #category : #tests }
TestMyList >> testNotEqualsHash [

	| secondList firstList |
	firstList := MyList new.

	firstList add: 5.
	firstList add: 4.
	firstList add: 7.

	secondList := MyList new.

	secondList add: 6.
	secondList add: 4.
	secondList add: 7.
	self deny: secondList hash equals: firstList hash
]

{ #category : #tests }
TestMyList >> testPrintOn [

	|list|
	list := MyList new.
	
	list add: 5.
	list add: 4.
	list add: 7.
	
	
	self assert: list asString equals: '[5,4,7,]'.
	
]

{ #category : #tests }
TestMyList >> testReject [

	| list expectedList |
	list := MyList new.

	list add: -1.
	list add: 2.
	list add: 3.
	list add: -4.
	list add: -5.
	list add: 1.

	expectedList := MyList new.
	expectedList add: -1.
	expectedList add: -4.
	expectedList add: -5.

	self assert: (list reject: [ :each | each > 0 ]) equals: expectedList
]

{ #category : #tests }
TestMyList >> testRemoveAt [

	|list|
	list := MyList new.
	
	list add: 'hello'.
	list add: 'the'.
	list add: 'world'.
	
	list removeAt: 2.
	
	self assert: list size equals: 2.
	self assert: (list at: 1) equals: 'hello'.
	self assert: (list at: 2) equals: 'world'.
]

{ #category : #tests }
TestMyList >> testSelect [

	| list expectedList|
	list := MyList new.
	
list add: -1.
list add: 2.
list add: 3.
list add: -4.
list add: -5.
list add: 1.

expectedList := MyList new.
expectedList add:2.
expectedList add:3.
expectedList add:1.

self assert: (list select:[:each | each > 0]) equals: expectedList 

]

{ #category : #tests }
TestMyList >> testSize [

	|list|
	list := MyList new.
	
	self assert: list size equals: 0.
]
