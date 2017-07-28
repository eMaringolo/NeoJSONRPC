I am NeoJSONRPCResponseReader.

I parse a JSON representation of a JSON RPC 2.0 Response.

I return a NeoJSONRPCReponse if the parsing succeeded, containing as its result a NeoJSONObject as mapClass.

When parsing using #nextAs: a schema can be specified. This schema will be used for the 'result'  property of the NeoJSONRPCResponse.