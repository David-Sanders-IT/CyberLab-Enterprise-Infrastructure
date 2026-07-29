# Architecture

## Enterprise Identity Architecture

This project implements a centralized Identity and Access Management (IAM) platform using Okta Identity Cloud. Okta serves as the enterprise Identity Provider (IdP) responsible for user authentication, application access, and centralized identity administration.

The environment extends the existing CyberLab infrastructure by integrating Active Directory concepts, Microsoft Entra ID, and enterprise SaaS applications into a unified identity ecosystem.

---

## Architecture Diagram

```
                    Internet
                        │
                        ▼
             Okta Identity Cloud
                        │
        ┌───────────────┼────────────────┐
        │               │                │
        ▼               ▼                ▼
 Microsoft 365      Slack         GitHub Enterprise
        │
        ▼
 Atlassian Jira Cloud

        │
        ▼
 Internal Enterprise Applications

 • CyberLab Intranet
 • HR Portal
 • Finance Portal
 • CRM
```

---

## Enterprise Identity Components

### Identity Provider

- Okta Identity Cloud

### Existing Infrastructure

- Windows Server Active Directory
- Microsoft Entra ID
- Hybrid Identity
- Group Policy

### Enterprise Directory

- Executive
- IT
- HR
- Finance
- Sales

### Enterprise Applications

Commercial SaaS

- Microsoft 365
- Slack
- GitHub Enterprise Cloud
- Zoom SWA
- Atlassian Jira Cloud

Internal Applications

- CyberLab Intranet
- CyberLab HR Portal
- CyberLab Finance Portal
- CyberLab CRM

---

## Authentication

Authentication methods included:

- Password
- Email
- Okta Verify

---

## Authorization

Access is managed using Role-Based Access Control (RBAC).

Users receive application access through departmental security groups rather than individual permissions.

---

## Security Model

The environment follows least privilege principles.

Users receive only the applications required for their department.

Example:

IT
- GitHub
- Jira

HR
- HR Portal

Finance
- Finance Portal

Sales
- CRM

Everyone
- Microsoft 365
- Slack
- Zoom
- Intranet