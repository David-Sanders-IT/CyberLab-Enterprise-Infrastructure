# Architecture

## Overview

Project 10 implements centralized Windows administration using Group Policy within the CyberLab Enterprise Infrastructure environment.

The architecture separates computer configuration from user configuration by applying Group Policy Objects (GPOs) to the appropriate Organizational Units, following enterprise Active Directory design principles.

The environment demonstrates how enterprise administrators deploy, validate, and troubleshoot centralized policy management.

---

# Active Directory Structure

```text
corp.cyberlab.local
│
├── Corporate
│
├── Administrative Accounts
│
├── Computers
│   ├── Desktops
│   │   └── SFG-CL01
│   ├── Laptops
│   ├── Kiosks
│   └── Servers
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
├── Contractors
├── Groups
├── Disabled Accounts
└── Service Accounts
```

---

# Group Policy Design

```text
Corporate
│
├── Computers
│
│   Corporate Computer Security Baseline
│
└── Departments
```

---

# Security Baseline

The Corporate Computer Security Baseline provides centralized security controls including:

- Password Policy
- Account Lockout Policy
- Legal Logon Banner
- Machine Inactivity Timeout
- AutoPlay Disabled
- Microsoft Defender Configuration
- Windows Defender Firewall

---

# Validation Workflow

```text
Create GPO
        │
        ▼
Configure Policies
        │
        ▼
Link GPO
        │
        ▼
Move Computer Object
        │
        ▼
gpupdate /force
        │
        ▼
gpresult /r
        │
        ▼
Resultant Set of Policy
        │
        ▼
Functional Validation
```

---

# Technologies

- Active Directory Domain Services
- Group Policy Management
- Windows Server 2022
- Windows 11 Enterprise
- Windows Defender
- Windows Defender Firewall
- gpupdate
- gpresult
- Resultant Set of Policy (RSoP)