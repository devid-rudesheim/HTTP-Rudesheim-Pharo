Trait {
	#name : 'TServiceHttpRudesheim',
	#category : 'Rudesheim-HTTP-REST-REST',
	#package : 'Rudesheim-HTTP-REST',
	#tag : 'REST'
}

{ #category : 'accessing' }
TServiceHttpRudesheim >> baseUrl [
	^ self subclassResponsibility.
]

{ #category : 'test' }
TServiceHttpRudesheim >> checkResponse: aSTON [
	^ self subclassResponsibility.
]

{ #category : 'accessing' }
TServiceHttpRudesheim >> templateAsHttpClient [
	^ self subclassResponsibility.
]
