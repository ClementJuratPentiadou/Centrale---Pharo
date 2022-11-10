Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#instVars : [
		'bindings'
	],
	#category : #'Ex_6'
}

{ #category : #accessing }
EEvaluatorVisitor >> at: anId put: aValue [
bindings at: anId put: aValue
]

{ #category : #accessing }
EEvaluatorVisitor >> bindings: aDictionary [

	bindings := aDictionary
]

{ #category : #initialization }
EEvaluatorVisitor >> initialize [
super initialize.
bindings := Dictionary new
]

{ #category : #visiting }
EEvaluatorVisitor >> visitAddition: anEAddition [

	| leftValue rightValue |
	leftValue := anEAddition left accept: self.
	rightValue := anEAddition right accept: self.

	^ leftValue + rightValue
]

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [

	^ aConstant value
]

{ #category : #visiting }
EEvaluatorVisitor >> visitDivision: anEDivision [

	| upValue downValue |
	upValue := anEDivision numerator accept: self.
	downValue := anEDivision denominator accept: self.

	downValue = 0 ifTrue: [ EZeroDenominatorVisitor signal ].

	^ upValue / downValue
]

{ #category : #visiting }
EEvaluatorVisitor >> visitMultiplication: anEMultiplication [

	| leftValue rightValue |
	leftValue := anEMultiplication left accept: self.
	rightValue := anEMultiplication right accept: self.

	^ leftValue * rightValue
]

{ #category : #visiting }
EEvaluatorVisitor >> visitNegation: anENegation [

	| expression |
	expression := anENegation expression.

	^ (expression accept: self) negated
]

{ #category : #visiting }
EEvaluatorVisitor >> visitPower: aPower [

	| nb pwr |
	nb := aPower number accept: self.
	pwr := aPower power accept: self.

	^ nb ** pwr
]

{ #category : #visiting }
EEvaluatorVisitor >> visitVariable: anEVariable [

	^ bindings at: (anEVariable id)
]
