# Troubleshooting Log

## Project

Project 05 – Identity-Based Resource Access

---

# Purpose

This document records configuration issues, validation procedures, and corrective actions encountered while deploying enterprise file shares, SMB permissions, NTFS permissions, and the AGDLP authorization model.

The troubleshooting process ensured that resource access followed the Principle of Least Privilege and that authorization was driven through Active Directory security groups.

---

# Issue 1 – File Server Role Verification

## Potential Issue

The File Server role may not be installed or available.

## Impact

Without the File Server role:

- SMB shares cannot be created.
- Shared resources cannot be published.
- Department resources remain unavailable.

## Validation

Verified File and Storage Services were installed through Server Manager.

## Resolution

Confirmed File Server role was already installed.

---

# Issue 2 – Folder Structure

## Potential Issue

Department folders created with inconsistent naming.

## Impact

Inconsistent names complicate:

- Administration
- Automation
- PowerShell scripting
- Documentation

## Validation

Verified all department folders.

Expected structure:

- Executive
- Finance
- Human Resources
- Information Technology
- Marketing
- Operations
- Public
- Sales

## Resolution

Folder names standardized.

---

# Issue 3 – Incorrect Share Permissions

## Potential Issue

Default "Everyone" permissions left on SMB shares.

## Impact

Broad access increases security risk.

## Validation

Reviewed Advanced Sharing permissions.

## Resolution

Removed Everyone.

Assigned department Domain Local group.

---

# Issue 4 – Incorrect NTFS Permissions

## Potential Issue

Default inherited Users permission remained.

## Impact

Authenticated users may receive unintended access.

## Validation

Reviewed Advanced Security Settings.

## Resolution

- Disabled inheritance
- Converted inherited permissions
- Removed Users
- Added department Domain Local group

---

# Issue 5 – Missing AGDLP Group Nesting

## Potential Issue

Users assigned directly to permission groups.

## Impact

Breaks enterprise authorization design.

## Validation

Reviewed Domain Local group membership.

Expected:

```text
Finance_Users

↓

DL_Finance_Modify
```

## Resolution

Nested Global Groups inside Domain Local groups.

---

# Issue 6 – Incorrect Share Name

## Potential Issue

Share name differs from folder name.

## Impact

Confusing administration.

PowerShell automation becomes more difficult.

## Resolution

Verified every share matched the department name.

---

# Issue 7 – Public Folder Permissions

## Potential Issue

Public configured with Modify instead of Read.

## Impact

All authenticated users could modify shared information.

## Resolution

Assigned:

DL_Public_Read

Read permission only.

---

# Issue 8 – Permission Inheritance

## Potential Issue

Folder continues inheriting permissions from parent.

## Impact

Unexpected permissions may appear.

## Resolution

Inheritance disabled.

Explicit ACL implemented.

---

# Validation Performed

Completed validation included:

- Share creation
- Share names
- Share permissions
- NTFS permissions
- Group nesting
- Folder structure
- Permission inheritance
- AGDLP verification

---

# Outcome

No unresolved authorization issues remained after deployment.

The completed configuration follows Microsoft's recommended AGDLP authorization model and provides a scalable permission structure suitable for enterprise environments.