Class {
	#name : #MyTestCircle,
	#superclass : #TestCase,
	#category : #'Ex_2'
}

{ #category : #tests }
MyTestCircle >> testArea [

	|circle|
	circle := MyCircle radius: 8.

	self assert: circle area closeTo: 201 precision: 1.
]

{ #category : #tests }
MyTestCircle >> testCreateFull [

	|circle|
	circle := MyCircle color: 'Red' isFilled: true radius: 8.
	
	self assert: circle color equals: 'Red'.
	self assert: circle isFilled equals: true.
	self assert: circle radius equals: 8.
]

{ #category : #tests }
MyTestCircle >> testCreateSimple [

	|circle|
	circle := MyCircle radius: 8.

	self assert: circle radius equals: 8.
]

{ #category : #tests }
MyTestCircle >> testInit [

	|circle|
	circle := MyCircle new.
	
	self assert: circle color equals: 'Blank'.
	self assert: circle isFilled equals: false.
	self assert: circle radius equals: 0.
]

{ #category : #tests }
MyTestCircle >> testPerimeter [

	|circle|
	circle := MyCircle radius: 8.

	self assert: circle perimeter closeTo: 50 precision: 1.
]

{ #category : #tests }
MyTestCircle >> testPrint [

	|circle|
	
	circle := MyCircle color: 'Red' isFilled: true radius: 7.
	self assert: circle asString equals: 'Red - filled - radius = 7'.
	
	circle := MyCircle radius: 9.
	self assert: circle asString equals: 'Blank - not filled - radius = 9'.
]
