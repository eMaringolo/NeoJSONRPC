accessing
mapClass

	^self hasResponse 
		ifTrue: [mapClass ifNil: [ NeoJSONObject ]]
		ifFalse: [NeoJSONRPCResponse]