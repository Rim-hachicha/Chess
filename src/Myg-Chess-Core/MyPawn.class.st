Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyPawn >> captureSquares [
	| forward |
    forward := self direction.

    ^ {
        forward left.
        forward right
    }
]

{ #category : 'accessing' }
MyPawn >> direction [
   ^ self isWhite
        ifTrue: [ square up ]
        ifFalse: [ square down ]
]

{ #category : 'as yet unclassified' }
MyPawn >> doubleDirection [
    ^ self isWhite
        ifTrue: [ self direction up ]
        ifFalse: [ self direction down ]
]

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

	| forward targets |
    
    forward := self direction.
    targets := OrderedCollection new.

    forward hasPiece ifFalse: [
        targets add: forward ].

    ((self isWhite and: [ square file = $2 ])
        or: [ self isWhite not and: [ square file = $7 ] ])
        ifTrue: [
            self doubleDirection hasPiece ifFalse: [
                targets add: self doubleDirection ] ].

    self captureSquares
        do: [ :s |
            (s notNil and: [ s hasPiece ])
                ifTrue: [ targets add: s ] ].

    ^ targets
]
