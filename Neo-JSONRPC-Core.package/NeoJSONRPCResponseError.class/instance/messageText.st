testing
messageText
	^ String
		streamContents: [ :s | 
			code notNil
				ifTrue: [ s
						nextPut: $(;
						nextPutAll: code;
						nextPut: $) ].
			code notNil & message notNil
				ifTrue: [ s space ].
			message notNil
				ifTrue: [ s nextPutAll: message ] ]