Class {
	#name : 'RudesheimHTTPBaselineTest',
	#superclass : 'BasicRudesheimTest',
	#tag : 'REST',
	#category : 'Rudesheim-HTTP-REST-Tests',
	#package : 'Rudesheim-HTTP-REST-Tests'
}

{ #category : 'accessing' }
RudesheimHTTPBaselineTest class >> targetClass [
	^ Rudesheim.
]

{ #category : 'tests' }
RudesheimHTTPBaselineTest >> testHttpEntryPoint [
	self
		assert:	self basicTarget class Http
		equals:	HttpRudesheim.
]

{ #category : 'tests' }
RudesheimHTTPBaselineTest >> testServiceEntryPoints [
	self
		assert:	self basicTarget class Http Service Discord
		equals:	DiscordServiceHttpRudesheim.

	self
		assert:	self basicTarget class Http Service Notion
		equals:	NotionServiceHttpRudesheim.
]
