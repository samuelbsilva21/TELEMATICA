import telnetlib

HOST = "10.4.101.106"
USER = 
PASSWORD = 

tn = telnetlib.Telnet(HOST)

tn.read_until(b"Login authentication")
tn.read_until(b"Username: ")
tn.write(USER.encode('ascii') + b"\n")

tn.read_until(b"Password: ")
tn.write(PASSWORD.encode('ascii') + b"\n")


# Comandos para a switch
tn.write(b"show running-config\n") 
tn.write(b"system view\n")
tn.write(b"ntp-service unicast-server 10.1.0.7\n")
tn.write(b"ntp-service unicast-server 10.1.0.1\n")
tn.write(b"clock timezone Brasilia minus -03:00:00\n")
tn.write(b"save\n")
tn.write(b"end\n")
tn.write(b"exit\n")

output = tn.read_all().decode('ascii')
print(output)

tn.close()
