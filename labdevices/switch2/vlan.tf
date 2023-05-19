resource "iosxe_rest" "vlan_example_patch" {
	# Adding/Updating the available VLAN configuration
	method = "PATCH"
	path = "/data/Cisco-IOS-XE-native:native/vlan"
	payload = jsonencode(
		{
			"Cisco-IOS-XE-native:vlan": {
				"Cisco-IOS-XE-vlan:vlan-list": [
				{
					"id": 2,
					"name": "wlan-lap"
				},
				{
					"id": 667,
					"name": "finance"
				}
				]
			}
		}
	)
}

resource "iosxe_rest" "vlan_fetch" {
	# fetch all vlans
	method = "GET"
	path = "/data/Cisco-IOS-XE-native:native/vlan"
}
