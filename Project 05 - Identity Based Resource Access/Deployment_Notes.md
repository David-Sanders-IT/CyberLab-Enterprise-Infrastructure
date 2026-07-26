# Deployment Notes

## Project

Project 05 – Identity-Based Resource Access

---

# Purpose

The objective of this project was to implement an enterprise file access model using Microsoft Active Directory, SMB file sharing, NTFS permissions, and the AGDLP authorization model.

Rather than assigning permissions directly to users, authorization was implemented through security groups to create a scalable, maintainable, and secure access-control model.

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Operating System | Windows Server 2022 |
| Platform | VMware Workstation Pro |
| Domain Controller | SF-DC01 |
| Active Directory Domain | corp.cyberlab.local |
| File Server | Windows File Services |
| Resource Path | C:\CorporateShares |

---

# Initial Environment

Before beginning this project, the environment already contained:

- Active Directory Domain Services
- Enterprise Organizational Unit structure
- Departmental Global Security Groups
- Departmental users
- Identity Lifecycle Management (Project 04)

The environment was verified prior to configuring resource authorization.

---

# File Structure Deployment

A centralized file repository was created.

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

# SMB Share Deployment

Each departmental folder was published as an SMB share.

Shares created:

- Executive
- Finance
- Human Resources
- Information Technology
- Marketing
- Operations
- Public
- Sales

The share names matched the departmental resource names for consistency.

---

# Global Security Groups

Existing department groups were used.

Examples:

- Executive_Users
- Finance_Users
- HR_Users
- IT_Admins
- Marketing_Users
- Operations_Users
- Sales_Users

These groups represent business roles rather than permissions.

---

# Domain Local Permission Groups

The following Domain Local groups were created.

```text
DL_Executive_Modify

DL_Finance_Modify

DL_HR_Modify

DL_IT_Modify

DL_Marketing_Modify

DL_Operations_Modify

DL_Sales_Modify

DL_Public_Read
```

These groups receive permissions on business resources.

---

# Group Nesting

Each department Global Group was nested inside its matching Domain Local permission group.

Example

```text
Finance_Users

↓

DL_Finance_Modify
```

Public access:

```text
Domain Users

↓

DL_Public_Read
```

This follows Microsoft's AGDLP authorization model.

---

# Share Permissions

Share permissions were configured as follows.

Department folders:

```text
DL_Department_Modify

↓

Full Control
```

Public:

```text
DL_Public_Read

↓

Read
```

Share permissions were intentionally broad to allow NTFS permissions to become the primary authorization control.

---

# NTFS Permissions

Inheritance was disabled.

Inherited permissions were converted to explicit permissions.

The default Users entry was removed.

Department folders received the following ACL.

| Principal | Permission |
|-----------|------------|
| SYSTEM | Full Control |
| Administrators | Full Control |
| CREATOR OWNER | Full Control (Subfolders and Files Only) |
| DL_Department_Modify | Modify |

The Public folder received:

| Principal | Permission |
|-----------|------------|
| SYSTEM | Full Control |
| Administrators | Full Control |
| CREATOR OWNER | Full Control |
| DL_Public_Read | Read & Execute |

---

# Security Principles Applied

The deployment implemented:

- Role-Based Access Control (RBAC)
- AGDLP
- Principle of Least Privilege
- Identity-Based Authorization
- Separation of Identities and Permissions
- Group-Based Access Administration

---

# Validation

The completed deployment was reviewed.

Validation included:

- Folder creation
- Share creation
- Share permissions
- NTFS permissions
- Global Group nesting
- Domain Local group configuration
- Permission inheritance review
- ACL verification

---

# Deployment Summary

The completed deployment provides a scalable authorization model where resource access is managed through Active Directory group membership rather than direct user permissions.

This design supports enterprise onboarding, department transfers, offboarding, access reviews, and future PowerShell automation.

---

# Project Outcome

Project 05 successfully implemented enterprise resource authorization using Active Directory, SMB shares, NTFS permissions, and the AGDLP model.

The environment now provides a secure and maintainable foundation for validating access from domain-joined clients and for future automation projects involving PowerShell, Microsoft Entra ID, and identity governance.