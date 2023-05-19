terraform {
	required_providers {
		iosxe = {
			version = "0.1.1"
			source  = "CiscoDevNet/iosxe"
		}
	}
}

provider "iosxe" {
	request_timeout = 30
	insecure = true
	host = "https://10.16.200.98"
	device_username = var.user
	device_password = var.password
}
