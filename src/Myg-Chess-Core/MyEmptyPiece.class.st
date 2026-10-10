Class {
	#name : 'MyEmptyPiece',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'testing' }
MyEmptyPiece >> isEmpty [ 
	^ true
]

{ #category : 'rendering' }
MyEmptyPiece >> renderPieceOn: aSquare [

    ^ aSquare color = Color black
        ifTrue: [ 'x' ]
        ifFalse: [ 'z' ]
]
