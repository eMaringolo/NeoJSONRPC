private-errors
raiseJsonRpcBadResponse: jsonObject
	^ (NeoJSONRPCBadResponseError new
		messageText: (jsonObject at: 'message');
		tag: (jsonObject at: 'code');
		yourself) signal