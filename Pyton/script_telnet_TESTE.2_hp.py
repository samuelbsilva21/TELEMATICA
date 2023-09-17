import getpass
import sys
import telnetlib

HOST = "10.5.103.102"
user = "admin"
password = getpass.getpass()

tn = telnetlib.Telnet(HOST)

tn.read_until(b"username: ")
tn.write(user.encode('ascii') + b"\n")
if password:
    tn.read_until(b"Password: ")
    tn.write(password.encode('ascii') + b"\n")

tn.write(b"ls\n")
tn.write(b"exit\n")

print(tn.read_all().decode('ascii'))
