import getpass
import telnetlib

HOST = "localhost"
user = input("Enter your remote account: ")
#user = admin
password = getpass.getpass()

f = open("listadeswitch.txt")

for IP in f:
    IP = IP.strip()
    print("Configurando o Switch: " + (IP))
    HOST = IP
    tn = telnetlib.Telnet(HOST)
    tn.read_until(b"Username: ")
    tn.write(user.encode('ascii') + b"\n")
    if password:
        tn.read_until(b"Password: ")
        tn.write(password.encode('ascii') + b"\n")

    # Start VLAN Configuration
    
    #tn.write(b"_cmdline-mode on\n")
    #tn.write(b"y\n")
    #tn.write(b"512900") #codigo para 3com2928 e HP1910
    tn.write(b"system view\n")
    tn.write(b"ntp-service unicast-server 10.1.0.7\n")
    tn.write(b"ntp-service unicast-server 10.1.0.1\n")
    tn.write(b"clock timezone Brasilia minus -03:00:00\n")
    tn.write(b"save\n")
    tn.write(b"end\n")
    tn.write(b"exit\n")

    print(tn.read_all().decode('ascii'))
