Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	| forward |
    forward := self isWhite
        ifTrue: [ square up ]
        ifFalse: [ square down ].

    ^ {
        forward.
        ((self isWhite and: [ square file = $2 ])
            or: [ self isWhite not and: [ square file = $7 ] ])
            ifTrue: [
                self isWhite
                    ifTrue: [ forward up ]
                    ifFalse: [ forward down ] ]
            ifFalse: [ nil ] }
			
		select: [ :s |
		  s notNil and: [
			  s hasPiece not ] ]
]
