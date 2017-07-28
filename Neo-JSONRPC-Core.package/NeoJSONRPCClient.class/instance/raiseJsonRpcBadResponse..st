private-errors
raiseJsonRpcBadResponse: jsonObject
	^(LtJsonRpcClientError new errorJson: jsonObject) signal