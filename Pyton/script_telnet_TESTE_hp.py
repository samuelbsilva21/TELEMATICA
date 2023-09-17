#! /usr/bin/python

import sys
import telnetlib

### EDIT ###
username = "admin"
password = ""
tftp = '10.4.103.123'
#############

telnet_timeout = 1

def connect(ipaddress, username, password):
    try:
        tn = telnetlib.Telnet(ipaddress)
        try:
            #print "Authentication..."
            tn.read_until("Login:", telnet_timeout)
            tn.write(username + "\r")
            tn.read_until("Password:", telnet_timeout)
            tn.write(password + "\r")
            tn.read_until("Select menu option:", telnet_timeout)
            #print "OK!"
            return tn
        except Exception, e:
            print "Incorrect user/password"
            print "\nException: %s" % str(e)
            tn.close()
    except Exception, e:
        print "Error connecting to " + ipaddress
        print "\nException: %s" % str(e)


def disconnect(tn):
    try:
        tn.write("logout\r\n")
        tn.close()
    except Exception, e:
        print "Error: connection problem or model not supported"
        print "\nException: %s" % str(e)


#def summary(tn):
#    prompt = "Select menu option:"
#    try:
#        tn.write("system summary\r\n")
#        tn.write("\r\n") #some models need it :S
#        output = tn.read_until(prompt, telnet_timeout)
#    except Exception, e:
#        print "Error connection problem or model not supported"
#        print "\nException: %s" % str(e)

#    data = {}
#    for line in output.splitlines():
#        if ':' in line:
#            key, value = line.partition(':')[::2]
#            key = key.strip()
#            value = value.strip()
#            if value is not '':
#                data[key] = value
#    tn.read_until(prompt, telnet_timeout)
#   return data


#def backup(tn, tftp, filename):
#    print "TFTP: " + tftp
#    print "File: " + filename
#    prompt = "Select menu option"
#    print "Backing up..."
#    try:
#        tn.write("system backupConfig save %s %s\r\n" % (tftp, filename))
#        tn.write("\r\n")
#        output = tn.read_until(prompt, 120)
#    except Exception, e:
#        print "Error: connection problem or model not supported"
#        print "\nException: %s" % str(e)
#
#    if "bytes transferred" in output:
#        return True
#    elif "Save of system configuration Successful" in output:
#        return True
#    else:
#        print "Error #5: can't connect to TFTP server"
#        return False
#
#
#if __name__ == "__main__":
#    if len(sys.argv) > 1:
#        ipaddress = sys.argv[1]
#    else:
#        print "Usage: %s <host>" % sys.argv[0]
#        sys.exit(1)
#    
#    tn = connect(ipaddress, username, password)
#
#    if not tn:
#        sys.exit(1)
#
#    s = summary(tn)    
#    if s['Product Number'] != '3C17205' and s['Product Number'] != '3CR17451-91':
#        print "Warning: Model not tested: %s" % s['Product Number']
#        print "Continuing..."
#        #sys.exit(1)
#    
#    filename = s['System Name'] + '.cfg'
#
#        sys.exit(1)
#    if backup(tn, tftp, filename):
#        print "Backup created succesfully!"
#        disconnect(tn)
#        sys.exit(0)
#    else:
#        print "Error: Backup failed!"
#        disconnect(tn)
