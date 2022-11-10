Class {
	#name : #EPrinterVisitor,
	#superclass : #Object,
	#category : #'Ex_6'
}

{ #category : #visiting }
EPrinterVisitor >> visitAddition: anAddition [

	^ self visitBinary: anAddition
]

{ #category : #visiting }
EPrinterVisitor >> visitBinary: aBinaryVisitor [

	| left symbol right |
	left := aBinaryVisitor left accept: self.
	symbol := aBinaryVisitor operatorString.
	right := aBinaryVisitor right accept: self.

	^ '( ' , left , symbol , right , ' )'
]

{ #category : #visiting }
EPrinterVisitor >> visitConstant: aConstant [
^ aConstant value asString
]

{ #category : #visiting }
EPrinterVisitor >> visitDivision: aDivision [

	^ self visitBinary: aDivision
]

{ #category : #visiting }
EPrinterVisitor >> visitMultiplication: aMultiplication [

	^ self visitBinary: aMultiplication
]

{ #category : #visiting }
EPrinterVisitor >> visitNegation: aNegation [

	| expression |
	expression := aNegation expression accept: self.

	^ '- ' , expression
]

{ #category : #visiting }
EPrinterVisitor >> visitPower: aPower [

	^ self visitBinary: aPower
]

{ #category : #visiting }
EPrinterVisitor >> visitVariable: anEVariable [

	^ anEVariable id asString
]
