Class {
	#name : 'GetMethodHttpRudesheim',
	#superclass : 'Object',
	#classTraits : 'TMethodHttpRudesheim',
	#category : 'Rudesheim-HTTP-REST-REST',
	#package : 'Rudesheim-HTTP-REST',
	#tag : 'REST'
}

{ #category : 'converting' }
GetMethodHttpRudesheim class >> convertClient:		aZnClient
withProperties:	aSTON [

	^ aZnClient
]

{ #category : 'sending' }
GetMethodHttpRudesheim class >> sendRequestBy: aZnClient [

	^ aZnClient get.
]
