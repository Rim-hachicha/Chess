Class {
	#name : 'MyEmptyPieceTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyEmptyPieceTests >> testEmptySquareDoesNotContainNil [
    | square |

    square := MyChessSquare new.

    self assert: square contents isNotNil.
]

{ #category : 'tests' }
MyEmptyPieceTests >> testEmptySquareHasNoPiece [
    | square |
    square := MyChessSquare new.
    self deny: square hasPiece
]

{ #category : 'tests' }
MyEmptyPieceTests >> testMyEmptyPieceCanBeCreated [
    | emptyPiece |

    emptyPiece := MyEmptyPiece new.

    self assert: emptyPiece notNil.
]

{ #category : 'tests' }
MyEmptyPieceTests >> testMyEmptyPieceIsEmpty [
    | emptyPiece |

    emptyPiece := MyEmptyPiece new.

    self assert: emptyPiece isEmpty.
]

{ #category : 'tests' }
MyEmptyPieceTests >> testMyPieceIsNotEmpty [
    | piece |
    piece := MyBishop white.
    self deny: piece isEmpty
]

{ #category : 'tests' }
MyEmptyPieceTests >> testSquareIsEmptyAfterMove [
    | board pawn |
    board := MyChessBoard empty.
    pawn := MyPawn white.

    board at: 'e2' put: pawn.
    pawn moveTo: (board at: 'e3').

    self assert: (board at: 'e2') contents isEmpty.
    self assert: (board at: 'e3') contents equals: pawn
]
