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
