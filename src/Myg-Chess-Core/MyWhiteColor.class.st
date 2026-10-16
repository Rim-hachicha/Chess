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
MyWhiteColor >> oppenentColor [ 
	^ MyPieceColor black 
]

{ #category : 'accessing' }
MyWhiteColor >> pawnStartPosition [ 
	^ $2
]
