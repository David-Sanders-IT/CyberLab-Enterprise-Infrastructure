# NTFS Permissions

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

This document describes the NTFS permission model implemented within the CyberLab enterprise environment.

The objective was to secure departmental resources using Microsoft's recommended authorization practices while following the Principle of Least Privilege.

Rather than granting permissions directly to user accounts, NTFS permissions were assigned to Domain Local security groups following the AGDLP model.

---

# Purpose of NTFS Permissions

NTFS permissions control access to files and folders stored on NTFS-formatted volumes.

Unlike Share Permissions, NTFS permissions apply regardless of how the resource is accessed.

NTFS permissions determine:

- Which users can access a resource
- What actions users may perform
- Whether files can be modified
- Whether files can be deleted
- Whether folders can be created
- Whether permissions can be changed

NTFS permissions serve as the primary authorization layer within this project.

---

# Permission Strategy

The following strategy was implemented.

## Share Permissions

Broad permissions were assigned at the SMB share level.

Department Domain Local groups received:

```text
Full Control
```

This allows NTFS permissions to become the primary security control.

---

## NTFS Permissions

NTFS permissions enforce authorization.

Only approved security principals receive access.

This follows Microsoft's recommended enterprise practice.

---

# Inheritance

By default, folders inherit permissions from their parent directory.

For this project:

- Inheritance was disabled.
- Existing inherited permissions were converted into explicit permissions.
- Unnecessary inherited entries were removed.

This allows each departmental folder to maintain an independent access-control list.

---

# Default Permissions

Before modification, inherited permissions included entries such as:

- SYSTEM
- Administrators
- Users
- CREATOR OWNER

The default Users entry provided broader access than required.

---

# ACL Hardening

The inherited Users permission was removed.

Removing this entry prevents unnecessary access by authenticated users who do not belong to the appropriate department.

This change supports the Principle of Least Privilege.

---

# Department Folder ACL

Department folders were configured using the following access-control model.

| Principal | Permission |
|-----------|------------|
| SYSTEM | Full Control |
| Administrators | Full Control |
| CREATOR OWNER | Full Control (Subfolders and Files Only) |
| DL_Department_Modify | Modify |

Example:

Finance

| Principal | Permission |
|-----------|------------|
| SYSTEM | Full Control |
| Administrators | Full Control |
| CREATOR OWNER | Full Control |
| DL_Finance_Modify | Modify |

---

# Public Folder ACL

The Public folder was configured differently.

| Principal | Permission |
|-----------|------------|
| SYSTEM | Full Control |
| Administrators | Full Control |
| CREATOR OWNER | Full Control |
| DL_Public_Read | Read & Execute |

This allows all authenticated users to read public resources without granting modification rights.

---

# Permission Levels

## Full Control

Allows:

- Read
- Write
- Modify
- Delete
- Change Permissions
- Take Ownership

Assigned to:

- SYSTEM
- Administrators

---

## Modify

Allows:

- Read
- Write
- Create Files
- Create Folders
- Delete Files
- Delete Folders

Does not allow:

- Change Permissions
- Take Ownership

Assigned to:

Department Domain Local security groups.

---

## Read & Execute

Allows:

- View folder contents
- Read files
- Execute applications
- Navigate folders

Does not allow:

- Modify
- Delete
- Create files
- Create folders

Assigned to:

DL_Public_Read

---

# AGDLP Integration

NTFS permissions are assigned to Domain Local groups rather than directly to user accounts.

Authorization flow:

```text
User

↓

Global Group

↓

Domain Local Group

↓

NTFS Permission

↓

Business Resource
```

Example:

```text
Olivia Brown

↓

Finance_Users

↓

DL_Finance_Modify

↓

Finance Folder
```

---

# Effective Permissions

A user's effective permissions are determined by:

- Group membership
- NTFS permissions
- Share permissions

Because Share Permissions were intentionally broad, NTFS permissions determine the final authorization result.

Example

Share

```text
Full Control
```

NTFS

```text
Modify
```

Effective Permission

```text
Modify
```

---

# Security Benefits

The implemented NTFS design provides:

- Least Privilege
- Centralized authorization
- Easier permission reviews
- Reduced permission sprawl
- Simplified administration
- Easier troubleshooting
- Scalable permission management

---

# Identity Lifecycle Integration

The NTFS permission model supports Project 04.

## Joiner

New employee

↓

Assigned to Global Group

↓

Automatically receives department NTFS permissions

---

## Mover

Department transfer

↓

Global Group changes

↓

Department NTFS access changes

---

## Leaver

Department membership removed

↓

NTFS authorization removed

↓

No direct folder permissions require modification

---

# Validation

The following items were verified during deployment:

- Folder inheritance disabled
- Explicit permissions configured
- Users permission removed
- Domain Local groups assigned
- Department folders secured
- Public folder configured as read-only
- ACL reviewed after configuration

---

# Screenshots

## Figure 6

Default inherited NTFS permissions.

**Screenshot**

07_Default_NTFS_Permissions.png

---

## Figure 7

Final Finance NTFS permissions.

**Screenshot**

08_Finance_NTFS_Permissions.png

---

## Figure 9

Final Finance Access Control List.

**Screenshot**

10_Finance_Final_ACL.png

---

# Outcome

Project 05 successfully implemented a secure NTFS permission model using Domain Local security groups and Microsoft's AGDLP authorization framework.

The completed configuration separates identity from authorization, enforces least privilege, and provides a scalable foundation for future automation, access reviews, and enterprise identity governance.