Class {
	#name : 'RudesheimHTTPBaselineTest',
	#superclass : 'TestCase',
	#category : 'Rudesheim-HTTP-REST-Tests-REST',
	#package : 'Rudesheim-HTTP-REST-Tests',
	#tag : 'REST'
}

{ #category : 'tests' }
RudesheimHTTPBaselineTest >> testHttpEntryPoint [
	self
		assert:	Rudesheim Http
		equals:	HttpRudesheim.
]

{ #category : 'tests' }
RudesheimHTTPBaselineTest >> testServiceEntryPoints [
	self
		assert:	Rudesheim Http Service Discord
		equals:	DiscordServiceHttpRudesheim.

	self
		assert:	Rudesheim Http Service Notion
		equals:	NotionServiceHttpRudesheim.
]
