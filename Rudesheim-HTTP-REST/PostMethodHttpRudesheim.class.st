Class {
	#name : 'PostMethodHttpRudesheim',
	#superclass : 'Object',
	#classTraits : 'TMethodHttpRudesheim',
	#category : 'Rudesheim-HTTP-REST-REST',
	#package : 'Rudesheim-HTTP-REST',
	#tag : 'REST'
}

{ #category : 'sending' }
PostMethodHttpRudesheim class >> sendRequestBy: aZnClient [

	^ aZnClient post.
]
