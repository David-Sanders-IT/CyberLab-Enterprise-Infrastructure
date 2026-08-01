# Project 12 – Enterprise DHCP Administration

## Overview

This project demonstrates the deployment, configuration, validation, and troubleshooting of Microsoft DHCP within an Active Directory environment.

The implementation includes DHCP server deployment, Active Directory authorization, scope creation, lease management, reservations, scope options, client validation, and DHCP monitoring.

The objective of this project was to understand how DHCP automates IP address management and integrates with enterprise Windows infrastructure while documenting the deployment and validation process.

---

# Objectives

- Deploy Microsoft DHCP Server
- Authorize DHCP in Active Directory
- Create an enterprise DHCP scope
- Configure DHCP scope options
- Configure address exclusions
- Configure reservations
- Validate DHCP client configuration
- Troubleshoot DHCP services
- Monitor DHCP activity

---

# Environment

| Component | Technology |
|-----------|------------|
| Domain Controller | Windows Server 2022 |
| Client | Windows 11 Enterprise |
| DHCP Platform | Microsoft DHCP |
| Domain | corp.cyberlab.local |
| Scope | 192.168.121.10 – 192.168.121.200 |

---

# Technologies Used

- Windows Server 2022
- Microsoft DHCP
- Active Directory
- Windows 11 Enterprise
- PowerShell
- Command Prompt

---

# Administrative Tasks Performed

- Installed the DHCP Server role
- Authorized the DHCP server in Active Directory
- Created an IPv4 DHCP scope
- Configured address pool
- Configured exclusion range
- Configured DHCP reservations
- Configured Router (Option 003)
- Configured DNS Server (Option 006)
- Configured DNS Domain Name (Option 015)
- Verified client lease assignment
- Renewed DHCP lease
- Reviewed DHCP statistics
- Reviewed DHCP operational logs

---

# Validation Performed

### Graphical Administration

- DHCP Manager
- Address Pool
- Address Leases
- Reservations
- Scope Options
- DHCP Statistics

### Command Line

```cmd
ipconfig /release
ipconfig /renew
ipconfig /all
```

### Event Validation

- DHCP Operational Event Log
- Lease Assignment
- Lease Renewal

---

# Skills Demonstrated

- Microsoft DHCP Administration
- DHCP Scope Design
- Address Management
- Lease Management
- Reservations
- Scope Options
- Windows Server Administration
- Enterprise Network Services
- DHCP Troubleshooting

---

# Project Outcome

Successfully deployed and configured Microsoft DHCP within an Active Directory environment.

Validated automatic IP address assignment, lease renewal, DHCP reservations, scope configuration, and client communication while documenting the deployment using enterprise administrative practices.

---

# Project Structure

```
Project 12 – Enterprise DHCP Administration
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