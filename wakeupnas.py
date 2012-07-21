#!/usr/bin/python

import socket;

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM);
s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1);

s.sendto('\xff'*6+'\x00\x13\xd4\xdc\xf2\x80'*16, ('192.168.1.255', 80));
