private-errors
raiseJsonRpcError: errorJson
	^(LtJsonRpcClientError new errorJson: errorJson) signal