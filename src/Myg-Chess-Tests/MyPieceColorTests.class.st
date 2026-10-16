Class {
	#name : 'MyPieceColorTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPieceColorTests >> testOpponentOfBlackIsWhite [ 

	self assert: MyPieceColor black opponentColor equals: MyPieceColor white
]

{ #category : 'tests' }
MyPieceColorTests >> testOpponentOfWhiteIsBlack [ 

    self assert: MyPieceColor white opponentColor equals: MyPieceColor black
]

{ #category : 'tests' }
MyPieceColorTests >> testTwoWhiteColorsAreEqual [ 

    self assert: MyPieceColor white equals: MyPieceColor white
]
