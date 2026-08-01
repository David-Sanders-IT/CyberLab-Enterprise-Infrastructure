# Architecture

## Overview

This project implements an enterprise Identity and Access Management (IAM) automation framework using Active Directory Domain Services (AD DS) and Windows PowerShell.

The solution automates the complete identity lifecycle by provisioning users, assigning organizational hierarchy, implementing role-based access control (RBAC), generating audit reports, and automating employee offboarding.

---

# Environment

Platform

- VMware Workstation
- Windows Server 2022
- Active Directory Domain Services
- Windows PowerShell
- DNS
- Organizational Units
- CSV Data Source

---

# Domain

```text
corp.cyberlab.local
```

---

# Identity Provisioning Workflow

```text
employees.csv

        │

        ▼

01_Create_Users.ps1

        │

        ▼

Active Directory Users

        │

        ▼

02_Set_Managers.ps1

        │

        ▼

Organizational Hierarchy

        │

        ▼

03_Create_Groups_And_Assign_Users.ps1

        │

        ▼

RBAC Security Groups

        │

        ▼

04_Generate_AD_Audit_Report.ps1

        │

        ▼

Enterprise Audit Report

        │

        ▼

05_Terminate_Employee.ps1

        │

        ▼

Identity Lifecycle Management
```

---

# Organizational Unit Structure

```text
Corporate

│

├── Departments

│     ├── Executive
│     │      └── Users
│     │
│     ├── Informaton Technology
│     │      └── Users
│     │
│     ├── Finance
│     │      └── Users
│     │
│     ├── Human Resources
│     │      └── Users
│     │
│     ├── Marketing
│     │      └── Users
│     │
│     ├── Sales
│     │      └── Users
│     │
│     └── Operations
│            └── Users
│
├── Groups
│     ├── Security Groups
│     └── Distribution Groups
│
├── Disabled Accounts
│
├── Administrative Accounts
│
├── Service Accounts
│
└── Computers
```

---

# Security Group Architecture

```text
Executive Users
        │
        ▼
SG-Executive

IT Users
        │
        ▼
SG-IT

Finance Users
        │
        ▼
SG-Finance

Human Resources Users
        │
        ▼
SG-HR

Marketing Users
        │
        ▼
SG-Marketing

Sales Users
        │
        ▼
SG-Sales

Operations Users
        │
        ▼
SG-Operations
```

---

# PowerShell Automation Components

## Script 1

01_Create_Users.ps1

Responsibilities

- Read CSV
- Validate OU
- Create users
- Configure passwords
- Enable accounts
- Logging

---

## Script 2

02_Set_Managers.ps1

Responsibilities

- Read ManagerUsername
- Locate manager
- Configure reporting hierarchy
- Logging

---

## Script 3

03_Create_Groups_And_Assign_Users.ps1

Responsibilities

- Create Security Groups
- Assign group memberships
- RBAC implementation
- Logging

---

## Script 4

04_Generate_AD_Audit_Report.ps1

Responsibilities

- Query Active Directory
- Collect user information
- Export enterprise audit report
- CSV reporting

---

## Script 5

05_Terminate_Employee.ps1

Responsibilities

- Reset password
- Disable account
- Remove group memberships
- Move account
- Generate termination log

---

# Data Flow

CSV Data

↓

PowerShell

↓

Active Directory

↓

PowerShell Validation

↓

Audit Reports

↓

Administrative Review

---

# Security Model

Authentication

- Active Directory

Authorization

- Security Groups

Role Assignment

- Department-Based RBAC

Account Lifecycle

- Provisioning
- Modification
- Reporting
- Offboarding

---

# Automation Benefits

- Eliminates repetitive administration
- Standardizes account creation
- Improves consistency
- Reduces provisioning time
- Reduces human error
- Simplifies auditing
- Supports enterprise identity lifecycle management