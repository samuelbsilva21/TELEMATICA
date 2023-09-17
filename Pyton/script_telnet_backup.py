import getpass
import telnetlib

HOST = "localhost"
user = input("Enter your remote account: ")
password = getpass.getpass()

f = open("myswitches.txt")

for IP in f:
    IP = IP.strip()
    print("Coletando Backup do Switch: " + (IP))
    HOST = IP
    tn = telnetlib.Telnet(HOST)
    tn.read_until(b"Username: ")
    tn.write(user.encode('ascii') + b"\n")
    if password:
        tn.read_until(b"Password: ")
        tn.write(password.encode('ascii') + b"\n")

    # Comandos de backup dos equipamentos
    
    tn.write(b"terminal length 0\n")
    tn.write(b"show run\n")
    tn.write(b'exit\n')

    readoutput = tn.read_all()
    print(readoutput.decode('ascii'))
    
    saveoutput =  open("Switch - " + HOST, "w")
    saveoutput.write(readoutput.decode('ascii'))
    saveoutput.write("\n")
    saveoutput.close

saveoutput =  open("Switch - " + HOST, "w")
saveoutput.write(readoutput.decode('ascii'))
saveoutput.close
