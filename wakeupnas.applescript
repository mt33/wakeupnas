set question to display dialog "But it's sleeping! Are you sure you want to wake up the NAS?" buttons {"Yes", "No"} default button 1 with icon caution
set answer to button returned of question

if answer is equal to "Yes" then
	do shell script "python -c \"
import socket
data = '\\xff'*6+'\\x00\\x13\\xd4\\xdc\\xf2\\x80'*16
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
s.sendto(data, ('192.168.1.255', 80))\""	
end if
