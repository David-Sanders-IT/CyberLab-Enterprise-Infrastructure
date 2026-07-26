# Project 05 – Identity-Based Resource Access

## Overview

This project demonstrates how enterprise identities are connected to business resources through Active Directory security groups, SMB share permissions, and NTFS permissions.

The objective was to build a scalable authorization model where access is assigned through group membership instead of being granted directly to individual users.

The environment uses the AGDLP model:

```text
Accounts
   ↓
Global Groups
   ↓
Domain Local Groups
   ↓
Permissions
```

This design supports Role-Based Access Control, least privilege, easier access reviews, and efficient employee lifecycle management.

---

# Objectives

- Create departmental business-resource folders
- Configure SMB shares
- Configure NTFS permissions
- Implement AGDLP group nesting
- Separate identity groups from resource-permission groups
- Remove broad default access
- Apply least-privilege authorization
- Create a shared Public resource
- Document the completed access-control model
- Prepare the environment for client-side access validation

---

# Environment

| Component | Configuration |
|---|---|
| Domain | `corp.cyberlab.local` |
| Domain Controller | `SF-DC01` |
| Operating System | Windows Server 2022 |
| Directory Service | Active Directory Domain Services |
| File Services | SMB File Sharing |
| File Path | `C:\CorporateShares` |
| Virtualization | VMware Workstation Pro |

---

# Business Resource Structure

The following departmental folders were created:

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

Each departmental resource was designed to receive access through a dedicated Domain Local security group.

---

# Authorization Architecture

The project uses an enterprise AGDLP authorization model.

```text
User Account
     ↓
Department Global Group
     ↓
Domain Local Permission Group
     ↓
SMB and NTFS Permissions
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
Finance Share
```

This design avoids assigning resource permissions directly to users.

---

# Global Role Groups

The following Global security groups represent business roles or departments:

- `Executive_Users`
- `Finance_Users`
- `HR_Users`
- `IT_Admins`
- `Marketing_Users`
- `Operations_Users`
- `Sales_Users`
- `Domain Users`

These groups contain user accounts based on department or role.

---

# Domain Local Permission Groups

The following Domain Local security groups were created to receive resource permissions:

- `DL_Executive_Modify`
- `DL_Finance_Modify`
- `DL_HR_Modify`
- `DL_IT_Modify`
- `DL_Marketing_Modify`
- `DL_Operations_Modify`
- `DL_Sales_Modify`
- `DL_Public_Read`

The department Global groups were nested into the matching Domain Local groups.

Example:

```text
Finance_Users
     ↓
DL_Finance_Modify
```

For the Public folder:

```text
Domain Users
     ↓
DL_Public_Read
```

---

# Share Permissions

Each department folder was published as an SMB share.

The department Domain Local Modify group received:

```text
Full Control
```

at the Share Permissions layer.

The Public folder used:

```text
DL_Public_Read
```

with read-only access.

Share permissions were kept broad enough to allow NTFS permissions to serve as the primary security control.

---

# NTFS Permission Model

Inheritance was disabled on the departmental folders, and inherited entries were converted into explicit permissions before cleanup.

The broad `Users` entry was removed.

The final department ACL followed this model:

| Principal | Permission |
|---|---|
| SYSTEM | Full Control |
| Administrators | Full Control |
| CREATOR OWNER | Full Control on subfolders and files |
| Department Domain Local Group | Modify |

Finance example:

| Principal | Permission |
|---|---|
| SYSTEM | Full Control |
| Administrators | Full Control |
| CREATOR OWNER | Full Control on subfolders and files |
| `DL_Finance_Modify` | Modify |

The Public folder uses `DL_Public_Read` with Read and Execute permissions.

---

# Effective Permission Model

A user receives access only when all layers align.

```text
User Membership
      +
Global Group Nesting
      +
Domain Local Group
      +
Share Permission
      +
NTFS Permission
      =
Effective Access
```

The most restrictive permission between the Share and NTFS layers determines the user’s effective access.

---

# Security Principles Demonstrated

## Role-Based Access Control

Users receive access through department-based groups instead of direct permission assignments.

## Principle of Least Privilege

Department users receive access only to resources required for their business role.

## Separation of Identity and Permissions

Global groups represent identities and roles.

Domain Local groups represent resource permissions.

## Scalable Access Management

Future employee onboarding, transfers, and terminations can be handled by changing group membership without modifying folder ACLs.

---

# Identity Lifecycle Integration

This project builds directly on Project 04.

During onboarding:

```text
New employee
   ↓
Department Global Group
   ↓
Domain Local Permission Group
   ↓
Department Resource
```

During a department transfer:

```text
Remove old Global Group
Add new Global Group
   ↓
Resource access changes
```

During offboarding:

```text
Remove department membership
Disable account
   ↓
Department access is revoked
```

This shows how identity lifecycle events drive authorization.

---

# Screenshots

## File Server Role Verification

![File Server Role](Screenshots/02_File_Server_Role_Verified.png)

**Figure 1.** File and Storage Services verified on the Windows Server.

---

## Corporate File Structure

![Corporate File Structure](Screenshots/03_Corporate_File_Structure.png)

**Figure 2.** Departmental business-resource folders created under `C:\CorporateShares`.

---

## Finance Share Created

![Finance Share](Screenshots/04_Finance_Share_Created.png)

**Figure 3.** Finance folder published as an SMB share.

---

## AGDLP Group Nesting

![AGDLP Group Nesting](Screenshots/05_AGDLP_Group_Nesting.png)

**Figure 4.** `Finance_Users` nested inside `DL_Finance_Modify`.

---

## Finance Share Permissions

![Finance Share Permissions](Screenshots/06_Finance_Share_Permissions.png)

**Figure 5.** `DL_Finance_Modify` assigned Full Control at the share-permission layer.

---

## Default NTFS Permissions

![Default NTFS Permissions](Screenshots/07_Default_NTFS_Permissions.png)

**Figure 6.** Default inherited NTFS permissions before ACL hardening.

---

## Finance NTFS Permissions

![Finance NTFS Permissions](Screenshots/08_Finance_NTFS_Permissions.png)

**Figure 7.** Final Finance ACL after inheritance was disabled and least-privilege permissions were applied.

---

## Enterprise Permission Groups

![Enterprise Permission Groups](Screenshots/09_Enterprise_Permission_Groups.png)

**Figure 8.** Global department groups and Domain Local permission groups used in the authorization model.

---

## Finance Final ACL

![Finance Final ACL](Screenshots/10_Finance_Final_ACL.png)

**Figure 9.** Final Finance folder security configuration showing the approved principals.

---

# Skills Demonstrated

- Active Directory group administration
- SMB file sharing
- NTFS permission management
- Share permission management
- AGDLP
- Role-Based Access Control
- Least privilege
- Group nesting
- Resource authorization
- Permission inheritance
- Access-control list administration
- Enterprise naming conventions
- Identity-to-resource mapping
- Security documentation

---

# Current Validation Status

The server-side authorization model has been configured.

Client-side validation is planned using a domain-joined Windows 11 workstation.

Validation will confirm:

- Authorized users can access their department share
- Unauthorized users receive Access Denied
- Domain users can read the Public share
- Department transfers change access through group membership
- Disabled accounts cannot authenticate to resources

---

# Lessons Learned

This project demonstrated that secure resource access depends on more than creating a file share.

A complete enterprise design requires:

- Business-role groups
- Resource-permission groups
- Correct group nesting
- Share permissions
- NTFS permissions
- Removal of broad inherited access
- Final access validation

The project also reinforced that folder permissions should not be assigned directly to users.

---

# Future Improvements

Planned enhancements include:

- Windows 11 client access testing
- Access Denied validation
- Effective Access review
- Read-only permission groups
- Group Policy mapped drives
- Access-Based Enumeration
- PowerShell share creation
- PowerShell ACL automation
- Access review reports
- Microsoft Entra ID integration
- Identity governance workflows

---

# Outcome

Project 05 established a scalable, identity-based authorization model for departmental business resources.

By combining Active Directory Global groups, Domain Local permission groups, SMB shares, and hardened NTFS permissions, the environment now supports secure and maintainable access management based on business roles rather than direct user assignments.