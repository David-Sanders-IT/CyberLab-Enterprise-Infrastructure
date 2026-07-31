# Deployment Notes

## Deployment Date

July 31, 2026

---

# Project Objective

Deploy, configure, validate, and troubleshoot Microsoft DNS within an enterprise Active Directory environment.

The implementation focuses on Active Directory-integrated DNS, secure dynamic updates, reverse lookup zones, service discovery, and enterprise validation.

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Domain | corp.cyberlab.local |
| Domain Controller | SFG-DC01 |
| Client | SFG-CL01 |
| DNS Platform | Microsoft DNS |
| DNS Type | Active Directory Integrated |

---

# Deployment Tasks

## DNS Manager

- Verified Microsoft DNS role installation.
- Confirmed DNS service was operational.
- Opened DNS Manager.

---

## Forward Lookup Zones

Verified:

- corp.cyberlab.local
- _msdcs.corp.cyberlab.local

Confirmed Active Directory-integrated DNS zones were healthy.

---

## DNS Records

Verified:

- SOA Record
- NS Record
- Host (A) Records
- SRV Records
- DomainDnsZones
- ForestDnsZones

---

## Service Discovery

Reviewed Microsoft service records supporting:

- LDAP
- Kerberos
- Global Catalog
- Password Change Services

Verified automatic registration of Active Directory service records.

---

## Reverse Lookup Zone

Created:

121.168.192.in-addr.arpa

Configuration:

- Active Directory Integrated
- Secure Dynamic Updates
- Domain Replication

---

## Dynamic DNS Registration

Executed:

```cmd
ipconfig /registerdns
```

Successfully registered the domain controller within the Reverse Lookup Zone.

PTR records were automatically generated.

---

## DNS Validation

Validated:

Forward Lookup

```cmd
nslookup sfg-dc01.corp.cyberlab.local
```

Reverse Lookup

```cmd
nslookup 192.168.121.10
```

PowerShell

```powershell
Resolve-DnsName sfg-dc01.corp.cyberlab.local

Resolve-DnsName 192.168.121.10
```

Microsoft Diagnostics

```cmd
dcdiag /test:dns
```

Client Validation

```cmd
ping sfg-dc01.corp.cyberlab.local
```

---

# Deployment Outcome

Successfully deployed and validated an enterprise Microsoft DNS environment supporting Active Directory authentication, secure dynamic updates, service discovery, and enterprise name resolution.

All Microsoft diagnostic tests completed successfully.