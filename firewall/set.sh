#!/bin/bash

/usr/sbin/iptables -F
/usr/sbin/iptables -X
/usr/sbin/iptables -Z

/usr/sbin/iptables -P FORWARD DROP
/usr/sbin/iptables -P INPUT DROP
/usr/sbin/iptables -P OUTPUT ACCEPT

/usr/sbin/iptables -A INPUT -i lo -j ACCEPT
/usr/sbin/iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

/usr/sbin/iptables -A INPUT -p icmp -s 0.0.0.0/0 -d 0.0.0.0/0 -j ACCEPT

/usr/sbin/iptables -A INPUT -p tcp --dport 22 -j ACCEPT


exit 0
