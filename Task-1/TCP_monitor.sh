#! /bin/bash


# PING: Packet Internet Groper


# For instaling required tools to monitor TCP
(apt install net-tools)
# (netstat -tulpen)   
# Here, in tulpen
# t stands for TCP
# u stands for UDP
# l stands for listening sockets
# p stands for programs
# e stands for extensions
# n stands for addresses, users, and ports numerically.  


# But we only need to monitor TCP
(netstat -t)