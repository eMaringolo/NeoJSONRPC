tests
testResponseWithoutSchema

	 | contents response |
	contents := '{"jsonrpc": "2.0", "result": ["hello", 5], "id": "1"}'.
	reader := NeoJSONRPCResponseReader on: contents readStream.
	response := reader next.
	self assert: response class equals: NeoJSONRPCResponse.
	self assert: response isOkay.
	self deny: response isError.
	self assert: response result class equals: Array.

