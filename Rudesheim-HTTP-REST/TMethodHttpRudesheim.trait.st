Trait {
	#name : 'TMethodHttpRudesheim',
	#category : 'Rudesheim-HTTP-REST-REST',
	#package : 'Rudesheim-HTTP-REST',
	#tag : 'REST'
}

{ #category : 'converting' }
TMethodHttpRudesheim >> convertClient:		aZnClient
withProperties:	aSTON [

	^ aZnClient
		entity:
		(
			ZnStringEntity
				json:
				(
					STON
						toJsonString:	aSTON
				)
		);
		yourself
]

{ #category : 'converting' }
TMethodHttpRudesheim >> convertUrl:			aZnUrl
withProperties:	aSTON [
	
	^ aZnUrl
]

{ #category : 'sending' }
TMethodHttpRudesheim >> sendRequestBy: aZnClient [

	^ self subclassResponsibility.
]
