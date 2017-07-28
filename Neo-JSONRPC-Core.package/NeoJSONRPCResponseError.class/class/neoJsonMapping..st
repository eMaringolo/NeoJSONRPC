accessing
neoJsonMapping: mapper
	mapper
		for: self
		do: [ :mapping | 
			mapping mapInstVar: #tag to: 'code'.
			mapping mapInstVar: #messageText to: 'message' ]