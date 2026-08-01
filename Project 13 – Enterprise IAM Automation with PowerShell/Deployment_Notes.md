# Deployment_Notes

## Project

Project 13 – Enterprise IAM Automation with PowerShell

---

# Deployment Objective

The objective of this deployment was to automate enterprise Identity and Access Management (IAM) processes using Active Directory Domain Services (AD DS) and Windows PowerShell.

The solution provisions users from structured CSV data, builds organizational hierarchy, assigns role-based access control (RBAC), generates audit reports, and automates employee offboarding.

---

# Environment

## Virtualization Platform

VMware Workstation Pro

---

## Operating System

Windows Server 2022

---

## Domain

corp.cyberlab.local

---

## Primary Services

- Active Directory Domain Services
- DNS
- Organizational Units
- Security Groups
- Windows PowerShell

---

# Organizational Units

The following Organizational Units were deployed for identity management.

```text
Corporate

Departments

Executive

Informaton Technology

Finance

Human Resources

Marketing

Sales

Operations

Groups

Security Groups

Distribution Groups

Disabled Accounts

Administrative Accounts

Service Accounts

Computers
```

---

# Security Groups

The following security groups were deployed.

```text
SG-Executive

SG-IT

SG-Finance

SG-HR

SG-Marketing

SG-Sales

SG-Operations
```

---

# PowerShell Scripts

The following automation scripts were developed.

## 01_Create_Users.ps1

Purpose

Bulk provisions Active Directory users from a CSV file.

Functions

- Imports employee data
- Creates Active Directory users
- Configures passwords
- Enables accounts
- Logs provisioning results

---

## 02_Set_Managers.ps1

Purpose

Automatically configures manager relationships.

Functions

- Reads ManagerUsername
- Locates manager account
- Configures reporting hierarchy
- Logs results

---

## 03_Create_Groups_And_Assign_Users.ps1

Purpose

Implements department-based Role-Based Access Control.

Functions

- Creates security groups
- Assigns users
- Validates memberships
- Logs results

---

## 04_Generate_AD_Audit_Report.ps1

Purpose

Generates an enterprise identity audit report.

Functions

- Queries Active Directory
- Collects identity attributes
- Exports CSV report
- Supports administrative auditing

---

## 05_Terminate_Employee.ps1

Purpose

Automates employee offboarding.

Functions

- Resets password
- Disables account
- Removes security group memberships
- Moves account to Disabled Accounts OU
- Generates termination log

---

# Data Source

Employee identities were imported from:

```text
employees.csv
```

The CSV included:

- First Name
- Last Name
- Username
- User Principal Name
- Department
- Job Title
- Company
- Office
- Manager Username
- Security Group
- Organizational Unit
- Enabled Status

---

# Deployment Results

Successfully Provisioned

- 50 Active Directory users

Successfully Assigned

- 49 manager relationships

Successfully Created

- 7 departmental security groups

Successfully Assigned

- 50 RBAC memberships

Successfully Generated

- Enterprise Active Directory audit report

Successfully Automated

- Employee termination workflow

---

# Validation

Deployment validation confirmed:

✓ User provisioning

✓ Manager hierarchy

✓ Organizational Unit placement

✓ Security Group membership

✓ Audit reporting

✓ Automated employee offboarding

---

# Logging

The following logs were generated during deployment.

```text
01_Create_Users_Log.txt

02_Set_Managers_Log.txt

03_Create_Groups_And_Assign_Users_Log.txt

04_Generate_AD_Audit_Report_Log.txt

05_Terminate_Employee_Log.txt
```

---

# Deployment Outcome

The deployment successfully demonstrated enterprise-scale Active Directory automation using PowerShell.

Administrative tasks that would normally require extensive manual effort were automated into reusable scripts capable of provisioning identities, managing organizational hierarchy, implementing RBAC, generating audit reports, and automating employee lifecycle management.

The completed solution provides a repeatable framework for enterprise identity administration and serves as a foundation for future Microsoft Entra ID and Identity Governance automation.