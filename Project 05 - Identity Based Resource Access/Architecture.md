# Architecture

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

This project demonstrates an enterprise authorization architecture using Microsoft Active Directory, SMB File Sharing, NTFS permissions, and the AGDLP access model.

The environment was designed to separate user identities from resource permissions, allowing authorization decisions to be managed through security groups rather than direct user permissions.

This architecture improves scalability, simplifies administration, and supports enterprise Identity and Access Management (IAM) practices.

---

# Infrastructure

| Component | Purpose |
|-----------|---------|
| Windows Server 2022 | File Server |
| Active Directory Domain Services | Identity Management |
| SMB File Services | Shared Resource Access |
| NTFS | File System Authorization |
| VMware Workstation Pro | Virtual Infrastructure |

---

# Environment Architecture

```text
                  Windows Server 2022
                         │
                         ▼
        Active Directory Domain Services
                         │
        ┌────────────────┴────────────────┐
        │                                 │
        ▼                                 ▼
 Identity Management              File Services
        │                                 │
        ▼                                 ▼
 Global Security Groups          Corporate File Shares
        │                                 │
        ▼                                 ▼
 Domain Local Groups            NTFS Permissions
        │                                 │
        └──────────────┬──────────────────┘
                       ▼
              Authorized Resource Access
```

---

# Corporate File Structure

```text
C:\CorporateShares

├── Executive
├── Finance
├── Human Resources
├── Information Technology
├── Marketing
├── Operations
├── Public
└── Sales
```

Each folder represents a departmental business resource.

---

# Identity Architecture

Employee identities exist independently from permissions.

```text
Employee
     │
     ▼
Active Directory User
     │
     ▼
Global Security Group
```

Examples

```text
Olivia Brown
        │
        ▼
Finance_Users
```

```text
Daniel Garcia
        │
        ▼
Operations_Users
```

---

# Authorization Architecture

Authorization is performed using AGDLP.

```text
Account
     │
     ▼
Global Group
     │
     ▼
Domain Local Group
     │
     ▼
NTFS Permission
     │
     ▼
Business Resource
```

Finance example

```text
Maria Lopez
      │
      ▼
Finance_Users
      │
      ▼
DL_Finance_Modify
      │
      ▼
Finance Folder
```

The employee never receives direct permissions on the folder.

---

# Security Group Architecture

## Global Groups

Global groups represent business roles.

```text
Executive_Users

Finance_Users

HR_Users

IT_Admins

Marketing_Users

Operations_Users

Sales_Users
```

---

## Domain Local Groups

Domain Local groups receive resource permissions.

```text
DL_Executive_Modify

DL_Finance_Modify

DL_HR_Modify

DL_IT_Modify

DL_Marketing_Modify

DL_Operations_Modify

DL_Public_Read

DL_Sales_Modify
```

---

# AGDLP Model

```text
Accounts
      │
      ▼
Global Groups
      │
      ▼
Domain Local Groups
      │
      ▼
Permissions
```

The model separates identity management from resource authorization.

Benefits include:

- Simplified administration
- Easier auditing
- Scalable permission management
- Faster onboarding
- Faster offboarding
- Cleaner role changes

---

# Share Permission Model

Each department share was configured using Domain Local permission groups.

Example

```text
Finance Share

DL_Finance_Modify

↓

Full Control
```

Share permissions remain broad while NTFS permissions enforce least privilege.

---

# NTFS Authorization Model

Department folders use NTFS permissions as the primary security boundary.

Finance example

| Principal | Permission |
|-----------|------------|
| SYSTEM | Full Control |
| Administrators | Full Control |
| CREATOR OWNER | Full Control |
| DL_Finance_Modify | Modify |

The inherited Users permission was removed to prevent broad access.

---

# Effective Access

Access is granted only when all authorization layers succeed.

```text
User

↓

Global Group

↓

Domain Local Group

↓

Share Permission

↓

NTFS Permission

↓

Folder Access
```

Removing any layer prevents authorization.

---

# Identity Lifecycle Integration

This architecture integrates directly with Project 04.

## Joiner

```text
Create User

↓

Assign Global Group

↓

Global Group already nested

↓

Access automatically available
```

---

## Mover

```text
Remove Old Global Group

↓

Add New Global Group

↓

Department Access Changes
```

---

## Leaver

```text
Disable Account

↓

Remove Global Group

↓

Authentication Blocked

↓

Department Access Removed
```

---

# Security Controls

The architecture demonstrates:

- Active Directory Administration
- SMB File Sharing
- NTFS Authorization
- AGDLP
- Role-Based Access Control
- Principle of Least Privilege
- Group Nesting
- Access Separation
- Secure Resource Authorization

---

# Business Benefits

The implemented architecture provides:

- Centralized authorization
- Consistent permission management
- Reduced administrative effort
- Simplified onboarding
- Simplified department transfers
- Faster offboarding
- Improved auditing
- Enterprise scalability

---

# Future Architecture

Future projects will expand this design to include:

```text
PowerShell Automation

↓

Microsoft Entra ID

↓

Okta

↓

Conditional Access

↓

Identity Governance

↓

Access Reviews

↓

Automated Provisioning
```

The current architecture serves as the foundation for all future identity and authorization projects.

---

# Outcome

Project 05 established a scalable enterprise authorization architecture that separates identities from resource permissions through the AGDLP model.

This design reflects common enterprise Active Directory implementations and provides a secure foundation for future automation, cloud identity, and governance initiatives.