parsing
parseMapKeysAndValuesDo: block
	self
		parseMapKeysDo: [ :key | 
			block
				value: key
				value:
					((key = 'result' or: [key = 'error']) & self hasResponse not
						ifTrue: [ key = 'result'
								ifTrue: [ self parseResult ]
								ifFalse: [ self parseError ] ]
						ifFalse: [ self parseValue ]) ]