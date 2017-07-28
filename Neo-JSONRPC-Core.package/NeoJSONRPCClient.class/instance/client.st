accessing
client
	^ client ifNil: [ client := self defaultClientClass new ]