Class {
	#name : 'ClientHttpRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-HTTP-REST-REST',
	#package : 'Rudesheim-HTTP-REST',
	#tag : 'REST'
}

{ #category : 'requesting' }
ClientHttpRudesheim class >> send: aRequest
toHttpService: aService
by: aHttpMethodRudesheim
as: aStringParser [
	|
		properties
	|

	properties := Dictionary empty.

	1 < aRequest size
		ifTrue:
		[
			properties := aRequest last.
		].

	^ aService
		checkResponse:
		(
			aStringParser
				fromString:
				(
					aHttpMethodRudesheim
						sendRequestBy:
						(
							aHttpMethodRudesheim
								convertClient:
								(
									aService templateAsHttpClient
										url:
											aService baseUrl /
											(
												aHttpMethodRudesheim
													convertUrl:	aRequest first
													withProperties:	properties
											);
										yourself
								)
								withProperties:	properties
						)
				)
		).
]
