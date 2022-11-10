Class {
	#name : #EPrinterVisitorTest,
	#superclass : #TestCase,
	#category : #'Ex_6'
}

{ #category : #tests }
EPrinterVisitorTest >> testPrintAddition [

	| expression result |
	expression := EAdditionVisitor
		              left: (EConstantVisitor value: 7)
		              right: (EConstantVisitor value: -2).

	result := expression accept: EPrinterVisitor new.

	self assert: result equals: '( 7 + -2 )'.

	expression := expression negated.
	result := expression accept: EPrinterVisitor new.

	self assert: result equals: '- ( 7 + -2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintConstant [

	| constant result |
	constant := EConstantVisitor value: 5.
	result := constant accept: EPrinterVisitor new.

	self assert: result equals: '5'.

	constant := constant negated.
	result := constant accept: EPrinterVisitor new.

	self assert: result equals: '- 5'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintDivision [

	| expression result |
	expression := EDivisionVisitor
		              numerator: (EConstantVisitor value: 6)
		              denominator: (EConstantVisitor value: 3).
	result := expression accept: EPrinterVisitor new.

	self assert: result equals: '( 6 / 3 )'.

	expression := expression negated.
	result := expression accept: EPrinterVisitor new.

	self assert: result equals: '- ( 6 / 3 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintMultiplication [

	| expression result |
	expression := EMultiplicationVisitor
		              left: (EConstantVisitor value: 7)
		              right: (EConstantVisitor value: -2).
	result := expression accept: EPrinterVisitor new.

	self assert: result equals: '( 7 * -2 )'.

	expression := expression negated.
	result := expression accept: EPrinterVisitor new.

	self assert: result equals: '- ( 7 * -2 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintPower [

	| expression result |
	expression := EPowerVisitor
		              number: EConstantVisitor constant5
		              power: EConstantVisitor constant3.
	result := expression accept: EPrinterVisitor new.

	self assert: result equals: '( 5 ^ 3 )'.
	
	expression := expression negated.
	result := expression accept: EPrinterVisitor new.

	self assert: result equals: '- ( 5 ^ 3 )'
]

{ #category : #tests }
EPrinterVisitorTest >> testPrintVariable [

	| expression result visitor |
	expression := EVariableVisitor id: #answerToTheQuestion.
	visitor := EPrinterVisitor new.
	result := expression accept: visitor.

	self assert: result equals: 'answerToTheQuestion'
]
