I'm a NeoJSONRPCClient.

I'm able to communicate with JSON-RPC 2.0 servers using an HTTP transport client like Zinc, writing and reading requests and responses using NeoJSONWriter and NeoJSONRPCResponseReader.

I keep an internal counter of requests so each request gets its own ID that can be mapped to each result.

To call any RPC method you can do:
client call: 'methodName'.
client call: 'methodWithArguments' args: #(1 2)

If the server support named arguments you can pass a dictionary as arguments:
client call: 'methodWithNamedArguments' args: {#a-> 1. #b->2} asDictionary

If you know beforehand the type of schema the call returns you can pass the schema class as argument, and it will return an instance of that object  instead of the default mapClass.

client call: 'getPerson' args: 'personId123' as: Person

