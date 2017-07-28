actions
call: methodName arguments: args as: schema
	| entity httpresult response reader |
	entity := self
		buildRequestEntityForMethod: methodName
		arguments: args.
	httpresult := self post: self url data: entity.
	httpresult isSuccess
		ifFalse: [ ^ self raiseHttpError: httpresult ].
	reader := NeoJSONRPCResponseReader
		on: httpresult entity contents readStream.
	response := schema isNil
		ifTrue: [ reader next ]
		ifFalse: [ (reader mappingFor: schema ifAbsent: [  ])
				ifNil: [ (schema isKindOf: self defaultMapClass)
						ifTrue: [ reader mapClass: schema.
							reader next ]
						ifFalse: [ self raiseUnsupportedSchemaError: schema ] ]
				ifNotNil: [ :mapping | reader nextAs: schema ] ].
	response isError
		ifTrue: [ response error signal ].
	response isOkay
		ifFalse: [ self raiseJsonRpcBadResponse: response ].
	^ response result