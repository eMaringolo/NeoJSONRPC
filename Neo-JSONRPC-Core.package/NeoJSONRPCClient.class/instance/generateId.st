accessing
generateId
	(counter >= SmallInteger maxVal) ifTrue: [counter := 0].
	^counter := counter + 1