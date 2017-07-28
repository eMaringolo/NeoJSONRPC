parsing
parseError
	| mapping |
	response := true.
	self consumeWhitespace.
	mapping := self mappingFor: NeoJSONRPCResponseError.
	^ mapping readFrom: self