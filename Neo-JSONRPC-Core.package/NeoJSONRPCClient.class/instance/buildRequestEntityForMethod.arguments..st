actions
buildRequestEntityForMethod: methodName arguments: args
	| requestDict jsonString |
	requestDict := {('jsonrpc' -> self version).
	('method' -> methodName).
	('id' -> self generateId)} asDictionary.
	args isEmptyOrNil
		ifFalse: [ requestDict at: 'params' put: args ].
	jsonString := NeoJSONWriter toString: requestDict.
	^ ZnEntity json: jsonString