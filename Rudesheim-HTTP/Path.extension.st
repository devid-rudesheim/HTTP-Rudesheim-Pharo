Extension { #name : 'Path' }

{ #category : '*Rudesheim-HTTP-REST' }
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

{ #category : '*Rudesheim-HTTP-REST' }
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

{ #category : '*Rudesheim-HTTP-REST' }
Path >> readSTON: aSTON [
	^ self segments
		inject:	aSTON
		into:
		[ :value :each |
			value
				at:	each.
		].
]

{ #category : '*Rudesheim-HTTP-REST' }
Path >> write: anObject
toSTON: aSTON [
	(
		self parent
			readSTON:	aSTON
	)
		at:	self basename
		put:	anObject.
]
