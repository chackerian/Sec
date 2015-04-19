#!/usr/bin/python
import socket
import subprocess
import sys
from datetime import datetime

subprocess.call('clear', shell=True)

remoteServer	= raw_input("Enter a host to scan: ")
remoteServerIP  = socket.gethostbyname(remoteServer)

print "*" * 60
print "Scanning in progress", remoteServerIP
print "*" * 60

t1 = datetime.now()

try:
	for port in range(1,1025):
		sock = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
		result = sock.connect_ex((remoteServerIP, port))
		if result == 0:
			print "Port {}:\t Open".format(port)
		sock.close()

except KeyboardInterrupt:
	print "\nCtrl-C pressed"
	sys.exit()

except socket.gaierror:
	print "Couldn't resolve hostname"
	sys.exit()

except socket.error:
	print "Couldn't connect to socket"
	sys.exit()

t2 = datetime.now

total = t2 - t1

print "Scanning complete", total