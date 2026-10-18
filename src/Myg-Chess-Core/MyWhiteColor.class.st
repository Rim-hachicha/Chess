Class {
	#name : 'MyWhiteColor',
	#superclass : 'MyPieceColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyWhiteColor >> direction [ 
	^ #up
]

{ #category : 'accessing' }
MyWhiteColor >> isWhite [ 
	^ true
]

{ #category : 'accessing' }
MyWhiteColor >> opponentColor [ 
	^ MyPieceColor black 
]

{ #category : 'accessing' }
MyWhiteColor >> pawnStartPosition [ 
	^ $2
]

{ #category : 'rendering' }
MyWhiteColor >> renderBishop: aSquare [ 
	^ aSquare ifWhiteSquare: 'B' ifBlackSquare: 'b'
]

{ #category : 'rendering' }
MyWhiteColor >> renderKing: aSquare [ 
	^ aSquare ifWhiteSquare: 'K' ifBlackSquare: 'k'
]

{ #category : 'rendering' }
MyWhiteColor >> renderKnight: aSquare [ 
	^ aSquare ifWhiteSquare: 'N' ifBlackSquare: 'n'
]

{ #category : 'rendering' }
MyWhiteColor >> renderPawn: aSquare [ 
	^ aSquare ifWhiteSquare: 'P' ifBlackSquare: 'p'
]

{ #category : 'rendering' }
MyWhiteColor >> renderQueen: aSquare [ 
	^ aSquare ifWhiteSquare: 'Q' ifBlackSquare: 'q'
]

{ #category : 'rendering' }
MyWhiteColor >> renderRook: aSquare [ 
	^ aSquare ifWhiteSquare: 'R' ifBlackSquare: 'r'
]
