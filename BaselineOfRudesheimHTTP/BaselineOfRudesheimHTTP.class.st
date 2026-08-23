Class {
	#name : 'BaselineOfRudesheimHTTP',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRudesheimHTTP',
	#package : 'BaselineOfRudesheimHTTP'
}

{ #category : 'baselines' }
BaselineOfRudesheimHTTP >> baseline: spec [
	<baseline>

	spec
		for: #common
		do:
		[
			spec
				baseline: 'RudesheimKernel'
				with: [ spec repository: 'github://devid-rudesheim/Kernel-Rudesheim-Pharo:main' ];

				package: 'Rudesheim-HTTP-REST'
				with:
				[
					spec
						requires: #( 'RudesheimKernel' )
				];

				package: 'Rudesheim-REST'
				with:
				[
					spec
						requires: #( 'Rudesheim-HTTP-REST' )
				];

				package: 'Rudesheim-HTTP-REST-Discord'
				with:
				[
					spec
						requires: #( 'Rudesheim-HTTP-REST' )
				];

				package: 'Rudesheim-HTTP-REST-Notion'
				with:
				[
					spec
						requires: #( 'Rudesheim-HTTP-REST' )
				];

				package: 'Rudesheim-HTTP-REST-Tests'
				with:
				[
					spec
						requires: #( 'Rudesheim-HTTP-REST' 'Rudesheim-REST' 'Rudesheim-HTTP-REST-Discord' 'Rudesheim-HTTP-REST-Notion' )
				];

				group:		#core
				with:		#( 'Rudesheim-HTTP-REST' 'Rudesheim-REST' );

				group:		#services
				with:		#( #core 'Rudesheim-HTTP-REST-Discord' 'Rudesheim-HTTP-REST-Notion' );

				group:		#tests
				with:		#( #services 'Rudesheim-HTTP-REST-Tests' );

				group:		#default
				with:		#( #core ).
		]
]
