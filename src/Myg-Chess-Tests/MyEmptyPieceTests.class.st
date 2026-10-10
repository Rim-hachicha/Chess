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
