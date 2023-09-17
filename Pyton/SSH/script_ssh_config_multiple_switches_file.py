from netmiko import ConnectHandler

iosv_l2_s1 = {
    'device_type': 'hp_comware',
    'ip': '10.5.101.103',
    'username': 'admin',
    'password': ''
}
#
#iosv_l2_s2 = {
#    'device_type': 'hp_comware',
#    'ip': '198.18.0.98',
#    'username': 'cisco',
#    'password': 'cisco'
#}
#
#iosv_l2_s3 = {
#    'device_type': 'hp_comware',
#    'ip': '198.18.0.97',
#    'username': 'cisco',
#    'password': 'cisco'
#}
#
with open('iosv_l2_cisco_design.txt') as f:
    lines = f.read().splitlines()
print (lines)

all_devices = [iosv_l2_s1] # iosv_l2_s2, iosv_l2_s3]

for devices in all_devices:
    net_connect = ConnectHandler(**devices)
    output = net_connect.send_config_set(lines)
    print (output)
