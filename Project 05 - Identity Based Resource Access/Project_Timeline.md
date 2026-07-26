# Project Timeline

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

This timeline documents the major milestones completed during Project 05.

The project focused on implementing enterprise resource authorization using Microsoft Active Directory, SMB File Services, NTFS permissions, and Microsoft's AGDLP authorization model.

Each phase was completed sequentially and validated before progressing to the next stage.

---

# Phase 1 – Project Planning

## Objective

Design an enterprise authorization model that separates user identities from resource permissions.

### Completed

- Defined project objectives
- Selected AGDLP authorization model
- Planned departmental resource structure
- Planned Global security groups
- Planned Domain Local permission groups
- Planned Share permission strategy
- Planned NTFS permission strategy
- Planned validation process
- Planned documentation

**Status:** Complete

---

# Phase 2 – File Server Preparation

## Objective

Verify the Windows Server environment was capable of hosting enterprise file shares.

### Completed

- Verified File Server role
- Verified File and Storage Services
- Confirmed Active Directory integration
- Confirmed domain functionality

### Screenshots

- 01_Add_Roles_Wizard.png
- 02_File_Server_Role_Verified.png

**Status:** Complete

---

# Phase 3 – Corporate Resource Structure

## Objective

Create a standardized departmental resource hierarchy.

### Completed

Created:

- Executive
- Finance
- Human Resources
- Information Technology
- Marketing
- Operations
- Public
- Sales

### Screenshots

- 03_Corporate_File_Structure.png

**Status:** Complete

---

# Phase 4 – SMB Share Configuration

## Objective

Publish departmental resources using SMB.

### Completed

Created shares for:

- Executive
- Finance
- Human Resources
- Information Technology
- Marketing
- Operations
- Public
- Sales

Configured:

- Share names
- Advanced Sharing
- Department-specific Share Permissions

### Screenshots

- 04_Finance_Share_Created.png
- 06_Finance_Share_Permissions.png

**Status:** Complete

---

# Phase 5 – AGDLP Authorization

## Objective

Separate identities from resource permissions.

### Completed

Created Domain Local groups:

- DL_Executive_Modify
- DL_Finance_Modify
- DL_HR_Modify
- DL_IT_Modify
- DL_Marketing_Modify
- DL_Operations_Modify
- DL_Sales_Modify
- DL_Public_Read

Nested:

- Executive_Users
- Finance_Users
- HR_Users
- IT_Admins
- Marketing_Users
- Operations_Users
- Sales_Users
- Domain Users

inside the corresponding Domain Local groups.

### Screenshots

- 05_AGDLP_Group_Nesting.png
- 09_Enterprise_Permission_Groups.png

**Status:** Complete

---

# Phase 6 – NTFS Security

## Objective

Implement enterprise ACLs using least privilege.

### Completed

- Reviewed inherited permissions
- Disabled inheritance
- Converted inherited permissions
- Removed unnecessary Users permission
- Assigned Domain Local groups
- Configured department Modify permissions
- Configured Public Read permissions

### Screenshots

- 07_Default_NTFS_Permissions.png
- 08_Finance_NTFS_Permissions.png
- 10_Finance_Final_ACL.png

**Status:** Complete

---

# Phase 7 – Documentation

## Objective

Produce enterprise-quality technical documentation describing the authorization architecture and deployment.

### Documents Created

- README.md
- Architecture.md
- Deployment_Notes.md
- RBAC_Design.md
- NTFS_Permissions.md
- Share_Permissions.md
- Troubleshooting_Log.md
- Skills_Demonstrated.md
- Lessons_Learned.md
- Future_Improvements.md
- Screenshots_README.md
- Project_Timeline.md

**Status:** Complete

---

# Current Validation Status

The server-side authorization model has been completed.

The following validation has been performed:

- Share creation
- Share permission verification
- NTFS permission verification
- Group nesting verification
- AGDLP verification
- ACL validation

Client-side validation will be completed during the Windows 11 Enterprise Client project.

---

# Project Milestones

| Milestone | Status |
|-----------|--------|
| Project Planned | ✅ Complete |
| File Server Verified | ✅ Complete |
| Department Resources Created | ✅ Complete |
| SMB Shares Created | ✅ Complete |
| AGDLP Implemented | ✅ Complete |
| Share Permissions Configured | ✅ Complete |
| NTFS Permissions Hardened | ✅ Complete |
| Documentation Completed | ✅ Complete |
| GitHub Ready | ✅ Complete |

---

# Technologies Used

- Windows Server 2022
- Active Directory Domain Services
- Active Directory Users and Computers
- SMB File Sharing
- NTFS
- VMware Workstation Pro

---

# Enterprise Concepts Demonstrated

- Identity-Based Authorization
- Active Directory Administration
- AGDLP
- Role-Based Access Control (RBAC)
- Principle of Least Privilege
- SMB File Sharing
- NTFS Permissions
- Access Control Lists (ACLs)
- Group Nesting
- Enterprise Authorization Design

---

# Next Project

## Project 06 – Group Policy Administration

The next project will focus on centralized Windows management using Group Policy Objects (GPOs).

Planned objectives include:

- Password Policy
- Account Lockout Policy
- Desktop Restrictions
- Drive Mapping
- Security Settings
- Administrative Templates
- Software Configuration
- User Configuration
- Computer Configuration
- Group Policy Validation

This project will extend the authorization model by centrally managing Windows client behavior through Active Directory.

---

# Outcome

Project 05 successfully implemented a scalable enterprise authorization model using Microsoft's AGDLP framework.

The completed environment now provides centralized identity-based access management for departmental resources and establishes the foundation for future automation, Windows client validation, Microsoft Entra ID, Okta, and Identity Governance projects.