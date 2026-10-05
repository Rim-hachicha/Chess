Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyPawn >> adjacentPawns [
	^ self adjacentSquares
		select: [ :each | each hasPiece ]
		thenCollect: [ :each | each contents ]
]

{ #category : 'as yet unclassified' }
MyPawn >> adjacentSquares [
	^ { square left. square right }
	select: [ :each | each notNil ]
]

{ #category : 'testing' }
MyPawn >> canBeCapturedEnPassant [
	^ self madeDoubleMove
]

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

{ #category : 'as yet unclassified' }
MyPawn >> doubleMoveFile [
	^ self isWhite
		ifTrue: [ $4 ]
		ifFalse: [ $5 ]
]

{ #category : 'as yet unclassified' }
MyPawn >> enPassantPawns [
	^ self opponentPawns
		select: [ :pawn | pawn canBeCapturedEnPassant ]
]

{ #category : 'as yet unclassified' }
MyPawn >> enPassantSquareFor: aPawn [
	^ self forwardFrom: aPawn square
]

{ #category : 'as yet unclassified' }
MyPawn >> enPassantSquaresFor [

    ^ self enPassantPawns
        collect: [ :aPawn | self enPassantSquareFor: aPawn ]
]

{ #category : 'as yet unclassified' }
MyPawn >> forwardFrom: aSquare [
	^ self isWhite
		ifTrue: [ aSquare up ]
		ifFalse: [ aSquare down ]
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'as yet unclassified' }
MyPawn >> madeDoubleMove [
	^ self lastMove notNil
		and: [ (self lastMove first file = self startingFile)
			and: [ self lastMove second file = self doubleMoveFile ] ]
]

{ #category : 'as yet unclassified' }
MyPawn >> opponentPawns [
	^ self adjacentPawns
		select: [ :each | each isWhite ~= self isWhite ]
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'as yet unclassified' }
MyPawn >> startingFile [
	^ self isWhite
		ifTrue: [ $2 ]
		ifFalse: [ $7 ]
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
	targets addAll: self enPassantSquaresFor.

    ^ targets
]
