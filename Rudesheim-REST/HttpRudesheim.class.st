Class {
	#name : 'HttpRudesheim',
	#superclass : 'Object',
	#category : 'Rudesheim-REST-REST',
	#package : 'Rudesheim-REST',
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
