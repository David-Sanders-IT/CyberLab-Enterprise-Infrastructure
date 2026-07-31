# Architecture – Enterprise DNS Administration

## Architecture Overview

This project uses Microsoft DNS integrated with Active Directory Domain Services to support name resolution, domain controller discovery, authentication, service location, and client communication inside the `corp.cyberlab.local` domain.

The DNS service runs on the domain controller:

- **Server:** SFG-DC01
- **Domain:** corp.cyberlab.local
- **IPv4 Address:** 192.168.121.10
- **Client:** SFG-CL01
- **DNS Type:** Active Directory-integrated

---

## Logical Architecture

```text
Windows 11 Client
SFG-CL01
    |
    | DNS Queries
    v
Microsoft DNS Server
SFG-DC01
192.168.121.10
    |
    +-------------------------------+
    |                               |
    v                               v
Forward Lookup Zone         Reverse Lookup Zone
corp.cyberlab.local         121.168.192.in-addr.arpa
    |                               |
    | Hostname -> IP                | IP -> Hostname
    v                               v
A, AAAA, SRV, NS, SOA       PTR Records
    |
    v
Active Directory Domain Services
    |
    +-- LDAP
    +-- Kerberos
    +-- Global Catalog
    +-- Group Policy
    +-- Domain Controller Discovery
```

---

## Core DNS Components

### Forward Lookup Zone

The `corp.cyberlab.local` forward lookup zone maps hostnames to IP addresses.

Examples:

```text
sfg-dc01.corp.cyberlab.local -> 192.168.121.10
sfg-cl01.corp.cyberlab.local -> 192.168.121.20
```

The forward zone contains:

- A records
- AAAA records
- SRV records
- NS records
- SOA records
- Active Directory service folders

---

### Reverse Lookup Zone

The `121.168.192.in-addr.arpa` reverse lookup zone maps IP addresses back to hostnames.

Example:

```text
192.168.121.10 -> sfg-dc01.corp.cyberlab.local
```

Reverse DNS supports:

- Network troubleshooting
- Security investigations
- Log analysis
- Monitoring
- Device identification

---

## Active Directory DNS Integration

DNS is integrated with Active Directory, which allows zone data to be stored and replicated through the directory instead of traditional text-based zone files.

This provides:

- Multi-master replication
- Secure dynamic updates
- Fault tolerance
- Centralized administration
- Automatic domain controller registration

---

## Active Directory Service Discovery

Windows clients do not need to know the domain controller's IP address directly. They locate services by querying DNS SRV records.

### LDAP

```text
_ldap._tcp.corp.cyberlab.local
```

Used for:

- Directory searches
- Domain controller discovery
- User and computer lookups
- Group Policy processing

### Kerberos

```text
_kerberos._tcp.corp.cyberlab.local
```

Used to locate the Key Distribution Center for domain authentication.

### Global Catalog

```text
_gc._tcp.corp.cyberlab.local
```

Used for forest-wide directory searches and universal group membership lookups.

### Password Change Service

```text
_kpasswd._tcp.corp.cyberlab.local
```

Used when domain users change or reset passwords.

---

## DNS Zone Structure

```text
Forward Lookup Zones
|
+-- _msdcs.corp.cyberlab.local
|
+-- corp.cyberlab.local
    |
    +-- _msdcs
    +-- _sites
    +-- _tcp
    +-- _udp
    +-- DomainDnsZones
    +-- ForestDnsZones
    +-- SOA Record
    +-- NS Record
    +-- A Records

Reverse Lookup Zones
|
+-- 121.168.192.in-addr.arpa
    |
    +-- SOA Record
    +-- NS Record
    +-- PTR Records
```

---

## Dynamic DNS Registration

Domain-joined Windows systems dynamically register their DNS records.

The following command was used to trigger registration:

```cmd
ipconfig /registerdns
```

This allowed the domain controller to create and update its PTR record inside the reverse lookup zone.

Secure dynamic updates were enabled so only authenticated domain members could update DNS records.

---

## DNS Query Flow

When a user signs in to the Windows 11 client:

1. The client queries DNS for Active Directory SRV records.
2. DNS identifies the available domain controller.
3. The client contacts the domain controller.
4. Kerberos authenticates the user.
5. LDAP provides directory information.
6. Group Policy is processed.
7. Enterprise resources become available.

---

## Security Design

The DNS architecture uses:

- Active Directory-integrated zones
- Secure dynamic updates
- Domain-authenticated record registration
- Centralized DNS administration
- Role-based administrative access

These controls reduce unauthorized DNS changes and support trusted domain operations.

---

## Validation Architecture

The environment was validated using:

```cmd
nslookup
ipconfig /registerdns
ipconfig /flushdns
ipconfig /displaydns
dcdiag /test:dns
ping
```

```powershell
Resolve-DnsName
```

Validation confirmed:

- Forward lookup functionality
- Reverse lookup functionality
- Dynamic DNS registration
- PTR record creation
- Active Directory DNS health
- Client name resolution
- Domain controller connectivity

---

## Final Architecture Outcome

The completed design provides a working enterprise DNS foundation for the `corp.cyberlab.local` Active Directory environment.

The architecture supports:

- Reliable hostname resolution
- Reverse DNS
- Domain controller discovery
- Kerberos authentication
- LDAP communication
- Group Policy processing
- Secure dynamic registration
- Enterprise troubleshooting