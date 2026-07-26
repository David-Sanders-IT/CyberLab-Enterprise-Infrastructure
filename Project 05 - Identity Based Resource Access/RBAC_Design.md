# RBAC Design

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

This document describes the Role-Based Access Control (RBAC) model implemented within the CyberLab enterprise environment.

The objective of the design is to separate user identities from resource permissions by using Active Directory security groups instead of assigning permissions directly to individual users.

This approach creates a scalable authorization model that supports enterprise identity lifecycle management.

---

# Authorization Philosophy

Resource permissions should never be assigned directly to individual users.

Instead, permissions are assigned to security groups representing business roles.

Users receive access by becoming members of those groups.

This approach simplifies:

- User onboarding
- Department transfers
- Employee offboarding
- Access reviews
- Permission auditing
- Future automation

---

# RBAC Architecture

The environment follows Microsoft's AGDLP model.

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

---

# Identity Layer

The Identity layer contains Active Directory user accounts.

Examples:

```text
Olivia Brown

Maria Lopez

Daniel Garcia

Emily Davis

David Sanders
```

Users never receive direct folder permissions.

---

# Business Role Layer

Business roles are represented by Global Security Groups.

Examples

```text
Executive_Users

Finance_Users

HR_Users

IT_Admins

Marketing_Users

Operations_Users

Sales_Users
```

These groups represent departments rather than permissions.

A user's department determines Global Group membership.

---

# Resource Permission Layer

Resource permissions are represented by Domain Local Security Groups.

Examples

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

These groups receive NTFS and Share permissions.

No users are assigned directly to these permissions.

---

# Permission Flow

Authorization follows this sequence.

```text
Employee

↓

Global Security Group

↓

Domain Local Permission Group

↓

Share Permission

↓

NTFS Permission

↓

Business Resource
```

Example

```text
Maria Lopez

↓

Finance_Users

↓

DL_Finance_Modify

↓

Finance Folder
```

---

# Department Authorization

## Executive

Identity Group

```text
Executive_Users
```

Permission Group

```text
DL_Executive_Modify
```

Authorized Resource

```text
Executive Share
```

---

## Finance

Identity Group

```text
Finance_Users
```

Permission Group

```text
DL_Finance_Modify
```

Authorized Resource

```text
Finance Share
```

---

## Human Resources

Identity Group

```text
HR_Users
```

Permission Group

```text
DL_HR_Modify
```

Authorized Resource

```text
Human Resources Share
```

---

## Information Technology

Identity Group

```text
IT_Admins
```

Permission Group

```text
DL_IT_Modify
```

Authorized Resource

```text
Information Technology Share
```

---

## Marketing

Identity Group

```text
Marketing_Users
```

Permission Group

```text
DL_Marketing_Modify
```

Authorized Resource

```text
Marketing Share
```

---

## Operations

Identity Group

```text
Operations_Users
```

Permission Group

```text
DL_Operations_Modify
```

Authorized Resource

```text
Operations Share
```

---

## Sales

Identity Group

```text
Sales_Users
```

Permission Group

```text
DL_Sales_Modify
```

Authorized Resource

```text
Sales Share
```

---

## Public Resources

Identity Group

```text
Domain Users
```

Permission Group

```text
DL_Public_Read
```

Authorized Resource

```text
Public Share
```

Every authenticated domain user receives read-only access to the Public resource.

---

# Identity Lifecycle Integration

The RBAC model integrates directly with Project 04.

## Joiner

New employee

↓

Assigned to Global Group

↓

Already nested inside Domain Local Group

↓

Department access automatically available

---

## Mover

Department changes

↓

Old Global Group removed

↓

New Global Group assigned

↓

Resource access automatically changes

No folder permissions require modification.

---

## Leaver

Account disabled

↓

Department Global Group removed

↓

Access automatically revoked

↓

Identity retained

---

# Security Benefits

The implemented RBAC model provides:

- Centralized authorization
- Simplified administration
- Reduced permission sprawl
- Easier auditing
- Easier onboarding
- Easier department transfers
- Faster offboarding
- Better scalability
- Improved consistency

---

# Principle of Least Privilege

Users receive only the permissions required to perform their assigned business role.

No user receives:

- Direct NTFS permissions
- Direct Share permissions
- Unnecessary privileged access

Access is removed immediately when business responsibilities change.

---

# Future Expansion

The RBAC model will support future projects including:

- PowerShell Automation
- Windows 11 Enterprise Client Validation
- Group Policy Drive Mapping
- Microsoft Entra ID
- Okta
- Identity Governance
- Access Reviews
- Automated Provisioning
- Automated Offboarding

The authorization model established in Project 05 serves as the foundation for all future identity and access management projects.

---

# Outcome

Project 05 successfully implemented an enterprise Role-Based Access Control architecture using Microsoft's AGDLP model.

The completed design separates identities from permissions, reduces administrative complexity, and provides a scalable authorization framework suitable for enterprise Active Directory environments.