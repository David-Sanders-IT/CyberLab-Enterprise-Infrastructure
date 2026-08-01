# Architecture

## Overview

Microsoft DHCP provides automatic IP address management for devices within the corp.cyberlab.local Active Directory environment.

The DHCP server runs on SFG-DC01 and provides IP configuration to Windows clients.

---

## Architecture

```text
Windows 11 Client
        │
        ▼
Microsoft DHCP Server
SFG-DC01
192.168.121.10
        │
        ▼
DHCP Scope
192.168.121.10 – 192.168.121.200
        │
        ▼
Address Pool
Reservations
Scope Options
Lease Management
        │
        ▼
Windows Client Configuration
```

---

## DHCP Scope

Scope Name

Corporate LAN

Address Range

192.168.121.10

↓

192.168.121.200

Exclusion Range

192.168.121.10

↓

192.168.121.99

Available Client Range

192.168.121.100

↓

192.168.121.200

---

## Scope Options

Option 003

Router

192.168.121.2

Option 006

DNS Server

192.168.121.10

Option 015

DNS Domain

corp.cyberlab.local

---

## Reservations

FileServer01

Reserved Address

192.168.121.150

---

## Validation

Validated using:

- DHCP Manager
- ipconfig
- Lease Renewal
- DHCP Statistics
- DHCP Operational Logs