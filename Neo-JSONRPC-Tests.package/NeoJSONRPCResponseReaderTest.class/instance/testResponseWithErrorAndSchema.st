tests
testResponseWithErrorAndSchema

	 | contents response |
	contents := '{"jsonrpc": "2.0", "error": {"code": -32601, "message": "Method not found"}, "id": "1"}'.
	reader := NeoJSONRPCResponseReader on: contents readStream.
	response := reader nextAs: NeoJSONTestObject1.
	self assert: response class equals: NeoJSONRPCResponse.
	self deny: response isOkay.
	self assert: response isError.
	self assert: response result isNil.
	self assert: response error class = NeoJSONRPCResponseError.
	

