private-errors
raiseJsonRpcBadResponse: jsonObject
	^(NeoJSONRPCResponseError new errorJson: jsonObject) signal