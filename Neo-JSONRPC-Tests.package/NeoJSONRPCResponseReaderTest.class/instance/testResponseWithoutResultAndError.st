tests
testResponseWithoutResultAndError

	 | contents response |
	contents := '{"jsonrpc": "2.0", "id": "1"}'.
	reader := NeoJSONRPCResponseReader on: contents readStream.
	response := reader nextAs: NeoJSONTestObject1 .
	self assert: response class equals: NeoJSONRPCResponse.
	self deny: response isOkay.
	self deny: response isError.
	self assert: response result isNil

