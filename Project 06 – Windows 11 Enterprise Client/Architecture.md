# Architecture

## Overview

Project 06 extends the Enterprise Infrastructure environment by introducing a Windows 11 Enterprise workstation into the Active Directory domain.

The workstation functions as a managed enterprise endpoint that authenticates through Active Directory, receives centralized identity services, and securely accesses business resources.

This project completes the transition from server-side infrastructure to enterprise client management.

---

# Enterprise Architecture

```text
                     Enterprise Infrastructure

                   +---------------------------+
                   |      Windows Server       |
                   |        SF-DC01            |
                   +---------------------------+
                             │
                             │
             ┌───────────────┼────────────────┐
             │               │                │
             ▼               ▼                ▼
      Active Directory      DNS          Kerberos
             │               │                │
             └───────────────┼────────────────┘
                             │
                             ▼
                   Windows 11 Enterprise
                        SFG-CL01
                             │
                             ▼
                 Enterprise Business Resources
```

---

# Authentication Architecture

Authentication occurs entirely through Active Directory.

```text
User
   │
   ▼
Windows 11 Client
   │
   ▼
DNS Resolution
   │
   ▼
Domain Controller
   │
   ▼
Kerberos Authentication
   │
   ▼
Domain Access Granted
```

---

# Authorization Architecture

Authorization follows the AGDLP model implemented during Project 05.

```text
User
   │
   ▼
Global Security Group
   │
   ▼
Domain Local Permission Group
   │
   ▼
Share Permissions
   │
   ▼
NTFS Permissions
   │
   ▼
Business Resource
```

---

# Enterprise Workstation Deployment

The workstation deployment followed the standard enterprise provisioning workflow.

```text
Deploy Windows 11
        │
        ▼
Rename Workstation
        │
        ▼
Configure Networking
        │
        ▼
Configure DNS
        │
        ▼
Join Active Directory
        │
        ▼
Restart
        │
        ▼
Authenticate Using Domain Credentials
        │
        ▼
Validate Enterprise Services
```

---

# Networking Architecture

The workstation communicates directly with the Domain Controller for enterprise services.

```text
Windows 11 Client
      │
      ▼
Preferred DNS
192.168.121.10
      │
      ▼
SF-DC01
      │
      ├── Active Directory
      ├── DNS
      ├── Kerberos
      └── SMB File Shares
```

---

# Enterprise Identity Architecture

Identity management remains centralized within Active Directory.

```text
Enterprise User
        │
        ▼
Active Directory
        │
        ▼
Kerberos Ticket
        │
        ▼
Enterprise Authentication
        │
        ▼
Resource Authorization
```

---

# Resource Access Architecture

Business resources are accessed using centralized authentication and authorization.

```text
Windows 11 Client
        │
        ▼
Kerberos Authentication
        │
        ▼
SMB Share
        │
        ▼
NTFS Permissions
        │
        ▼
Department Resource
```

---

# Project Integration

Project 06 integrates directly with previous Enterprise Infrastructure projects.

```text
Project 01
Windows Server
        │
        ▼
Project 02
Active Directory
        │
        ▼
Project 03
Enterprise Identity
        │
        ▼
Project 04
Identity Lifecycle
        │
        ▼
Project 05
Identity-Based Resource Access
        │
        ▼
Project 06
Windows 11 Enterprise Client
```

---

# Security Architecture

The workstation benefits from centralized enterprise security.

Security controls include:

- Active Directory authentication
- Kerberos authentication
- Centralized DNS
- Group-based authorization
- Least-Privilege access
- Enterprise identity management

---

# Enterprise Benefits

The completed architecture provides:

- Centralized authentication
- Centralized identity management
- Enterprise authorization
- Secure resource access
- Simplified administration
- Scalable workstation deployment
- Enterprise-ready infrastructure

---

# Next Architecture Expansion

Project 07 will extend this architecture into cloud identity.

```text
Windows 11 Client
        │
        ▼
Active Directory
        │
        ▼
Microsoft Entra ID
        │
        ▼
Cloud Identity
        │
        ▼
Enterprise Applications
```