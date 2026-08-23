Extension { #name : 'Path' }

{ #category : '*Rudesheim-REST-REST' }
Path >> ensureSTON [
	|
		root
	|

	root := Dictionary new.

	self segments
		inject:	root
		into:
		[ :value :each |
			|
				element
			|

			element := Dictionary new.

			value
				at:	each
				put:	element.

			element.
		].

	^ root.
]

{ #category : '*Rudesheim-REST-REST' }
Path >> ensureSTONWith: anObject [
	|
		body
	|

	body := self ensureSTON.

	self
		write:	anObject
		toSTON:	body.

	^ body.
]

{ #category : '*Rudesheim-REST-REST' }
Path >> readSTON: aSTON [
	^ self segments
		inject:	aSTON
		into:
		[ :value :each |
			value
				at:	each.
		].
]

{ #category : '*Rudesheim-REST-REST' }
Path >> write: anObject
toSTON: aSTON [
	(
		self parent
			readSTON:	aSTON
	)
		at:	self basename
		put:	anObject.
]
