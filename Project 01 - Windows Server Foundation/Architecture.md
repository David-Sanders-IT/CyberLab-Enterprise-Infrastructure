# Architecture

## CyberLab Enterprise Identity Infrastructure

```mermaid
flowchart TD

Internet

↓

Windows Desktop

↓

VMware Workstation

↓

VMnet8 NAT

↓

SFG-DC01

↓

Active Directory

↓

DNS

↓

Future Windows Clients

↓

Enterprise Users
```

## Environment

Forest

corp.cyberlab.local

Server

SFG-DC01

NetBIOS

CORP

Role

Domain Controller

Services

- Active Directory
- DNS