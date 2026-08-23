Class {
	#name : 'PatchMethodHttpRudesheim',
	#superclass : 'Object',
	#classTraits : 'TMethodHttpRudesheim',
	#category : 'Rudesheim-HTTP-REST-REST',
	#package : 'Rudesheim-HTTP-REST',
	#tag : 'REST'
}

{ #category : 'sending' }
PatchMethodHttpRudesheim class >> sendRequestBy: aZnClient [

	^ aZnClient patch.
]
