Class {
	#name : #MyList,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #'Ex_4'
}

{ #category : #enumerating }
MyList >> = anObject [
 (anObject class = self class) ifFalse: 
	[^false].
	 (anObject size = self size) ifFalse: 
	[^false].
	1 to: self size do: [ :i| ((self at: i) = (anObject at: i)) ifFalse: [^false]].
	^true
	
]

{ #category : #adding }
MyList >> add: aValue [

	|node new_node|
	
	new_node := Node new.
	new_node value: aValue.
	
	(self isEmpty)
	ifTrue: [
		begin nextNode: new_node.
		new_node prevNode: begin.
	]
	ifFalse: [
		node := end prevNode.
		node nextNode: new_node.
		new_node prevNode: node.
	].
	
	end prevNode: new_node.
	new_node nextNode: end.
]

{ #category : #adding }
MyList >> at: aNumber [

	|node|
	
	(aNumber > 0 and: aNumber <= (self size)) ifFalse: [^'Index error'].
	
	node := begin.
	
	1 to: aNumber do:
		[ :i | node := node nextNode ].
	
	^ (node value)
]

{ #category : #adding }
MyList >> at: aNumber put: aValue [

	|node next_node new_node|
	
	(aNumber = ((self size)+1))
	ifTrue:
		[ self add: aValue ]
	ifFalse: [
	
		(aNumber > 0 and: aNumber <= (self size)) ifFalse: [^'Index error'].
	
	node := begin.
	
	1 to: (aNumber-1) do:
		[ :i | node := node nextNode ].
	
	next_node := node nextNode.
	
	new_node := Node new.
	new_node value: aValue.
	new_node prevNode: node.
	new_node nextNode: next_node.
	
	node nextNode: new_node.
	next_node prevNode: new_node.
	
	].
	
	
]

{ #category : #enumerating }
MyList >> collect: aBlock [

	|list|
	
	list := self class new.
	self do: [ :each | list add: (aBlock value: each) ].
		^list
]

{ #category : #enumerating }
MyList >> detect: aBlock [

	| list |
	list := self class new.
	self do: [ :each | (aBlock value: each) ifTrue: [ ^ each ] ]
]

{ #category : #enumerating }
MyList >> do: aBlock [

	|node|
	
	node := begin.
	
	[ (node nextNode) isSentinel ] whileFalse:
	[
		node := node nextNode.
		aBlock value: (node value).
	].
]

{ #category : #enumerating }
MyList >> hash [

	| hash |
	hash := self class hash.

	self do: [ :each | hash := hash bitXor: each hash ].
	^ hash
]

{ #category : #initialization }
MyList >> initialize [

	super initialize.
	
	begin := SentinelNode new.
	end := SentinelNode new.
	
	begin nextNode: end.
	end prevNode: begin.
]

{ #category : #enumerating }
MyList >> inject: initialValue into: aBlock [

|nextValue|
nextValue:= initialValue.
self do:[:each| nextValue:= aBlock value:nextValue value: each].
^nextValue.
]

{ #category : #testing }
MyList >> isEmpty [

	^ (self size = 0)
]

{ #category : #enumerating }
MyList >> printOn: aStream [
	aStream nextPut: $[.
		self do: [:each | aStream nextPutAll: each value asString;
			nextPut: $,].
		aStream nextPut: $].
]

{ #category : #enumerating }
MyList >> reject: aBlock [

	| list |
	list := self class new.
	self do: [ :each | (aBlock value: each) ifFalse: [ list add: each ] ].
	^ list
]

{ #category : #adding }
MyList >> removeAt: aNumber [

	|node prev_node next_node|
	
	(aNumber > 0 and: aNumber <= self size) ifFalse: [^ Error new signal: 'Index error'].
	
	node := begin.
	
	1 to: aNumber do:
		[ :i | node := node nextNode ].
	
	prev_node := node prevNode.
	next_node := node nextNode.
	
	prev_node nextNode: next_node.
	next_node prevNode: prev_node.
]

{ #category : #enumerating }
MyList >> select: aBlock [

	| list |
	list := self class new.
	self do: [ :each | (aBlock value: each) ifTrue:[list add: each] ].
	^ list
]

{ #category : #accessing }
MyList >> size [

	|node count|
	
	node := begin.
	count := 0.
	
	[ (node nextNode) isSentinel ] whileFalse:
	[
		node := node nextNode.
		count := count + 1.
	].
	
	^ count
	
]
