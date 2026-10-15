Class {
	#name : 'MyOffBoardSquare',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'api - configuration' }
MyOffBoardSquare >> down [ 
	^ self
]

{ #category : 'testing' }
MyOffBoardSquare >> isOffBoard [
    ^ true
]

{ #category : 'accessing' }
MyOffBoardSquare >> left [ 
	^ self
]

{ #category : 'accessing' }
MyOffBoardSquare >> right [ 
	^ self
]

{ #category : 'instance creation' }
MyOffBoardSquare >> up [ 
	^ self 
]
