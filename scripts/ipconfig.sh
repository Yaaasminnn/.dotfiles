#!/bin/bash
public=$(curl ifconfig.me)
private=$(ip route get 1.2.3.4 | awk '{print $7}')
echo "PRIVATE: $private"
echo "-----"
echo "PUBLIC: $public"
