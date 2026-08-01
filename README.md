# CyberLab Enterprise Infrastructure
 
> **Enterprise Windows Server, Active Directory, Microsoft Entra ID, Okta Identity Cloud, Identity & Access Management, and Enterprise Infrastructure Portfolio**
 
![Windows Server](https://img.shields.io/badge/Windows_Server-2022-0078D4)
![Active Directory](https://img.shields.io/badge/Active_Directory-Enterprise-0078D4)
![IAM](https://img.shields.io/badge/Identity_%26_Access_Management-Portfolio-2E8B57)
![Security](https://img.shields.io/badge/Security%2B-Certified-red)
![Linux](https://img.shields.io/badge/LPI_Linux_Essentials-Certified-FCC624)
![Projects](https://img.shields.io/badge/Projects-12%20Completed-success)
 ## Environment Status

✅ 12 Enterprise Infrastructure Projects Completed

### Infrastructure

🖥️ Windows Server 2022

🏢 Active Directory Domain Services

💻 Windows 11 Enterprise

### Identity Platforms

☁️ Microsoft Entra ID

🔐 Okta Identity Cloud

🔑 Identity & Access Management

➡️ Next: PowerShell IAM Administration
---
 
## Overview
 
CyberLab Enterprise Infrastructure is a hands-on technical portfolio designed to simulate the responsibilities of an Identity and Access Management professional, Windows Systems Administrator, and enterprise infrastructure engineer.
 
The environment documents the design, deployment, administration, security, and troubleshooting of a Microsoft Active Directory domain.
 
The projects progress from foundational Windows Server deployment through enterprise identity administration, Joiner–Mover–Leaver operations, Role-Based Access Control (RBAC), AGDLP authorization, Windows 11 client validation, Microsoft Entra ID, Hybrid Identity planning, Okta Identity Cloud, Enterprise Group Policy administration, and Enterprise DNS Administration.
 
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
| ✅ | Project 07 – Microsoft Entra ID Identity Administration |
| ✅ | Project 08 – Okta Identity Cloud Administration |
| ✅ | Project 09 – Hybrid Identity Planning & Architecture |
| ✅ | Project 10 – Enterprise Group Policy Administration |
| ✅ | Project 11 – Enterprise DNS Administration |
| ✅ | Project 12 – Enterprise DHCP Administration |
| ⏳ | Project 13 – PowerShell IAM Administration |
| ⏳ | Project 14 – Identity Governance & Conditional Access |
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

## Project 07 – Microsoft Entra ID Identity Administration

[View Project 07](Project%2007%20-%20Microsoft%20Entra%20ID/README.md)

Extended the CyberLab Enterprise Infrastructure environment into cloud identity administration using Microsoft Entra ID.

### Work Completed

- Deployed Microsoft Entra ID tenant
- Created enterprise cloud users
- Created security groups
- Implemented Role-Based Access Control (RBAC)
- Assigned built-in administrative roles
- Created Administrative Units
- Configured authentication methods
- Added GitHub Enterprise Cloud application
- Assigned enterprise users to SaaS applications
- Reviewed Single Sign-On (SSO)
- Reviewed SAML configuration
- Reviewed Identity Secure Score
- Documented Microsoft Entra identity administration

### Identity Architecture

```text
Enterprise Users
        ↓
Security Groups
        ↓
Administrative Roles
        ↓
Authentication Methods
        ↓
Enterprise Applications
        ↓
Single Sign-On
```

### Key Skills

- Microsoft Entra ID
- Cloud Identity Administration
- RBAC
- Administrative Units
- Authentication Methods
- Enterprise Applications
- Single Sign-On
- SAML
- SaaS Identity Management

## Project 08 – Okta Identity Cloud Administration

[View Project 08](Project%2008%20-%20Okta%20Identity%20Cloud/README.md)

Implemented an enterprise Identity and Access Management (IAM) environment using Okta Identity Cloud.

### Work Completed

- Deployed an Okta Identity Cloud tenant
- Created enterprise users and departmental groups
- Implemented Role-Based Access Control (RBAC)
- Configured enterprise authentication methods
- Integrated Microsoft 365
- Integrated Slack
- Integrated GitHub Enterprise Cloud
- Integrated Zoom
- Integrated Atlassian Jira Cloud
- Created internal enterprise applications
- Assigned applications through security groups
- Reviewed authentication and session policies
- Documented enterprise IAM administration

### Identity Architecture

```text
Enterprise Users
        ↓
Department Groups
        ↓
Role-Based Access Control
        ↓
Okta Identity Cloud
        ↓
Enterprise Applications
```

### Key Skills

- Okta Identity Cloud
- Identity Provider (IdP)
- Role-Based Access Control
- Enterprise Application Integration
- SaaS Identity Management
- Authentication Policies
- Enterprise Authentication
- MFA Administration
- Group-Based Application Assignment

## Project 09 – Hybrid Identity Planning & Architecture

[View Project 09](Project%2009%20-%20Hybrid%20Identity%20Planning%20%26%20Architecture/README.md)

Designed and documented a hybrid identity architecture integrating on-premises Active Directory with Microsoft Entra ID using Microsoft's recommended planning methodology.

### Work Completed

- Reviewed Microsoft Entra Cloud Sync
- Reviewed Microsoft Entra Connect Sync
- Compared synchronization technologies
- Compared authentication methods
- Evaluated deployment requirements
- Reviewed Cloud Sync agents
- Reviewed IdFix
- Selected Cloud Sync architecture
- Documented synchronization planning
- Documented deployment prerequisites

### Key Skills

- Hybrid Identity
- Microsoft Entra Cloud Sync
- Microsoft Entra Connect
- Password Hash Synchronization
- Pass-through Authentication
- Federation concepts
- Identity synchronization
- Enterprise architecture

## Project 10 – Enterprise Group Policy Administration

[View Project 10](Project%2010%20-%20Enterprise%20Group%20Policy%20Administration/README.md)

Designed, deployed, validated, and troubleshot enterprise Group Policy Objects to centrally manage Windows security and workstation configuration.

### Work Completed

- Created enterprise Group Policy Objects
- Configured Password Policy
- Configured Account Lockout Policy
- Configured Legal Logon Banner
- Configured Machine Inactivity Timeout
- Disabled AutoPlay
- Configured Microsoft Defender
- Configured Windows Defender Firewall
- Linked GPOs to Organizational Units
- Validated deployment with gpupdate
- Verified policies using gpresult
- Verified Resultant Set of Policy (RSoP)
- Troubleshot GPO deployment

### Key Skills

- Group Policy Management
- Group Policy Objects
- Windows Security
- Windows Administration
- gpupdate
- gpresult
- RSoP
- Enterprise troubleshooting

## Project 11 – Enterprise DNS Administration

[View Project 11](Project%2011%20-%20Enterprise%20DNS%20Administration/README.md)

Designed, deployed, validated, and troubleshot Microsoft DNS in an enterprise Active Directory environment.

### Work Completed

- Verified Active Directory-integrated DNS
- Reviewed Forward Lookup Zones
- Created a Reverse Lookup Zone
- Configured Secure Dynamic DNS Updates
- Registered PTR records
- Validated Forward and Reverse DNS Resolution
- Reviewed SRV Records
- Reviewed SOA and NS Records
- Tested DNS using nslookup
- Validated DNS using Resolve-DnsName
- Verified DNS health using dcdiag
- Validated Windows 11 client name resolution

### DNS Architecture

```text
Windows 11 Client
        ↓
Microsoft DNS
        ↓
Forward Lookup Zone
        ↓
Reverse Lookup Zone
        ↓
Active Directory
        ↓
LDAP / Kerberos / Group Policy
 
# Enterprise Architecture Progression
 
```text
Windows Server Deployment
        ↓
Active Directory Domain Services
        ↓
Enterprise Identity Administration
        ↓
Joiner–Mover–Leaver
        ↓
Role-Based Access Control
        ↓
AGDLP Authorization
        ↓
Windows 11 Enterprise Client
        ↓
Microsoft Entra ID
        ↓
Hybrid Identity
        ↓
Okta Identity Cloud
        ↓
Enterprise Group Policy
        ↓
Enterprise DNS
        ↓
Enterprise DHCP
        ↓
PowerShell IAM Administration
        ↓
Identity Governance
        ↓
Enterprise IT Operations
```

 ### Key Skills

- Microsoft DNS
- Active Directory Integrated DNS
- Forward Lookup Zones
- Reverse Lookup Zones
- Dynamic DNS
- Secure Dynamic Updates
- A Records
- PTR Records
- NS Records
- SOA Records
- SRV Records
- Resolve-DnsName
- nslookup
- dcdiag
- DNS Troubleshooting
- Dynamic DNS Registration
- DNS Validation
- Active Directory Service Discovery
- LDAP
- Kerberos
- Global Catalog
- Microsoft DNS Diagnostics
---
 ## Project 12 – Enterprise DHCP Administration

[View Project 12](Project%2012%20-%20Enterprise%20DHCP%20Administration/README.md)

Designed, deployed, validated, and troubleshot Microsoft DHCP within an enterprise Active Directory environment.

### Work Completed

- Installed the Microsoft DHCP Server role
- Authorized the DHCP server in Active Directory
- Created an enterprise IPv4 DHCP scope
- Configured address pool and exclusion range
- Configured DHCP reservations
- Configured Router (Option 003)
- Configured DNS Server (Option 006)
- Configured DNS Domain Name (Option 015)
- Verified automatic client lease assignment
- Renewed DHCP leases
- Reviewed DHCP statistics
- Reviewed DHCP operational event logs
- Validated Windows 11 client configuration

### DHCP Architecture

```text
Windows 11 Client
        ↓
Microsoft DHCP Server
        ↓
DHCP Scope
        ↓
Address Pool
Reservations
Scope Options
        ↓
Automatic Client Configuration
```

### Key Skills

- Microsoft DHCP
- DHCP Scope Design
- DHCP Authorization
- Address Pools
- Lease Management
- Reservations
- Scope Options
- DHCP Statistics
- DHCP Event Logs
- ipconfig /release
- ipconfig /renew
- Enterprise DHCP Troubleshooting

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
- Microsoft Entra ID
- Enterprise Applications
- Authentication Methods
- Administrative Units
- Microsoft Entra Cloud Sync
- Group Policy Management
- Group Policy Objects
- Resultant Set of Policy (RSoP)
- gpupdate
- gpresult
- Okta Identity Cloud
- Microsoft DNS
- Active Directory Integrated DNS
- Forward Lookup Zones
- Reverse Lookup Zones
- Dynamic DNS
- Secure Dynamic Updates
- DNS Troubleshooting
- Resolve-DnsName
- nslookup
- PTR Records
- SRV Records
- DNS Health Validation
- Microsoft DHCP
- DHCP Scope Configuration
- Address Pools
- Reservations
- DHCP Scope Options
- DHCP Authorization
- Lease Management
- DHCP Monitoring
  
## Planned
 
- PowerShell IAM automation
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
- Microsoft Entra ID
- Cloud Identity Administration
- Administrative Units
- Enterprise Applications
- Authentication Methods
- Single Sign-On
- SAML
- SaaS Identity Management
- Okta Identity Cloud
- Identity Provider Administration
- Enterprise Authentication
- Authentication Policies
- MFA Administration
- Enterprise Application Integration
- SaaS Identity Management
- Group-Based Application Assignment
- Secure Dynamic DNS Registration
- Reverse DNS Validation
- Forward DNS Validation
- Enterprise DNS Diagnostics

## Group Policy

- Group Policy Management
- Group Policy Objects
- Group Policy deployment
- Group Policy validation
- Group Policy troubleshooting
- Security baselines
- Windows Defender administration
- Windows Firewall administration
- gpupdate
- gpresult
- Resultant Set of Policy (RSoP)

## Hybrid Identity

- Hybrid Identity planning
- Microsoft Entra Cloud Sync
- Microsoft Entra Connect
- Password Hash Synchronization
- Pass-through Authentication
- Federation concepts
- Identity synchronization
  
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

## DNS Administration

- Microsoft DNS
- Active Directory Integrated DNS
- Forward Lookup Zones
- Reverse Lookup Zones
- Secure Dynamic Updates
- Dynamic DNS Registration
- A Records
- PTR Records
- SOA Records
- NS Records
- SRV Records
- Resolve-DnsName
- nslookup
- ipconfig /registerdns
- ipconfig /flushdns
- ipconfig /displaydns
- dcdiag /test:dns
- DNS Troubleshooting
- Client Name Resolution

## DHCP Administration

- Microsoft DHCP
- DHCP Scope Configuration
- DHCP Authorization
- Address Pools
- Address Exclusions
- DHCP Reservations
- Lease Management
- DHCP Scope Options
- DHCP Statistics
- DHCP Event Logs
- Client IP Configuration
- ipconfig /release
- ipconfig /renew
- ipconfig /all
- Enterprise DHCP Troubleshooting
  
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
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
│
├── Project 07 - Microsoft Entra ID/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
|
Project 08 - Okta Identity Cloud/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
|
├── Project 09 - Hybrid Identity Planning & Architecture/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
|
├── Project 10 - Enterprise Group Policy Administration/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
|
|
├── Project 11 - Enterprise DNS Administration/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
|
├── Project 12 - Enterprise DHCP Administration/
│   ├── README.md
│   ├── Architecture.md
│   ├── Deployment_Notes.md
│   ├── Troubleshooting_Log.md
│   ├── Skills_Demonstrated.md
│   ├── Lessons_Learned.md
│   ├── Future_Improvements.md
│   ├── Project_Timeline.md
│   └── Screenshots/
```
 
---
 
# Current Focus
 
The current focus is completing the remaining enterprise infrastructure projects, including PowerShell IAM Automation, Identity Governance, and Enterprise IT Operations, while continuing to expand the Enterprise IAM Operations repository with realistic ServiceNow-style operational workflows.

Planned next steps include:

- Automate identity administration with PowerShell
- Implement Identity Governance
- Build Enterprise IT Operations
---
 
# Roadmap
 
| Project | Focus |
|---|---|
| Project 13 | PowerShell IAM Administration |
| Project 14 | Identity Governance & Conditional Access |
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
- Enterprise DNS Administration
- Enterprise DHCP Administration
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
- Okta Identity Cloud
- Enterprise DNS Administration
---
 
# Author
 
**David Sanders**
 
IT and cybersecurity professional focused on Identity and Access Management, Active Directory, Windows Server, authorization, cloud identity, and security automation.
 
[View GitHub Profile](https://github.com/David-Sanders-IT)
 
---
 
## License
 
This repository is licensed under the [MIT License](LICENSE).
