Class {
	#name : 'DiscordServiceHttpRudesheim',
	#superclass : 'Object',
	#classTraits : 'TServiceHttpRudesheim',
	#category : 'Rudesheim-HTTP-REST-Discord-REST',
	#package : 'Rudesheim-HTTP-REST-Discord',
	#tag : 'REST'
}

{ #category : 'accessing' }
DiscordServiceHttpRudesheim class >> baseUrl [
	^ 'https://discord.com/api/v10' asUrl.
]

{ #category : 'accessing' }
DiscordServiceHttpRudesheim class >> templateAsHttpClient [
	^ ZnClient new
		headerAt:	'Authorization'
		put:	'Bearer <token>';
		headerAt:	'User-Agent'
		put:	'DiscordBot (http://example.com, 100)';
		yourself.
]

{ #category : 'accessing' }
DiscordServiceHttpRudesheim class >> tokenForAccess [
	^ STONJSON
		fromString:
		(
			ZnClient new
				url:
					self baseUrl / 'oauth2/token';
				entity:
				(
					ZnApplicationFormUrlEncodedEntity
						withAll:
						{
							( 'client_id' -> '<client-id>' ).
							( 'client_secret' -> '<client-secret>' ).
							( 'grant_type' -> 'authorization_code' ).
							( 'code' -> '<authorization-code>' ).
							( 'redirect_uri' -> '<redirect-uri>' )
						} asDictionary
				);
				post
		).
]
