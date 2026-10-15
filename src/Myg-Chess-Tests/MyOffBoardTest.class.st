Class {
	#name : 'MyOffBoardTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyOffBoardTest >> testAdjacentSquaresDontHaveOffBoardPositions [
    | board pawn |
    board := MyChessBoard empty.
    pawn := MyPawn white.
    board at: 'a2' put: pawn.

    self assert: pawn adjacentSquares size equals: 1.
    self assert: pawn adjacentSquares first equals: (board at: 'b2')
]

{ #category : 'tests' }
MyOffBoardTest >> testLeftOfFirstColumnIsOffBoard [
    | board square |
    board := MyChessBoard empty.
    square := board at: 'a4'.

    self assert: square left class equals: MyOffBoardSquare
]

{ #category : 'tests' }
MyOffBoardTest >> testMyOffBoardSquareCanBeCreated [
    | square |
    square := MyOffBoardSquare new.

    self assert: square notNil
]

{ #category : 'tests' }
MyOffBoardTest >> testRightOfLastColumnIsOffBoard [
    | board square |
    board := MyChessBoard empty.
    square := board at: 'h4'.

    self assert: square right class equals: MyOffBoardSquare
]
