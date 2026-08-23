Class {
	#name : 'NotionServiceHttpRudesheim',
	#superclass : 'Object',
	#classTraits : 'TServiceHttpRudesheim',
	#category : 'Rudesheim-HTTP-REST-Notion-REST',
	#package : 'Rudesheim-HTTP-REST-Notion',
	#tag : 'REST'
}

{ #category : 'namespace' }
NotionServiceHttpRudesheim class >> Exception [

	^ ExceptionNotionServiceHttpRudesheim
]

{ #category : 'accessing' }
NotionServiceHttpRudesheim class >> baseUrl [

	^ 'https://api.notion.com/v1' asUrl.
]

{ #category : 'test' }
NotionServiceHttpRudesheim class >> checkResponse: aSTON [

	aSTON
		at: 		'object'
		ifPresent:
		[ :value |
			'error' = value 
				ifTrue:
				[
					aSTON inspect.
					self Exception Error
						signal:	'failure'.
				]
		].

	^ aSTON.
]

{ #category : 'queries' }
NotionServiceHttpRudesheim class >> ls:		aKeyString [
	|
		http
	|

	http := Rudesheim Http.

	^ http Client
		send:
		{
			'pages' asUrl / aKeyString
		}
		toHttpService:		self
		by: 				http Method Get
		as: 				STONJSON.
]

{ #category : 'queries' }
NotionServiceHttpRudesheim class >> selectFrom:		aKeyString [
	|
		http
	|

	http := Rudesheim Http.

	^ http Client
		send:
		{
			'databases' asUrl / aKeyString / 'query'.
		}
		toHttpService:		self
		by: 				http Method Post
		as: 				STONJSON.
]

{ #category : 'queries' }
NotionServiceHttpRudesheim class >> selectFrom:		aKeyString
where: 			aSTON [
	|
		http
	|

	http := Rudesheim Http.

	^ http Client
		send:
		{
			'databases' asUrl / aKeyString / 'query'.
			aSTON.
		}
		toHttpService:		self
		by: 				http Method Post
		as: 				STONJSON.
]

{ #category : 'accessing' }
NotionServiceHttpRudesheim class >> templateAsHttpClient [

	^ ZnClient new
		
		headerAt:		'Authorization'
		put:			'Bearer <token>';

		headerAt:		'Notion-Version'
		put:			'2022-06-28';
		
		yourself.

]

{ #category : 'queries' }
NotionServiceHttpRudesheim class >> update:		aKeyString
set: 		aSTON [
	|
		http
	|

	http := Rudesheim Http.

	^ http Client
		send:
		{
			'pages' asUrl / aKeyString.
			aSTON
		}
		toHttpService:		self
		by: 				http Method Patch
		as: 				STONJSON.
]
