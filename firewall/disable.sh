#!/bin/bash

/usr/sbin/iptables -F
/usr/sbin/iptables -X
/usr/sbin/iptables -Z

/usr/sbin/iptables -P FORWARD ACCEPT
/usr/sbin/iptables -P INPUT ACCEPT
/usr/sbin/iptables -P OUTPUT ACCEPT


exit 0
