Class {
	#name : 'HttpRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-HTTP-REST',
	#package : 'Rudesheim-HTTP',
	#tag : 'REST'
}

{ #category : 'namespace' }
HttpRudesheim class >> Client [
	^ ClientHttpRudesheim.
]

{ #category : 'namespace' }
HttpRudesheim class >> Method [
	^ MethodHttpRudesheim.
]

{ #category : 'namespace' }
HttpRudesheim class >> Service [
	^ ServiceHttpRudesheim.
]
