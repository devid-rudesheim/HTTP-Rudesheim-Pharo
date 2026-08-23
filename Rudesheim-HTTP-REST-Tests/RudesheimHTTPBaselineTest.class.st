Class {
	#name : 'RudesheimHTTPBaselineTest',
	#superclass : 'TestCase',
	#tag : 'REST',
	#category : 'Rudesheim-HTTP-REST-Tests',
	#package : 'Rudesheim-HTTP-REST-Tests'
}

{ #category : 'tests' }
RudesheimHTTPBaselineTest >> testHttpEntryPoint [

	self assert: Rudesheim Http equals: HttpRudesheim
]

{ #category : 'tests' }
RudesheimHTTPBaselineTest >> testServiceEntryPoints [

	self
		assert: Rudesheim Http Service Discord
		equals: DiscordServiceHttpRudesheim.
	self
		assert: Rudesheim Http Service Notion
		equals: NotionServiceHttpRudesheim
]
