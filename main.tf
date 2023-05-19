terraform {
	required_providers {
		iosxe = {
			version = "0.1.1"
			source  = "CiscoDevNet/iosxe"
		}
	}
}

module "switch1" {
	source = "./labdevices/switch1"
}

module "switch2" {
	source = "./labdevices/switch2"
}

module "switch13" {
	source = "./labdevices/switch3"
}
