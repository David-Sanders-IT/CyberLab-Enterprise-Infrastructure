# Project 11 – Enterprise DNS Administration

## Overview

This project demonstrates the deployment, configuration, validation, and troubleshooting of Microsoft DNS within an Active Directory domain environment.

The implementation includes Active Directory-integrated DNS, Forward Lookup Zones, Reverse Lookup Zones, secure dynamic updates, DNS record management, PowerShell administration, and enterprise DNS validation.

The objective of this project was to understand how DNS supports Active Directory authentication, domain services, and enterprise infrastructure while documenting real-world administrative tasks.

---

# Objectives

- Deploy and manage Active Directory-integrated DNS
- Review Forward Lookup Zones
- Configure Reverse Lookup Zones
- Register DNS records dynamically
- Validate forward and reverse name resolution
- Troubleshoot DNS using Windows tools
- Verify DNS health using Microsoft's diagnostic utilities

---

# Environment

| Component | Technology |
|-----------|------------|
| Domain Controller | Windows Server 2022 |
| Client | Windows 11 Enterprise |
| Directory Service | Active Directory Domain Services |
| DNS Platform | Microsoft DNS |
| Domain | corp.cyberlab.local |
| DNS Integration | Active Directory Integrated |
| Reverse Zone | 121.168.192.in-addr.arpa |

---

# Technologies Used

- Windows Server 2022
- Active Directory
- Microsoft DNS
- Windows 11 Enterprise
- PowerShell
- Command Prompt

---

# Administrative Tasks Performed

- Opened and verified DNS Manager
- Reviewed Active Directory-integrated DNS zones
- Examined Forward Lookup Zones
- Reviewed Microsoft DNS infrastructure records
- Examined SRV records for LDAP and Kerberos
- Created an Active Directory-integrated Reverse Lookup Zone
- Configured Secure Dynamic DNS Updates
- Registered PTR records dynamically
- Validated Forward DNS Resolution
- Validated Reverse DNS Resolution
- Performed PowerShell DNS queries
- Executed Microsoft DNS health diagnostics
- Verified client name resolution

---

# Validation Performed

### Graphical Administration

- DNS Manager
- Forward Lookup Zones
- Reverse Lookup Zones
- DNS Records
- PTR Records

### Command Line

```cmd
nslookup
ipconfig /registerdns
ipconfig /flushdns
ipconfig /displaydns
```

### PowerShell

```powershell
Resolve-DnsName
```

### Microsoft Diagnostics

```cmd
dcdiag /test:dns
```

---

# Skills Demonstrated

- Enterprise DNS Administration
- Active Directory Integrated DNS
- DNS Troubleshooting
- Forward Lookup Zones
- Reverse Lookup Zones
- Secure Dynamic Updates
- DNS Record Management
- PowerShell Administration
- Windows Server Administration
- Active Directory Infrastructure
- Enterprise Networking

---

# Project Outcome

The DNS infrastructure was successfully deployed, configured, validated, and tested within an enterprise Active Directory environment.

Forward and reverse DNS resolution were verified, secure dynamic updates were configured, PTR records were registered automatically, and Microsoft diagnostic tools confirmed the DNS environment was healthy.

The completed implementation provides reliable name resolution supporting Active Directory authentication, Kerberos, LDAP, Group Policy processing, and enterprise service discovery.

---

# Project Structure

```
Project 11 – Enterprise DNS Administration
│
├── README.md
├── Architecture.md
├── Deployment_Notes.md
├── Future_Improvements.md
├── Lessons_Learned.md
├── Project_Timeline.md
├── Skills_Demonstrated.md
├── Troubleshooting_Log.md
└── Screenshots/
```