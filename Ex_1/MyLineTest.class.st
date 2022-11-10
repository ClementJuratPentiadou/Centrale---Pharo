Class {
	#name : #MyLineTest,
	#superclass : #TestCase,
	#category : #'Ex_1'
}

{ #category : #tests }
MyLineTest >> testLineCreate [

	|begin end line|
	begin := MyPoint x: 4 y: 6.
	end := MyPoint x: 2 y: 1.
	line := MyLine begin: begin end: end.
	
	self assert: line begin x equals: 4.
	self assert: line begin y equals: 6.
	self assert: line end x equals: 2.
	self assert: line end y equals: 1.
]

{ #category : #tests }
MyLineTest >> testLineGradient [

	|begin end line|
	begin := MyPoint x: 4 y: 6.
	end := MyPoint x: 2 y: 1.
	line := MyLine begin: begin end: end.
	
	self assert: line gradient closeTo: 2.5 precision: 0.1.
]

{ #category : #tests }
MyLineTest >> testLineGradientHorizontal [

	|begin end line|
	begin := MyPoint x: 1 y: 6.
	end := MyPoint x: 5 y: 6.
	line := MyLine begin: begin end: end.
	
	self assert: line gradient equals: 0.
]

{ #category : #tests }
MyLineTest >> testLineGradientInvariant [

	|p1 p2 line1 line2|
	p1 := MyPoint x: 4 y: 6.
	p2 := MyPoint x: 2 y: 1.
	line1 := MyLine begin: p1 end: p2.
	line2 := MyLine begin: p2 end: p1.
	
	self assert: line1 gradient equals: line2 gradient.
]

{ #category : #tests }
MyLineTest >> testLineGradientVertical [

	|begin end line|
	begin := MyPoint x: 3 y: 1.
	end := MyPoint x: 3 y: 8.
	line := MyLine begin: begin end: end.
	
	self assert: line gradient equals: 0.
]

{ #category : #tests }
MyLineTest >> testLineInit [

	|line|
	line := MyLine new.
	
	self assert: line begin x equals: 0.
	self assert: line begin y equals: 0.
	self assert: line end x equals: 0.
	self assert: line end y equals: 0.
]

{ #category : #tests }
MyLineTest >> testLineLength [

	|begin end line|
	begin := MyPoint x: 4 y: 6.
	end := MyPoint x: 2 y: 1.
	line := MyLine begin: begin end: end.
	
	self assert: line length closeTo: 5.39 precision: 0.01.
]

{ #category : #tests }
MyLineTest >> testLinePrint [

	|begin end line|
	begin := MyPoint x: 4 y: 6.
	end := MyPoint x: 2 y: 1.
	line := MyLine begin: begin end: end.
	
	self assert: line asString equals: '(4,6) --> (2,1)'.
]
