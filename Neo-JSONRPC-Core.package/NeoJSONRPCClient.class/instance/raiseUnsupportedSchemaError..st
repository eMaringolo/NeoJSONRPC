private-errors
raiseUnsupportedSchemaError: schema
	^ self error: ('Schema <1p> unsupported' expandMacrosWith: schema)