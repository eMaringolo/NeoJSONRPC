baselines
baseline01: spec
	<version: '0.1-baseline'>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				project: 'NeoJSON'
				with: [ spec
						className: #ConfigurationOfNeoJSON;
						versionString: #stable;
						repository: 'http://mc.stfx.eu/Neo' ].
			spec
				package: #'Neo-JSONRPC-Core';
				package: #'Neo-JSONRPC-Tests' with: [ spec requires: 'Neo-JSONRPC-Core' ].
			spec
				group: 'core' with: #('Neo-JSONRPC-Core');
				group: 'default' with: #('Neo-JSONRPC-Core' 'Neo-JSONRPC-Tests') ]