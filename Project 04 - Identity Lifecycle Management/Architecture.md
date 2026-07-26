# Architecture

## Project

Project 04 – Identity Lifecycle Management

---

# Overview

This project demonstrates a standardized Identity and Access Management (IAM) architecture using Microsoft Active Directory Domain Services.

The environment simulates how enterprise organizations manage employee identities throughout the Joiner, Mover, and Leaver (JML) lifecycle while maintaining Role-Based Access Control (RBAC) and the Principle of Least Privilege.

Identity changes are driven by approved business requests and implemented through Active Directory administrative processes.

---

# Environment Architecture

```text
                    Business Request
                           │
                           ▼
                  Identity & Access Team
                           │
                           ▼
             Active Directory Users & Computers
                           │
                           ▼
                Active Directory Domain Services
                           │
                           ▼
                User Identity Administration
                           │
        ┌──────────────────┼──────────────────┐
        │                  │                  │
        ▼                  ▼                  ▼
 Identity Attributes   Organizational Unit   Security Groups
        │                  │                  │
        └──────────────────┼──────────────────┘
                           ▼
                 Enterprise Identity Record
```

---

# Infrastructure

| Component | Purpose |
|-----------|---------|
| Windows Server 2022 | Domain Controller |
| Active Directory Domain Services | Identity Directory |
| DNS | Directory Name Resolution |
| VMware Workstation Pro | Virtual Infrastructure |
| Active Directory Users and Computers | Identity Administration |

---

# Domain Architecture

```text
corp.cyberlab.local
│
├── Corporate
│
├── Administrative Accounts
│
├── Departments
│   ├── Executive
│   ├── Finance
│   ├── Human Resources
│   ├── Information Technology
│   ├── Marketing
│   ├── Operations
│   └── Sales
│
├── Groups
│   ├── Security Groups
│   └── Distribution Groups
│
├── Computers
│
├── Contractors
│
├── Service Accounts
│
└── Disabled Accounts
```

---

# Identity Lifecycle Architecture

The project follows the standard Joiner–Mover–Leaver lifecycle.

```text
New Employee
      │
      ▼
Create Identity
      │
      ▼
Populate Business Attributes
      │
      ▼
Assign Security Groups
      │
      ▼
Validate Identity
      │
      ▼
Employee Active
      │
      ▼
Department Transfer
      │
      ▼
Update Identity
      │
      ▼
Modify Group Membership
      │
      ▼
Validate Access
      │
      ▼
Employee Termination
      │
      ▼
Disable Account
      │
      ▼
Remove Department Access
      │
      ▼
Move to Disabled Accounts OU
      │
      ▼
Retain for Audit
```

---

# Identity Model

Each employee identity contains business information used to support authorization decisions.

Identity Attributes

- Display Name
- Username
- Department
- Job Title
- Company
- Manager
- Organizational Unit
- Security Group Membership
- Account Status

Maintaining accurate identity information supports identity governance, reporting, automation, and access reviews.

---

# Access Model

The environment uses Role-Based Access Control (RBAC).

```text
Business Role
        │
        ▼
Security Group
        │
        ▼
Resource Access
```

Example

```text
Maria Lopez
      │
      ▼
Operations_Users
      │
      ▼
Operations Resources
```

Permissions are assigned to security groups rather than directly to user accounts.

This simplifies administration and improves scalability.

---

# Joiner Architecture

```text
HR Request
      │
      ▼
Manager Approval
      │
      ▼
Create Active Directory User
      │
      ▼
Populate Identity Attributes
      │
      ▼
Assign Department Security Group
      │
      ▼
Validate Identity
      │
      ▼
Close Ticket
```

---

# Mover Architecture

```text
Department Transfer Request
          │
          ▼
Manager Approval
          │
          ▼
Update Identity Attributes
          │
          ▼
Move User Object
          │
          ▼
Remove Previous Access
          │
          ▼
Assign New Access
          │
          ▼
Validate Changes
          │
          ▼
Close Ticket
```

---

# Leaver Architecture

```text
Termination Request
        │
        ▼
HR Approval
        │
        ▼
Disable Account
        │
        ▼
Remove Department Access
        │
        ▼
Move Account to Disabled Accounts
        │
        ▼
Retain Identity
        │
        ▼
Close Ticket
```

---

# Security Controls

The following security controls were implemented throughout the project:

- Identity Lifecycle Management (JML)
- Role-Based Access Control (RBAC)
- Principle of Least Privilege
- Manager Approval
- Security Group Administration
- Organizational Unit Separation
- Controlled Access Modification
- Account Retention
- Identity Validation
- Audit Readiness

---

# Administrative Workflow

Every identity change followed a standardized workflow.

```text
Business Request
        │
        ▼
Approval
        │
        ▼
IAM Administration
        │
        ▼
Validation
        │
        ▼
Documentation
        │
        ▼
Ticket Closure
```

This process ensures identity changes are authorized, validated, and documented before completion.

---

# Outcome

The architecture implemented in this project demonstrates a practical enterprise Identity and Access Management environment using Microsoft Active Directory.

By combining structured Organizational Units, business identity attributes, security groups, and standardized Joiner–Mover–Leaver workflows, the environment provides a secure and scalable foundation for user lifecycle management.

This architecture also establishes the baseline for future projects involving file services, PowerShell automation, Microsoft Entra ID, Okta, identity governance, and access reviews.