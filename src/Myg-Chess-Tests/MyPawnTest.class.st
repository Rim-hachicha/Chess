Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testCanOnlyMoveOneSquare [

	| board pawn squares |

	board := MyChessBoard empty.
	pawn := MyPawn white.

	board at: 'e2' put: pawn.

	squares := pawn targetSquares.

    self
        assertCollection: squares
        includesAll:
            (#('e3') collect: [ :name |
                board at: name ]).
]

{ #category : 'tests' }
MyPawnTest >> testPawnCanMoveDiagonally [

	| board pawnW pawnB squares |

	board := MyChessBoard empty.
	pawnW := MyPawn white.
	pawnB := MyPawn black.

	board at: 'e5' put: pawnW.
	board at: 'd6' put: pawnB.

	squares := pawnW targetSquaresLegal: true.

	self assert: (squares includes: (board at: 'd6')).
]

{ #category : 'tests' }
MyPawnTest >> testPawnCanMoveEnPassant [
    | board pawnW pawnB squares |

    board := MyChessBoard empty.

    pawnW := MyPawn white.
    pawnB := MyPawn black.

    board at: 'e5' put: pawnW.
    board at: 'd7' put: pawnB.

    pawnB moveTo: (board at: 'd5').

    squares := pawnW targetSquaresLegal: true.

    self assert: (squares includes: (board at: 'd6')).
]

{ #category : 'tests' }
MyPawnTest >> testPawnCanMoveTwoSquares [
	| pawn squares board |
	board := MyChessBoard empty.
	board at: 'e2' put: (pawn := MyPawn white).
	squares := pawn targetSquares.

	self
 	   assertCollection: squares
  	  includesAll:
   	     (#(e3 e4) collect: [ :name |
            board at: name ])
	
]

{ #category : 'tests' }
MyPawnTest >> testPawnCannotMoveDiagonallyWithoutCapture [

    | board pawn squares |

    board := MyChessBoard empty.
    pawn := MyPawn white.

    board at: 'e5' put: pawn.

    squares := pawn targetSquaresLegal: true.

    self deny: (squares includes: (board at: 'd6')).
    self deny: (squares includes: (board at: 'f6')).
]

{ #category : 'tests' }
MyPawnTest >> testPawnCannotMoveEnPassantAfterOneSquareMove [
    | board pawnW pawnB squares |

    board := MyChessBoard empty.

    pawnW := MyPawn white.
    pawnB := MyPawn black.

    board at: 'e5' put: pawnW.
    board at: 'd6' put: pawnB.

    pawnB moveTo: (board at: 'd5').

    squares := pawnW targetSquaresLegal: true.

    self deny: (squares includes: (board at: 'd6')).
]

{ #category : 'tests' }
MyPawnTest >> testPawnCannotMoveEnPassantWithoutAdjacentPawn [
	| board pawnW squares |

	board := MyChessBoard empty.

	pawnW := MyPawn white.

	board at: 'e5' put: pawnW.

	squares := pawnW targetSquaresLegal: true.

	self deny: (squares includes: (board at: 'd6')).
]

{ #category : 'tests' }
MyPawnTest >> testPawnCannotMoveForwardIfBlocked [

    | board wPawn bPawn squares |

    board := MyChessBoard empty.
    wPawn := MyPawn white.
    bPawn := MyPawn black.

    board at: 'e2' put: wPawn .
    board at: 'e3' put: bPawn .

    squares := wPawn targetSquares.

    self deny: (squares includes: (board at: 'e3')).
]
