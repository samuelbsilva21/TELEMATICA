import getpass
import telnetlib

HOST = "10.4.101.106"
user = "admin"
password = ""

#user = input("Enter your remote account: ")
#password = getpass.getpass()

tn = telnetlib.Telnet(HOST)
tn.read_until(b"Login authentication")
tn.write(b"\n")
tn.read_until(b"Username: ")
tn.write(user.encode('ascii') + b"\n")
if password:
    tn.read_until(b"Password: ")
    tn.write(password.encode('ascii') + b"\n")

tn.write(b"exit\n")

print(tn.read_all().decode('ascii'))


