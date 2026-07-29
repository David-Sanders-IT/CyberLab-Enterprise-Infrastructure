# Project 10 – Enterprise Group Policy Administration

## Overview

Project 10 expands the CyberLab Enterprise Infrastructure environment by implementing centralized Windows administration using Group Policy.

The project demonstrates how enterprise administrators design, deploy, apply, validate, and troubleshoot Group Policy Objects (GPOs) to enforce organization-wide security standards and workstation configuration.

Rather than configuring isolated policies, this project builds a reusable enterprise Group Policy architecture that separates computer and user policies while following Active Directory best practices.

---

## Objectives

- Create enterprise Group Policy Objects
- Configure centralized security policies
- Separate computer and user configuration
- Deploy security baselines
- Link GPOs to appropriate Organizational Units
- Apply policies to a domain-joined Windows 11 workstation
- Validate policy deployment
- Troubleshoot Group Policy application

---

## Environment

### Domain

```
corp.cyberlab.local
```

### Domain Controller

```
SFG-DC01
```

### Client

```
SFG-CL01
```

### Platform

- Windows Server 2022
- Windows 11 Enterprise
- VMware Workstation Pro
- Active Directory Domain Services
- Group Policy Management Console

---

# Group Policy Objects Created

- Corporate Computer Security Baseline
- Corporate Workstation Policy
- Corporate Drive Mapping
- Corporate Windows Defender
- Corporate Windows Firewall

---

# Security Baseline

The Corporate Computer Security Baseline includes:

- Strong Password Policy
- Account Lockout Policy
- Legal Logon Banner
- Machine Inactivity Timeout
- AutoPlay Disabled
- Microsoft Defender configuration
- Windows Defender Firewall enabled

---

# Enterprise Design

Rather than linking security policies to the entire domain, computer security policies were linked to the Corporate → Computers Organizational Unit.

This approach allows future workstation types, servers, kiosks, and laptops to receive different policies while maintaining a centralized security baseline.

---

# Validation

Deployment was validated using:

- gpupdate /force
- gpresult /r
- Resultant Set of Policy (RSoP)
- Control Panel restriction testing

Successful validation confirmed that the deployed Group Policy Objects were applied to the Windows 11 Enterprise workstation.

---

# Skills Demonstrated

- Group Policy Management
- Active Directory Administration
- Windows Administration
- Enterprise Security Baselines
- Windows Defender
- Windows Firewall
- Organizational Unit Design
- Group Policy Linking
- Group Policy Validation
- gpupdate
- gpresult
- Resultant Set of Policy (RSoP)
- Enterprise Troubleshooting

---

# Outcome

This project demonstrates the complete enterprise Group Policy lifecycle:

```

Design

↓

Create

↓

Configure

↓

Deploy

↓

Apply

↓

Validate

↓

Troubleshoot

```

The completed implementation provides centralized management of Windows security settings while demonstrating practical enterprise administration techniques commonly used in production Active Directory environments.