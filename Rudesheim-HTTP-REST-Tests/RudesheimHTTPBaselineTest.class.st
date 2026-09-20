Class {
	#name : 'RudesheimHTTPBaselineTest',
	#superclass : 'BasicRudesheimTest',
	#tag : 'REST',
	#category : 'Rudesheim-HTTP-REST-Tests',
	#package : 'Rudesheim-HTTP-REST-Tests'
}

{ #category : 'accessing' }
RudesheimHTTPBaselineTest class >> targetClass [
	^ Rudesheim Http.
]

{ #category : 'tests' }
RudesheimHTTPBaselineTest >> testHttpEntryPoint [
	self
		assert:	self targetClass
		equals:	HttpRudesheim.
]

{ #category : 'tests' }
RudesheimHTTPBaselineTest >> testServiceEntryPoints [
	self
		assert:	self targetClass Service Discord
		equals:	DiscordServiceHttpRudesheim.

	self
		assert:	self targetClass Service Notion
		equals:	NotionServiceHttpRudesheim.
]
