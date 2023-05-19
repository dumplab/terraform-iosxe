import requests
requests.packages.urllib3.disable_warnings()

# Native fetch
HOST = '10.16.200.98'
USER = 'admin'
PASS = 'c1sco'
url = "https://" + HOST + "/restconf/data/Cisco-IOS-XE-native:native/vlan"
headers = {'Content-Type': 'application/yang-data+json', 'Accept': 'application/yang-data+json'}
response = requests.get(url, auth=(USER, PASS), headers=headers, verify=False)

vlans = response.json()
for x in vlans['Cisco-IOS-XE-native:vlan']['Cisco-IOS-XE-vlan:vlan-list']:
    print(x)
