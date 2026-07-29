# Project 09 – Hybrid Identity Planning & Architecture

## Overview

Project 09 expands the CyberLab Enterprise Infrastructure environment into Hybrid Identity by documenting the architecture, planning process, synchronization methods, and deployment considerations for integrating an on-premises Active Directory environment with Microsoft Entra ID.

Rather than immediately deploying synchronization, this project follows Microsoft's recommended planning workflow to evaluate synchronization technologies, authentication methods, infrastructure requirements, and deployment prerequisites before implementation.

This project demonstrates the planning and design responsibilities commonly performed by Identity & Access Management (IAM) engineers before deploying a hybrid identity solution in an enterprise environment.

---

## Project Objectives

- Document the existing on-premises Active Directory environment
- Review Microsoft Entra Cloud Sync
- Review Microsoft Entra Connect Sync
- Compare synchronization technologies
- Evaluate hybrid authentication methods
- Review synchronization planning tools
- Identify deployment prerequisites
- Document Microsoft's hybrid identity deployment workflow
- Select an appropriate synchronization strategy for the CyberLab environment

---

## Existing Environment

### On-Premises

- Windows Server 2022
- Active Directory Domain Services
- Domain Controller: `SFG-DC01`
- Domain: `corp.cyberlab.local`
- Enterprise Organizational Unit structure
- Role-Based Access Control
- Joiner–Mover–Leaver workflows
- AGDLP authorization

### Cloud

- Microsoft Entra ID
- Cloud users
- Security groups
- Administrative Units
- Enterprise Applications
- Authentication Methods
- User Administrator role

---

## Hybrid Identity Architecture

```text
Windows 11 Enterprise
        │
        ▼
corp.cyberlab.local
        │
        ▼
Active Directory Domain Services
        │
        ▼
Microsoft Entra Cloud Sync
        │
        ▼
Microsoft Entra ID
        │
        ▼
Enterprise Applications
```

---

## Synchronization Technologies Reviewed

### Microsoft Entra Cloud Sync

Cloud Sync is Microsoft's modern synchronization solution that uses a lightweight provisioning agent installed on an on-premises Windows Server.

Benefits include:

- Lightweight deployment
- Cloud-managed configuration
- Multiple forest support
- Simplified administration
- Reduced infrastructure requirements

---

### Microsoft Entra Connect Sync

Microsoft Entra Connect Sync is Microsoft's traditional synchronization solution.

Features include:

- Password Hash Synchronization
- Pass-through Authentication
- Federation support
- Enterprise synchronization capabilities
- Extensive synchronization customization

---

## Authentication Methods Reviewed

### Password Hash Synchronization (PHS)

Synchronizes password hashes from Active Directory to Microsoft Entra ID while maintaining a single user identity.

### Pass-through Authentication (PTA)

Validates passwords directly against on-premises Active Directory without storing password hashes in Microsoft Entra ID.

### Federation

Redirects authentication requests to an on-premises federation service such as Active Directory Federation Services (AD FS).

---

## Planning Activities Completed

- Reviewed Microsoft Entra Cloud Sync
- Reviewed Microsoft Entra Connect Sync
- Compared synchronization technologies
- Compared authentication methods
- Reviewed Cloud Sync provisioning agents
- Reviewed IdFix preparation
- Reviewed synchronization planning workflow
- Reviewed deployment decision process
- Evaluated business requirements
- Reviewed synchronization prerequisites
- Selected Cloud Sync as the preferred synchronization strategy for the CyberLab environment

---

## Synchronization Strategy

Based on the CyberLab architecture, Microsoft Entra Cloud Sync was selected as the preferred synchronization method because it aligns with Microsoft's current guidance and is appropriate for a single Active Directory forest and a small enterprise environment.

The synchronization implementation was intentionally deferred because the current Microsoft Entra tenant does not include all licensing required for a complete production-style deployment.

Documenting the planning process provides an accurate representation of enterprise identity design without misrepresenting implementation status.

---

## Skills Demonstrated

- Hybrid Identity planning
- Active Directory architecture
- Microsoft Entra ID
- Microsoft Entra Cloud Sync
- Microsoft Entra Connect
- Identity synchronization
- Authentication methods
- Password Hash Synchronization
- Pass-through Authentication
- Federation concepts
- Deployment planning
- Infrastructure assessment
- IAM architecture
- Enterprise documentation

---

## Outcome

This project establishes the Hybrid Identity design for CyberLab Enterprise Infrastructure and documents Microsoft's recommended planning workflow prior to deployment.

Future projects will expand upon this foundation with additional identity platforms, including Okta Identity Cloud, enterprise identity governance, and PowerShell-based identity automation.