actions
call: methodName arguments: args
	| entity httpresult response reader |
	entity := self buildRequestEntityForMethod: methodName arguments: args.
	httpresult := self post: self url data: entity.
	httpresult isSuccess
		ifFalse: [ ^ self raiseHttpError: httpresult ].
	reader := (NeoJSONReader on: httpresult entity contents readStream)
		mapClass: self defaultMapClass.
	response := reader next.
	^ (self responseIsError: response)
		ifTrue: [ self raiseJsonRpcErrorResponse: response ]
		ifFalse: [ (self responseIsOkay: response)
				ifTrue: [ response result ]
				ifFalse: [ self raiseJsonRpcBadResponse: response ] ]