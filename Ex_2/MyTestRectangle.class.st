Class {
	#name : #MyTestRectangle,
	#superclass : #TestCase,
	#category : #'Ex_2'
}

{ #category : #tests }
MyTestRectangle >> testArea [

	|rect|
	rect := MyRectangle width: 4 length: 10.

	self assert: rect area equals: 40.
]

{ #category : #tests }
MyTestRectangle >> testCreateFull [

	|rect|
	rect := MyRectangle color: 'Red' isFilled: true width: 4 length: 10.
	
	self assert: rect color equals: 'Red'.
	self assert: rect isFilled equals: true.
	self assert: rect width equals: 4.
	self assert: rect length equals: 10.
]

{ #category : #tests }
MyTestRectangle >> testCreateSimple [

	|rect|
	rect := MyRectangle width: 4 length: 10.
	
	self assert: rect width equals: 4.
	self assert: rect length equals: 10.
]

{ #category : #tests }
MyTestRectangle >> testInit [

	|rect|
	rect := MyRectangle new.
	
	self assert: rect color equals: 'Blank'.
	self assert: rect isFilled equals: false.
	self assert: rect width equals: 0.
	self assert: rect length equals: 0.
]

{ #category : #tests }
MyTestRectangle >> testPerimeter [

	|rect|
	rect := MyRectangle width: 4 length: 10.

	self assert: rect perimeter equals: 28.
]

{ #category : #tests }
MyTestRectangle >> testPrint [

	|rect|
	
	rect := MyRectangle color: 'Red' isFilled: true width: 7 length: 5.
	self assert: rect asString equals: 'Red - filled - width = 7 - length = 5'.
	
	rect := MyRectangle width: 5 length: 7.
	self assert: rect asString equals: 'Blank - not filled - width = 5 - length = 7'.
]
