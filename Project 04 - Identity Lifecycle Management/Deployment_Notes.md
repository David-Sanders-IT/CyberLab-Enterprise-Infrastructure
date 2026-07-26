# Deployment Notes

## Project

Project 04 – Identity Lifecycle Management

---

# Purpose

The purpose of this project was to simulate the complete identity lifecycle of an employee within an enterprise Active Directory environment.

The project demonstrates standard Joiner, Mover, and Leaver (JML) workflows commonly performed by Identity and Access Management (IAM) teams.

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Operating System | Windows Server 2022 |
| Platform | VMware Workstation Pro |
| Domain Controller | SF-DC01 |
| Active Directory Domain | corp.cyberlab.local |
| Organizational Structure | Enterprise Departmental OU Design |

---

# Initial Environment

Prior to beginning this project, the environment already contained:

- Active Directory Domain Services
- DNS
- Enterprise Organizational Unit structure
- Departmental Users Organizational Units
- Departmental Security Groups
- Administrative Accounts
- Disabled Accounts Organizational Unit

The environment was verified before beginning identity lifecycle operations.

---

# Joiner Workflow

## Ticket

IAM-001

### Employee

Maria Lopez

### Department

Finance

### Job Title

Financial Analyst

### Manager

Olivia Brown

---

## Actions Performed

- Created new Active Directory user account
- Assigned username
- Configured temporary password
- Required password change at first logon
- Populated business identity attributes
- Assigned Finance security group
- Verified successful provisioning

---

## Validation

Validated:

- Account enabled
- Correct Organizational Unit
- Correct manager
- Correct department
- Correct company
- Correct title
- Correct security group

---

# Mover Workflow

## Ticket

IAM-002

### Employee

Maria Lopez

### Previous Department

Finance

### New Department

Operations

### New Manager

Daniel Garcia

---

## Actions Performed

- Updated department
- Updated manager
- Updated job title
- Removed Finance security group
- Added Operations security group
- Moved user object to Operations Organizational Unit

---

## Validation

Verified:

- Updated Organizational Unit
- Updated manager
- Updated department
- Updated title
- Finance access removed
- Operations access assigned

---

# Leaver Workflow

## Ticket

IAM-003

### Employee

Maria Lopez

### Status

Employment Terminated

---

## Actions Performed

- Disabled Active Directory account
- Removed Operations security group
- Verified removal of department access
- Moved account into Disabled Accounts Organizational Unit
- Retained account for audit and recovery purposes

---

## Validation

Verified:

- Account disabled
- Department access removed
- Account retained
- Correct Organizational Unit
- Identity preserved for future auditing

---

# Identity Lifecycle Summary

## Joiner

Provisioned a new employee identity and assigned access based on business role.

---

## Mover

Modified identity attributes and updated access following a departmental transfer.

---

## Leaver

Disabled the identity, removed department-specific access, and preserved the account according to enterprise retention practices.

---

# Security Principles Demonstrated

- Principle of Least Privilege
- Role-Based Access Control (RBAC)
- Identity Lifecycle Management
- Access Provisioning
- Access Deprovisioning
- Organizational Unit Administration
- Security Group Administration

---

# Project Outcome

Successfully completed a full Joiner, Mover, and Leaver identity lifecycle using Active Directory Domain Services.

The project demonstrates practical Identity and Access Management workflows that closely resemble enterprise user administration processes.