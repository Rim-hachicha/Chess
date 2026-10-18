Class {
	#name : 'MyBlackColor',
	#superclass : 'MyPieceColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyBlackColor >> direction [ 
	^ #down
]

{ #category : 'accessing' }
MyBlackColor >> isWhite [ 
	^ false
]

{ #category : 'accessing' }
MyBlackColor >> opponentColor [ 
	^ MyPieceColor white
]

{ #category : 'accessing' }
MyBlackColor >> pawnStartPosition [ 
	^ $7
]

{ #category : 'rendering' }
MyBlackColor >> renderBishop: aSquare [ 
	^ aSquare ifWhiteSquare: 'V' ifBlackSquare: 'v'
]

{ #category : 'rendering' }
MyBlackColor >> renderKing: aSquare [ 
	^ aSquare ifWhiteSquare: 'L' ifBlackSquare: 'l'
]

{ #category : 'rendering' }
MyBlackColor >> renderKnight: aSquare [ 
	^ aSquare ifWhiteSquare: 'M' ifBlackSquare: 'm'
]

{ #category : 'rendering' }
MyBlackColor >> renderPawn: aSquare [ 
	^ aSquare ifWhiteSquare: 'O' ifBlackSquare: 'o'
]

{ #category : 'rendering' }
MyBlackColor >> renderQueen: aSquare [ 
	^ aSquare ifWhiteSquare: 'W' ifBlackSquare: 'w'
]

{ #category : 'rendering' }
MyBlackColor >> renderRook: aSquare [ 
	^ aSquare ifWhiteSquare: 'T' ifBlackSquare: 't'
]
