private-errors
raiseJsonRpcErrorResponse: jsonObject
	^ (NeoJSONRPCResponseError new
		messageText: (jsonObject at: 'message');
		tag: (jsonObject at: 'code');
		yourself) signal