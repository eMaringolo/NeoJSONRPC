tests
testResponseWithSchema

	 | contents response |
	contents := '{"jsonrpc": "2.0", "result": {"name":"Example1","created-at":"2012-06-08T14:30:15+01:00", "bytes":[2,4,6,8]}, "id": "1"}'.
	reader := NeoJSONRPCResponseReader on: contents readStream.
	response := reader nextAs: NeoJSONTestObject1 .
	self assert: response class equals: NeoJSONRPCResponse.
	self assert: response isOkay.
	self deny: response isError.
	self assert: response result class equals: NeoJSONTestObject1.

