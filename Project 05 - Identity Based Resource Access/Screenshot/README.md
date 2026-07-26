# Screenshots

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

This directory contains screenshots documenting the deployment of an enterprise identity-based resource access model using Active Directory security groups, SMB shares, NTFS permissions, and the AGDLP authorization framework.

The screenshots provide visual evidence of:

- File server role verification
- Departmental folder creation
- SMB share configuration
- Global and Domain Local group design
- AGDLP group nesting
- Share permission configuration
- NTFS permission hardening
- Final access-control list validation

---

# 01_Add_Roles_Wizard.png

The Add Roles and Features Wizard opened in Server Manager.

Demonstrates:

- Windows Server administration
- Role deployment workflow
- File services preparation

---

# 02_File_Server_Role_Verified.png

File and Storage Services verified as installed on the Windows Server.

Demonstrates:

- File server role verification
- Server Manager administration
- Existing role validation

---

# 03_Corporate_File_Structure.png

Departmental business-resource folders created under:

```text
C:\CorporateShares
```

Folders include:

- Executive
- Finance
- Human Resources
- Information Technology
- Marketing
- Operations
- Public
- Sales

Demonstrates:

- Enterprise folder design
- Business-resource organization
- File server structure

---

# 04_Finance_Share_Created.png

The Finance folder configured as an SMB network share.

Demonstrates:

- Advanced Sharing
- SMB share creation
- Department resource publishing
- Share-name configuration

---

# 05_AGDLP_Group_Nesting.png

The `Finance_Users` Global security group nested inside the `DL_Finance_Modify` Domain Local security group.

Demonstrates:

- AGDLP
- Global-to-Domain-Local group nesting
- Separation of identities and resource permissions
- Scalable enterprise authorization

Authorization path:

```text
User Account
    ↓
Finance_Users
    ↓
DL_Finance_Modify
    ↓
Finance Resource
```

---

# 06_Finance_Share_Permissions.png

The `DL_Finance_Modify` Domain Local group assigned Full Control at the SMB share-permission layer.

Demonstrates:

- Share permission administration
- Group-based authorization
- Removal of default broad access
- Domain Local permission assignment

---

# 07_Default_NTFS_Permissions.png

Default inherited NTFS permissions displayed before ACL hardening.

The screenshot provides a baseline for comparing the original and final permission models.

Demonstrates:

- Permission inheritance review
- Default ACL analysis
- Before-state documentation
- Security assessment

---

# 08_Finance_NTFS_Permissions.png

The final Finance NTFS access-control list after inheritance was disabled and unnecessary permissions were removed.

The approved ACL includes:

- SYSTEM — Full Control
- Administrators — Full Control
- CREATOR OWNER — Full Control on subfolders and files
- `DL_Finance_Modify` — Modify

Demonstrates:

- NTFS permission management
- ACL hardening
- Explicit permission configuration
- Least-privilege authorization
- Removal of broad `Users` access

---

# 09_Enterprise_Permission_Groups.png

The completed Active Directory security-group structure displaying department Global groups and Domain Local resource-permission groups.

Examples include:

```text
Finance_Users
HR_Users
IT_Admins
Operations_Users

DL_Finance_Modify
DL_HR_Modify
DL_IT_Modify
DL_Operations_Modify
DL_Public_Read
```

Demonstrates:

- Enterprise naming conventions
- Global security groups
- Domain Local security groups
- Resource permission architecture
- Centralized authorization management

---

# 10_Finance_Final_ACL.png

Final Finance folder security configuration displayed through Advanced Security Settings.

Demonstrates:

- Completed NTFS ACL
- Approved security principals
- Modify-level department access
- Administrative access preservation
- Least-privilege enforcement

---

# Authorization Model Summary

The screenshots document the following authorization flow:

```text
Active Directory User
        ↓
Department Global Group
        ↓
Domain Local Permission Group
        ↓
SMB Share Permission
        ↓
NTFS Permission
        ↓
Department Business Resource
```

Finance example:

```text
Olivia Brown
        ↓
Finance_Users
        ↓
DL_Finance_Modify
        ↓
Finance Share
```

---

# Security Controls Demonstrated

The screenshots provide evidence of the following controls:

- Role-Based Access Control
- Principle of Least Privilege
- AGDLP
- Group-based authorization
- Permission inheritance management
- NTFS ACL hardening
- SMB share administration
- Department isolation
- Separation of identity groups and permission groups
- Centralized access administration

---

# Current Validation Status

The screenshots currently document the server-side authorization configuration.

Future screenshots will document client-side validation, including:

- Authorized department access
- Unauthorized access denial
- Public read-only access
- Department-transfer access changes
- Disabled-account authentication failure
- Effective Access results

Planned validation screenshot names:

```text
11_Public_Read_Access.png
12_Authorized_Department_Access.png
13_Unauthorized_Access_Denied.png
14_Public_Read_Only_Validation.png
15_Effective_Access_Validation.png
16_Project_Completed.png
```

---

# Outcome

The screenshots provide visual evidence that Project 05 successfully established an enterprise identity-based resource access model.

The completed configuration connects Active Directory identities to departmental business resources through Global groups, Domain Local permission groups, SMB shares, and hardened NTFS permissions.