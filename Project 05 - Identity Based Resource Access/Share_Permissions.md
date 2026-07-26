# Share Permissions

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

This document describes the Share Permission model implemented within the CyberLab enterprise environment.

The objective was to provide secure network access to departmental resources while allowing NTFS permissions to function as the primary authorization mechanism.

The project follows Microsoft's recommended practice of keeping Share Permissions relatively broad while enforcing access through NTFS permissions.

---

# Purpose of Share Permissions

Share Permissions control access to resources when they are accessed across the network using SMB (Server Message Block).

Unlike NTFS permissions, Share Permissions only apply to network access.

They determine:

- Whether users can access the shared resource
- Whether users can read files
- Whether users can modify files
- Whether users can create new files
- Whether users can manage the shared resource

---

# Share Architecture

Each department folder was published as an SMB share.

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

Every folder received its own network share.

---

# Share Naming

The share names matched the department names.

Examples

```text
Executive

Finance

Human Resources

Information Technology

Marketing

Operations

Public

Sales
```

Using descriptive share names improves administration and troubleshooting.

---

# Permission Strategy

The project intentionally separates Share Permissions from NTFS Permissions.

Share Permissions were configured to allow department permission groups access to the share.

NTFS Permissions enforce the actual security.

This approach reduces administrative complexity.

---

# Department Share Configuration

Each departmental share was configured using its corresponding Domain Local permission group.

Example

Finance

```text
DL_Finance_Modify

↓

Share Permission

↓

Full Control
```

The same model was used for:

- Executive
- Human Resources
- Information Technology
- Marketing
- Operations
- Sales

---

# Public Share

The Public resource was configured differently.

Permission Group

```text
DL_Public_Read
```

Permission

```text
Read
```

The Public share is intended for information that every authenticated domain user may view but not modify.

---

# AGDLP Integration

Share Permissions are assigned to Domain Local Groups rather than individual users.

Authorization Flow

```text
User

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
Olivia Brown

↓

Finance_Users

↓

DL_Finance_Modify

↓

Finance Share
```

---

# Share Permission Levels

## Full Control

Allows:

- Read
- Modify
- Create files
- Delete files
- Change share permissions

Assigned to:

Department Domain Local permission groups.

---

## Read

Allows:

- View files
- Read files
- Browse folders

Does not allow:

- Modify
- Delete
- Create files

Assigned to:

DL_Public_Read

---

# Effective Permissions

Users must satisfy both Share Permissions and NTFS Permissions.

Effective authorization is determined by the most restrictive permission.

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

# Security Design

The implemented design follows Microsoft's recommended enterprise model.

Share Permissions

↓

Broad

↓

NTFS Permissions

↓

Restrictive

This approach allows NTFS permissions to become the primary authorization control.

---

# Security Benefits

The Share Permission model provides:

- Simplified administration
- Consistent configuration
- Reduced permission conflicts
- Centralized authorization
- Easier troubleshooting
- Improved scalability

---

# Identity Lifecycle Integration

The Share Permission design integrates directly with Project 04.

## Joiner

New employee

↓

Assigned to Global Group

↓

Automatically receives Share access

---

## Mover

Department changes

↓

Global Group updated

↓

Share access changes automatically

---

## Leaver

Department membership removed

↓

Share authorization removed

↓

No Share Permission changes required

---

# Validation

The following items were verified.

- Department shares created
- Share names verified
- Domain Local groups assigned
- Public share configured
- Share permissions reviewed
- Permission inheritance confirmed

---

# Screenshots

## Figure 3

Finance SMB Share created.

**Screenshot**

04_Finance_Share_Created.png

---

## Figure 5

Finance Share Permissions.

**Screenshot**

06_Finance_Share_Permissions.png

---

# Outcome

Project 05 successfully implemented an enterprise Share Permission model that separates network access from file system authorization.

By assigning Share Permissions to Domain Local security groups and enforcing authorization primarily through NTFS permissions, the environment follows scalable enterprise access-control practices suitable for Identity and Access Management operations.