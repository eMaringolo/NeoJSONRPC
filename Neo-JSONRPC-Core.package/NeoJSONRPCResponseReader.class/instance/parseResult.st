parsing
parseResult

	response := true.
	^resultSchema isNil
		ifTrue: [ self parseValue ]
		ifFalse: [ 
				| mapping |
				self consumeWhitespace.
				mapping := self mappingFor: resultSchema.
				mapping readFrom: self ]