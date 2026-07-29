# Project 08 – Okta Identity Cloud Administration

## Overview

This project demonstrates the deployment and administration of an enterprise Okta Identity Cloud environment. The implementation focused on identity lifecycle management, Role-Based Access Control (RBAC), enterprise application integration, authentication management, and centralized access administration.

A simulated enterprise environment named **CyberLab Corporation** was created to demonstrate how organizations manage users, groups, applications, and authentication policies through a modern Identity Provider (IdP). Both commercial SaaS applications and internally developed business applications were integrated into Okta to simulate a real enterprise identity ecosystem.

---

# Objectives

- Deploy an Okta Identity Cloud tenant
- Configure an enterprise identity directory
- Create enterprise users and departmental groups
- Implement Role-Based Access Control (RBAC)
- Integrate enterprise SaaS applications
- Create internal business applications
- Configure authentication methods
- Demonstrate enterprise application assignments
- Document enterprise IAM administration

---

# Environment

## Identity Platform

- Okta Integrator Free Plan
- Okta Identity Cloud
- Microsoft Entra ID
- Windows Server Active Directory (existing CyberLab environment)

## Enterprise Infrastructure

- VMware Workstation
- Windows Server 2022
- Windows 11 Enterprise
- Microsoft Entra ID
- Active Directory Domain Services
- Group Policy
- DNS
- DHCP

---

# Enterprise Organization

CyberLab Corporation

Departments

- Executive
- Information Technology
- Human Resources
- Finance
- Sales

---

# Identity Architecture

```text
Windows Server Active Directory
            │
            ▼
Microsoft Entra ID
            │
            ▼
Okta Identity Cloud
            │
            ▼
Enterprise Applications
```

---

# Enterprise Users

An enterprise directory was created containing multiple users representing different business departments.

Departments included:

- Executive
- Information Technology
- Human Resources
- Finance
- Sales

Users were organized using departmental security groups to support centralized access management.

---

# Enterprise Groups

The following security groups were created:

- Everyone
- Executives
- IT-Admins
- HR
- Finance
- Sales

Each group represents a department within CyberLab Corporation and is used to manage application access through RBAC.

---

# Enterprise Applications

## SaaS Applications

- Microsoft 365
- Slack
- GitHub Enterprise Cloud
- Zoom SWA
- Atlassian Jira Cloud

## Internal Applications

- CyberLab Intranet
- CyberLab HR Portal
- CyberLab Finance Portal
- CyberLab CRM

---

# Role-Based Access Control (RBAC)

Applications were assigned to departmental groups instead of individual users.

Examples include:

| Group | Applications |
|--------|--------------|
| Everyone | Microsoft 365, Slack, Zoom, CyberLab Intranet |
| IT-Admins | GitHub Enterprise Cloud, Atlassian Jira Cloud |
| HR | CyberLab HR Portal |
| Finance | CyberLab Finance Portal |
| Sales | CyberLab CRM |

This configuration demonstrates centralized permission management using least-privilege principles.

---

# Authentication

Authentication was configured using Okta Authenticators including:

- Password
- Email
- Okta Verify

Authentication policies and global session settings were reviewed to demonstrate enterprise authentication management.

---

# Skills Demonstrated

- Identity and Access Management (IAM)
- Okta Identity Cloud Administration
- Enterprise User Provisioning
- Role-Based Access Control (RBAC)
- Security Group Administration
- SaaS Application Integration
- Internal Application Integration
- Authentication Policy Administration
- Enterprise Identity Architecture
- Least Privilege Access Control
- Centralized Access Management

---

# Project Outcome

This project successfully demonstrates enterprise identity administration using Okta Identity Cloud. An enterprise directory was created with departmental users and security groups, commercial SaaS applications were integrated, internal business applications were configured, and application access was managed using group-based assignments following Role-Based Access Control (RBAC) principles.

The completed environment reflects common enterprise IAM practices and integrates with the broader CyberLab infrastructure, which includes Active Directory, Microsoft Entra ID, Hybrid Identity, and Group Policy.