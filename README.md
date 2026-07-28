# CyberLab Enterprise Infrastructure
 
> **Enterprise Windows Server, Active Directory, Identity & Access Management, and Authorization Portfolio**
 
![Windows Server](https://img.shields.io/badge/Windows_Server-2022-0078D4)
![Active Directory](https://img.shields.io/badge/Active_Directory-Enterprise-0078D4)
![IAM](https://img.shields.io/badge/Identity_%26_Access_Management-Portfolio-2E8B57)
![Security](https://img.shields.io/badge/Security%2B-Certified-red)
![Linux](https://img.shields.io/badge/LPI_Linux_Essentials-Certified-FCC624)
![Status](https://img.shields.io/badge/Status-Active_Development-orange)
 
---
 
## Overview
 
CyberLab Enterprise Infrastructure is a hands-on technical portfolio designed to simulate the responsibilities of an Identity and Access Management professional, Windows Systems Administrator, and enterprise infrastructure engineer.
 
The environment documents the design, deployment, administration, security, and troubleshooting of a Microsoft Active Directory domain.
 
The projects progress from basic server deployment into enterprise identity administration, Joiner–Mover–Leaver operations, Role-Based Access Control, AGDLP authorization, SMB file sharing, NTFS permission management, and domain-joined Windows client validation.
 
This repository is designed to demonstrate practical skills through:
 
- Enterprise architecture documentation
- Deployment notes
- Troubleshooting records
- Security-control explanations
- Validation checklists
- Technical screenshots
- Lessons learned
- Future improvement planning
- Ticket-based IAM workflows
---
 
## Current Progress
 
| Status | Project |
|---|---|
| ✅ | Project 01 – Windows Server Foundation |
| ✅ | Project 02 – Active Directory Services |
| ✅ | Project 03 – Active Directory Identity Administration |
| ✅ | Project 04 – Identity Lifecycle Management |
| ✅ | Project 05 – Identity-Based Resource Access |
| ✅ | Project 06 – Windows 11 Enterprise Client |
| ⏳ | Project 07 – Microsoft Entra ID |
| ⏳ | Project 08 – Group Policy Administration |
| ⏳ | Project 09 – DNS Administration |
| ⏳ | Project 10 – DHCP Administration |
| ⏳ | Project 11 – PowerShell IAM Administration |
| ⏳ | Project 12 – Identity Governance |
| ⏳ | Project 13 – Conditional Access |
| ⏳ | Project 14 – IAM Automation |
| ⏳ | Project 15 – Enterprise IT Operations & IAM Support |
 
---
 
# Completed Projects
 
Established the Windows Server foundation for the CyberLab environment.
 
### Work Completed
 
- Deployed Windows Server 2022 in VMware Workstation Pro
- Installed VMware Tools
- Renamed the server to `SFG-DC01`
- Configured a static IPv4 address
- Configured VMware NAT networking
- Applied Windows updates
- Verified internet and DNS connectivity
- Diagnosed and corrected a subnet mismatch
- Documented deployment and troubleshooting procedures
### Key Skills
 
- Windows Server administration
- IPv4 configuration
- VMware networking
- Static addressing
- NAT
- DNS troubleshooting
- Technical documentation
---
 
## Project 02 – Active Directory Services
 
[View Project 02](Project%2002%20-%20Active%20Directory%20Services/README.md)
 
Transformed the Windows Server into the first Domain Controller for the CyberLab enterprise environment.
 
### Work Completed
 
- Installed Active Directory Domain Services
- Created the `corp.cyberlab.local` forest
- Promoted `SFG-DC01` to a Domain Controller
- Installed Active Directory-integrated DNS
- Enabled the Global Catalog
- Configured Directory Services Restore Mode
- Installed Active Directory administration tools
- Verified domain and DNS functionality
### Environment
 
| Component | Configuration |
|---|---|
| Domain Controller | `SFG-DC01` |
| Forest | `corp.cyberlab.local` |
| Domain | `corp.cyberlab.local` |
| NetBIOS Name | `CORP` |
| DNS Server | Enabled |
| Global Catalog | Enabled |
 
### Key Skills
 
- Active Directory Domain Services
- Domain Controller deployment
- Forest and domain creation
- DNS integration
- Server roles
- Enterprise authentication
---
 
## Project 03 – Active Directory Identity Administration
 
[View Project 03](Project%2003%20-%20Active%20Directory%20Identity%20Administration/README.md)
 
Established the identity-administration structure for the enterprise domain.
 
### Work Completed
 
- Designed a scalable Organizational Unit structure
- Created departmental user accounts
- Created department and role-based security groups
- Implemented Role-Based Access Control
- Created separate standard and privileged accounts
- Assigned administrative group membership
- Organized users, groups, computers, contractors, service accounts, and disabled identities
### Identity Structure
 
```text
corp.cyberlab.local
└── Corporate
    ├── Administrative Accounts
    ├── Computers
    ├── Contractors
    ├── Departments
    │   ├── Executive
    │   ├── Finance
    │   ├── Human Resources
    │   ├── Information Technology
    │   ├── Marketing
    │   ├── Operations
    │   └── Sales
    ├── Disabled Accounts
    ├── Groups
    │   ├── Distribution Groups
    │   └── Security Groups
    └── Service Accounts
```
 
### Key Skills
 
- Active Directory Users and Computers
- Organizational Unit design
- User provisioning
- Security-group administration
- Role-Based Access Control
- Privileged-account separation
- Principle of Least Privilege
---
 
## Project 04 – Identity Lifecycle Management
 
[View Project 04](Project%2004%20-%20Identity%20Lifecycle%20Management/README.md)
 
Implemented a complete enterprise Joiner–Mover–Leaver identity lifecycle using ticket-based IAM workflows.
 
### Joiner
 
- Reviewed an approved onboarding request
- Created a new employee identity
- Configured a temporary password
- Required a password change at first sign-in
- Populated title, department, company, and manager attributes
- Assigned role-based department access
- Validated the completed identity
### Mover
 
- Processed an approved department transfer
- Updated job title, department, and manager
- Moved the identity to the new department OU
- Removed access associated with the previous role
- Assigned access associated with the new role
- Documented before-and-after group membership
### Leaver
 
- Disabled the terminated employee account
- Removed department-specific access
- Confirmed that no privileged access remained
- Moved the identity to the Disabled Accounts OU
- Retained the identity for audit and retention purposes
### IAM Workflow
 
```text
Business Request
       ↓
Approval
       ↓
Identity Provisioning or Modification
       ↓
Role-Based Access Assignment
       ↓
Validation
       ↓
Documentation
       ↓
Ticket Closure
```
 
### Key Skills
 
- Joiner–Mover–Leaver
- Identity provisioning
- Identity modification
- Identity deprovisioning
- Access provisioning
- Access revocation
- Role-Based Access Control
- Least privilege
- IAM ticket processing
- Audit-ready documentation
---
 
## Project 05 – Identity-Based Resource Access
 
[View Project 05](Project%2005%20-%20Identity-Based%20Resource%20Access/README.md)
 
Connected Active Directory identities to departmental business resources using SMB shares, NTFS permissions, security groups, and the AGDLP authorization model.
 
### Business Resources
 
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
 
### AGDLP Authorization Model
 
```text
Accounts
   ↓
Global Groups
   ↓
Domain Local Groups
   ↓
Permissions
```
 
Finance example:
 
```text
Finance Employee
       ↓
Finance_Users
       ↓
DL_Finance_Modify
       ↓
Finance Share and NTFS Permissions
       ↓
Finance Business Resource
```
 
### Work Completed
 
- Verified Windows File Services
- Created enterprise departmental folders
- Published departmental SMB shares
- Created Domain Local permission groups
- Nested Global role groups into Domain Local permission groups
- Removed broad default access
- Disabled NTFS inheritance where appropriate
- Configured explicit NTFS access-control lists
- Implemented read-only Public access
- Documented Share and NTFS permission models
### Permission Groups
 
```text
DL_Executive_Modify
DL_Finance_Modify
DL_HR_Modify
DL_IT_Modify
DL_Marketing_Modify
DL_Operations_Modify
DL_Sales_Modify
DL_Public_Read
```
 
### Key Skills
 
- AGDLP
- SMB file sharing
- NTFS permissions
- Share permissions
- Access-control lists
- Permission inheritance
- Identity-based authorization
- Group nesting
- Role-Based Access Control
- Principle of Least Privilege
---
 
## Project 06 – Windows 11 Enterprise Client
 
[View Project 06](Project%2006%20-%20Windows%2011%20Enterprise%20Client/README.md)
 
Deployed a Windows 11 Enterprise client and joined it to the `corp.cyberlab.local` domain to validate the identity and authorization work completed in Projects 03–05 from an end-user perspective.
 
### Work Completed
 
- Deployed a Windows 11 Enterprise workstation in VMware Workstation Pro
- Joined the workstation to the `corp.cyberlab.local` domain
- Signed in with domain identities to validate authentication
- Tested authorized department-share access against AGDLP permission groups
- Tested unauthorized access scenarios and confirmed expected Access Denied results
- Validated read-only Public share access
- Validated identity lifecycle changes (Joiner–Mover–Leaver) from the end-user perspective
- Documented end-to-end validation of the server-side authorization model
### Validation Summary
 
```text
Domain-Joined Client
       ↓
Identity Authentication
       ↓
Group Membership Evaluation
       ↓
Share and NTFS Permission Enforcement
       ↓
Authorized Access / Access Denied
```
 
### Key Skills
 
- Windows 11 Enterprise deployment
- Domain join and client administration
- End-user authentication validation
- Access-control validation
- Access Denied troubleshooting
- Identity lifecycle validation
- End-to-end IAM testing
> **Validation status:** Complete. The authorization model designed in Project 05 has been validated end-to-end from a domain-joined Windows 11 client.
 
---
 
# Enterprise Architecture Progression
 
```text
Windows Server Deployment
          ↓
Active Directory Domain Services
          ↓
Enterprise OU and Identity Design
          ↓
Joiner–Mover–Leaver Operations
          ↓
Role-Based Access Control
          ↓
AGDLP Authorization
          ↓
SMB and NTFS Resource Access
          ↓
Windows Client Validation
          ↓
Microsoft Entra ID and Hybrid Identity
          ↓
Group Policy and Centralized Management
          ↓
PowerShell Automation
          ↓
Okta
          ↓
Identity Governance
```
 
---
 
# Enterprise Technologies
 
## Current
 
- Windows Server 2022
- Active Directory Domain Services
- Active Directory Users and Computers
- Active Directory-integrated DNS
- Server Manager
- SMB File Sharing
- NTFS
- Windows 11 Enterprise
- VMware Workstation Pro
- Windows PowerShell fundamentals
- Git and GitHub
## Planned
 
- Microsoft Entra ID
- Microsoft Graph
- Group Policy Management
- DNS Administration
- DHCP
- PowerShell IAM automation
- Okta
- Conditional Access
- Identity Governance
- Access Reviews
- REST APIs
- Python automation
---
 
# Skills Demonstrated
 
## Identity and Access Management
 
- Identity administration
- Joiner–Mover–Leaver operations
- User provisioning and deprovisioning
- Identity-attribute management
- Security-group administration
- Role-Based Access Control
- AGDLP
- Access provisioning
- Access revocation
- Least-privilege enforcement
- Privileged-account separation
- Disabled-account retention
- Ticket-based IAM workflows
- End-to-end access validation
## Windows Server & Client Administration
 
- Windows Server deployment
- Domain Controller deployment
- Active Directory Domain Services
- Active Directory Users and Computers
- Server role administration
- SMB file sharing
- NTFS permission management
- Share permission management
- Access-control list administration
- Windows 11 Enterprise deployment
- Domain-joined client administration
## Networking
 
- IPv4
- Static addressing
- DNS
- NAT
- VMware virtual networking
- Gateway configuration
- Connectivity troubleshooting
- Name-resolution troubleshooting
## Security
 
- Principle of Least Privilege
- Role-Based Access Control
- Enterprise authentication
- Authorization
- Privileged administration
- Account disablement
- Access removal
- Group-based resource protection
- Permission-inheritance management
- Access Denied validation
- Audit-ready technical documentation
## Documentation
 
- Architecture documentation
- Deployment notes
- Troubleshooting logs
- Technical workflows
- Service-ticket simulations
- Screenshot evidence
- Validation checklists
- Lessons learned
- Future improvement plans
- Project timelines
---
 
# Certifications Supporting This Portfolio
 
- CompTIA A+
- CompTIA Network+
- CompTIA Security+
- AWS Certified Cloud Practitioner
- ITIL 4 Foundation
- LPI Linux Essentials
---
 
# Repository Structure
 
```text
CyberLab-Enterprise-Infrastructure/
├── README.md
├── LICENSE
├── CHANGELOG.md
├── ROADMAP.md
├── assets/
├── docs/
│
├── Project 01 - Windows Server Foundation/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
│
├── Project 02 - Active Directory Services/
│   ├── README.md
│   └── ...
│
├── Project 03 - Active Directory Identity Administration/
│   ├── README.md
│   └── ...
│
├── Project 04 - Identity Lifecycle Management/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Joiner_Workflow.md
│   ├── Mover_Workflow.md
│   ├── Leaver_Workflow.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   ├── IAM_Tickets/
│   └── Screenshots/
│
├── Project 05 - Identity-Based Resource Access/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── RBAC_Design.md
│   ├── NTFS_Permissions.md
│   ├── Share_Permissions.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
│
└── Project 06 - Windows 11 Enterprise Client/
    ├── README.md
    ├── Architecture.md
    ├── Deployment_Notes.md
    ├── Domain_Join_Workflow.md
    ├── Access_Validation.md
    ├── Access_Denied_Testing.md
    ├── Troubleshooting_Log.md
    ├── Skills_Demonstrated.md
    ├── Lessons_Learned.md
    ├── Future_Improvements.md
    ├── Project_Timeline.md
    └── Screenshots/
```
 
---
 
# Current Focus
 
The current focus is expanding the environment into Microsoft Entra ID and cloud identity, followed by centralized Windows management and core network services.
 
Planned next steps include:
 
- Configure Microsoft Entra ID and connect the on-premises domain
- Explore hybrid identity concepts and initial cloud identity synchronization
- Configure Group Policy for centralized administration
- Map department drives based on security-group membership via Group Policy
- Deploy and configure DNS administration workflows
- Deploy and configure DHCP for dynamic addressing
- Begin PowerShell IAM automation
---
 
# Roadmap
 
| Project | Focus |
|---|---|
| Project 07 | Microsoft Entra ID |
| Project 08 | Group Policy Administration |
| Project 09 | DNS Administration |
| Project 10 | DHCP Administration |
| Project 11 | PowerShell IAM Administration |
| Project 12 | Identity Governance |
| Project 13 | Conditional Access |
| Project 14 | IAM Automation |
| Project 15 | Enterprise IT Operations & IAM Support |
 
See the complete [project roadmap](ROADMAP.md).
 
---
 
# Long-Term Goal
 
The goal of CyberLab is to demonstrate the practical abilities expected of an Identity and Access Management professional and Windows infrastructure administrator.
 
The completed environment will include:
 
- On-premises Active Directory
- Identity lifecycle management
- Role-Based Access Control
- Group-based authorization
- SMB and NTFS resource security
- Windows client administration
- Group Policy
- DNS and DHCP
- PowerShell automation
- Microsoft Entra ID
- Okta
- Hybrid identity concepts
- Conditional Access
- Identity Governance
- Access Reviews
- IAM ticket operations
- Enterprise technical documentation
---
 
# Career Focus
 
My primary career focus is Identity and Access Management.
 
This portfolio is being developed to demonstrate practical experience with:
 
- Active Directory
- Identity lifecycle operations
- User provisioning and deprovisioning
- Role-Based Access Control
- Access provisioning
- Privileged identity administration
- Microsoft Entra ID
- Okta
- PowerShell
- Python and API automation
- Conditional Access
- Identity Governance
---
 
# Author
 
**David Sanders**
 
IT and cybersecurity professional focused on Identity and Access Management, Active Directory, Windows Server, authorization, cloud identity, and security automation.
 
[View GitHub Profile](https://github.com/David-Sanders-IT)
 
---
 
## License
 
This repository is licensed under the [MIT License](LICENSE).
