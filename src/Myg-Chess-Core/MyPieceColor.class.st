Class {
	#name : 'MyPieceColor',
	#superclass : 'Object',
	#instVars : [
		'color',
		'square',
		'lastMove'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'api - text weight' }
MyPieceColor class >> black [ 
	^ MyBlackColor new
]

{ #category : 'constants' }
MyPieceColor class >> white [
    ^ MyWhiteColor new
]

{ #category : 'api - text weight' }
MyPieceColor >> = aPieceColor [ 
	^ self class = aPieceColor class
]

{ #category : 'api - text weight' }
MyPieceColor >> black [ 
	^ MyBlackColor new
]

{ #category : 'api - text weight' }
MyPieceColor >> direction [ 
	^ self subclassResponsibility 
]

{ #category : 'api - text weight' }
MyPieceColor >> opponentColor [ 
	^ self subclassResponsibility 
]

{ #category : 'api - text weight' }
MyPieceColor >> pawnStartPosition [  
	^ self subclassResponsibility 
]

{ #category : 'api - text weight' }
MyPieceColor >> white [ 
	^ MyWhiteColor new 
	
]
