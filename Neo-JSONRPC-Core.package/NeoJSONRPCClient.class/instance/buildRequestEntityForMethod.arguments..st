private
buildRequestEntityForMethod: methodName arguments: args
	| requestDict |
	requestDict := {('jsonrpc' -> self version).
	('method' -> methodName).
	('id' -> self generateId)} asDictionary.
	args isEmptyOrNil
		ifFalse: [ requestDict at: 'params' put: args ].
	^ (ZnEntity stringEntityClass type: ZnMimeType applicationJson)
		string: (NeoJSONWriter toString: requestDict);
		encoder: (ZnCharacterEncoder newForEncoding: 'UTF-8');
		yourself