instance creation
host: hostname port: port username: username password: password 
	| url |
	url := ZnUrl new 
					host: hostname;
					port: port;
					username: username;
					password: password;
					yourself.
	^self url: url