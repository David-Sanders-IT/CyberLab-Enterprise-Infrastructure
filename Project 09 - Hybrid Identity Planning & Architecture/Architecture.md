# Architecture

## Overview

Project 09 documents the planned Hybrid Identity architecture that integrates the existing on-premises Active Directory environment with Microsoft Entra ID using Microsoft Entra Cloud Sync.

The project focuses on enterprise planning, synchronization design, authentication options, and deployment preparation rather than implementing production synchronization.

---

## Existing Environment

### On-Premises

- Windows Server 2022
- Active Directory Domain Services
- Domain Controller: SFG-DC01
- Domain: corp.cyberlab.local
- Enterprise Organizational Units
- Role-Based Access Control
- AGDLP Authorization

### Cloud

- Microsoft Entra ID
- Enterprise Users
- Security Groups
- Administrative Units
- Enterprise Applications
- Authentication Methods

---

## Hybrid Identity Architecture

```text
Windows 11 Enterprise
        │
        ▼
corp.cyberlab.local
        │
        ▼
Active Directory Domain Services
        │
        ▼
Microsoft Entra Cloud Sync
        │
        ▼
Microsoft Entra ID
        │
        ▼
Enterprise Applications
```

---

## Authentication Flow

```text
User
        │
        ▼
Active Directory
        │
        ▼
Microsoft Entra Cloud Sync
        │
        ▼
Microsoft Entra ID
        │
        ▼
Cloud Applications
```

---

## Synchronization Components

- Active Directory Domain Services
- Microsoft Entra Cloud Sync
- Microsoft Entra Connect
- Cloud Provisioning Agent
- Microsoft Entra ID
- Enterprise Applications

---

## Authentication Methods Reviewed

- Password Hash Synchronization
- Pass-through Authentication
- Federation
- Seamless Single Sign-On