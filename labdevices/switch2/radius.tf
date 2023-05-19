resource "iosxe_rest" "radius_hodor" {
	# Configure existing radius IP using PUT
	method = "PUT"
	path = "/data/Cisco-IOS-XE-native:native/radius/server=rad1"
	payload = jsonencode(
		{
			"Cisco-IOS-XE-aaa:server": {
				"id": "rad1",
				"address": {
					"ipv4": "10.10.168.77",
					"auth-port": 1812,
					"acct-port": 1813
				},
				"automate-tester": {
					 "username": "dummy"
				},
				"key": {
					"key": "secret"
				}
			}
		}
	)
}
