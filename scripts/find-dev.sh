#!/bin/bash

pi {
	ip_entry=$(nmap -sL 192.168.0.* | grep -i pi)
	open_brkt="("
	close_brkt=")"
	open_index=$($ip_entry%%*$open_brkt)
	close_index=$(ip_entry#*$close_brkt)
	ip=$(cut ip_entry -c $open_index-$close_index)
	echo ip

}
