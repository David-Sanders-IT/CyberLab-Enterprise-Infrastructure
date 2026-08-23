# CyberLab Enterprise Infrastructure

> Enterprise Windows Server, Active Directory, Microsoft Entra ID, Okta Identity Cloud, Identity & Access Management, Identity Governance, PowerShell Automation, and Enterprise Infrastructure Portfolio

## Environment Status

✅ **14 Enterprise Infrastructure Projects Completed**

### Infrastructure

🖥️ Windows Server 2022
🏢 Active Directory Domain Services
💻 Windows 11 Enterprise
🌐 Enterprise DNS & DHCP
⚙️ Group Policy Administration

### Identity Platforms & Security

☁️ Microsoft Entra ID
🔐 Okta Identity Cloud
🔑 Identity & Access Management
🛡️ Conditional Access
👤 Privileged Identity Management
📋 Identity Governance
⚡ PowerShell IAM Automation

## ➡️ Next: Project 15 – Identity Security Monitoring & Audit Operations

---

# Overview

CyberLab Enterprise Infrastructure is a hands-on technical portfolio designed to simulate the responsibilities of an Identity and Access Management professional, Windows Systems Administrator, and enterprise infrastructure engineer.

The environment documents the design, deployment, administration, security, automation, governance, validation, and troubleshooting of enterprise Microsoft identity and infrastructure services.

The projects progress from foundational Windows Server deployment through Active Directory administration, Joiner–Mover–Leaver operations, Role-Based Access Control, AGDLP authorization, Windows client validation, Microsoft Entra ID, Okta Identity Cloud, hybrid identity architecture, Group Policy, DNS, DHCP, PowerShell IAM automation, Conditional Access, Privileged Identity Management, and Identity Governance.

This repository demonstrates practical skills through:

* Enterprise architecture documentation
* Deployment and configuration notes
* Troubleshooting records
* Identity lifecycle workflows
* Role-Based Access Control
* Security-control implementation
* Conditional Access policy design
* Privileged access management
* Access reviews and remediation
* PowerShell automation
* Audit and validation evidence
* Technical screenshots
* Lessons learned
* Future improvement planning

---

# Current Progress

| Status | Project                                                             |
| ------ | ------------------------------------------------------------------- |
| ✅      | Project 01 – Windows Server Foundation                              |
| ✅      | Project 02 – Active Directory Services                              |
| ✅      | Project 03 – Active Directory Identity Administration               |
| ✅      | Project 04 – Identity Lifecycle Management                          |
| ✅      | Project 05 – Identity-Based Resource Access                         |
| ✅      | Project 06 – Windows 11 Enterprise Client                           |
| ✅      | Project 07 – Microsoft Entra ID Identity Administration             |
| ✅      | Project 08 – Okta Identity Cloud Administration                     |
| ✅      | Project 09 – Hybrid Identity Planning & Architecture                |
| ✅      | Project 10 – Enterprise Group Policy Administration                 |
| ✅      | Project 11 – Enterprise DNS Administration                          |
| ✅      | Project 12 – Enterprise DHCP Administration                         |
| ✅      | Project 13 – Enterprise IAM Automation with PowerShell              |
| ✅      | Project 14 – Identity Governance & Conditional Access               |
| ⏳      | Project 15 – Identity Security Monitoring & Audit Operations        |
| 📋     | Project 16 – Python Infrastructure Monitoring & Incident Automation |

---

# Completed Projects

## Project 01 – Windows Server Foundation

[View Project 01](./Project%2001%20-%20Windows%20Server%20Foundation)

Established the Windows Server foundation for the CyberLab enterprise environment.

### Work Completed

* Deployed Windows Server 2022
* Installed virtualization integration tools
* Renamed the server to `SFG-DC01`
* Configured static IPv4 addressing
* Configured virtual NAT networking
* Applied Windows updates
* Verified internet connectivity
* Verified DNS connectivity
* Diagnosed and corrected network configuration issues
* Documented deployment and troubleshooting procedures

### Key Skills

* Windows Server administration
* IPv4 configuration
* Static addressing
* Virtual networking
* NAT
* DNS troubleshooting
* Technical documentation

---

## Project 02 – Active Directory Services

[View Project 02](./Project%2002%20-%20Active%20Directory%20Services)

Transformed the Windows Server environment into an Active Directory Domain Services infrastructure.

### Work Completed

* Installed Active Directory Domain Services
* Created the `corp.cyberlab.local` forest
* Promoted `SFG-DC01` to a Domain Controller
* Installed Active Directory-integrated DNS
* Enabled the Global Catalog
* Configured Directory Services Restore Mode
* Installed Active Directory administration tools
* Verified domain functionality
* Verified DNS functionality

### Environment

| Component         | Configuration         |
| ----------------- | --------------------- |
| Domain Controller | `SFG-DC01`            |
| Forest            | `corp.cyberlab.local` |
| Domain            | `corp.cyberlab.local` |
| NetBIOS Name      | `CORP`                |
| DNS Server        | Enabled               |
| Global Catalog    | Enabled               |

### Key Skills

* Active Directory Domain Services
* Domain Controller deployment
* Forest and domain creation
* DNS integration
* Server roles
* Enterprise authentication

---

## Project 03 – Active Directory Identity Administration

[View Project 03](./Project%2003%20-%20Active%20Directory%20Identity%20Administration)

Established the identity administration structure for the enterprise domain.

### Work Completed

* Designed a scalable Organizational Unit structure
* Created departmental user accounts
* Created department and role-based security groups
* Implemented Role-Based Access Control
* Created separate standard and privileged accounts
* Assigned administrative group membership
* Organized users, groups, computers, contractors, service accounts, and disabled identities

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

* Active Directory Users and Computers
* Organizational Unit design
* User provisioning
* Security group administration
* Role-Based Access Control
* Privileged-account separation
* Principle of Least Privilege

---

## Project 04 – Identity Lifecycle Management

[View Project 04](./Project%2004%20-%20Identity%20Lifecycle%20Management)

Implemented enterprise Joiner–Mover–Leaver identity lifecycle workflows.

### Joiner

* Reviewed approved onboarding requirements
* Created employee identities
* Configured temporary passwords
* Required password changes at first sign-in
* Populated title, department, company, and manager attributes
* Assigned department-based access
* Validated completed identities

### Mover

* Processed department transfers
* Updated job titles
* Updated departments
* Updated managers
* Moved identities between department OUs
* Removed access associated with previous roles
* Assigned access associated with new roles
* Documented before-and-after access

### Leaver

* Disabled terminated employee accounts
* Removed department-specific access
* Confirmed privileged access was removed
* Moved identities into the Disabled Accounts OU
* Retained identities for audit and retention purposes

### IAM Workflow

```text
Business Request
       ↓
Approval
       ↓
Identity Provisioning / Modification
       ↓
Role-Based Access Assignment
       ↓
Validation
       ↓
Documentation
       ↓
Closure
```

### Key Skills

* Joiner–Mover–Leaver
* Identity provisioning
* Identity modification
* Identity deprovisioning
* Access provisioning
* Access revocation
* Role-Based Access Control
* Least privilege
* IAM workflow administration
* Audit-ready documentation

---

## Project 05 – Identity-Based Resource Access

[View Project 05](./Project%2005%20-%20Identity%20Based%20Resource%20Access)

Connected Active Directory identities to departmental business resources using SMB shares, NTFS permissions, security groups, and AGDLP.

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

### Finance Example

```text
Finance Employee
       ↓
Finance_Users
       ↓
DL_Finance_Modify
       ↓
Finance Share + NTFS Permissions
       ↓
Finance Business Resource
```

### Work Completed

* Verified Windows File Services
* Created departmental folders
* Published departmental SMB shares
* Created Domain Local permission groups
* Nested Global groups into Domain Local groups
* Removed broad default access
* Disabled NTFS inheritance where appropriate
* Configured explicit access-control lists
* Implemented read-only Public access
* Documented Share and NTFS permission models

### Key Skills

* AGDLP
* SMB file sharing
* NTFS permissions
* Share permissions
* Access-control lists
* Permission inheritance
* Identity-based authorization
* Group nesting
* Role-Based Access Control
* Least privilege

---

## Project 06 – Windows 11 Enterprise Client

[View Project 06](./Project%2006%20%E2%80%93%20Windows%2011%20Enterprise%20Client)

Deployed a Windows 11 Enterprise client and joined it to the CyberLab domain to validate authentication and authorization from an end-user perspective.

### Work Completed

* Deployed Windows 11 Enterprise
* Joined the workstation to `corp.cyberlab.local`
* Signed in using domain identities
* Validated Active Directory authentication
* Tested authorized departmental share access
* Tested unauthorized access
* Confirmed Access Denied behavior
* Validated read-only Public access
* Validated Joiner–Mover–Leaver changes
* Documented end-to-end access validation

### Validation Flow

```text
Domain-Joined Client
       ↓
Identity Authentication
       ↓
Group Membership Evaluation
       ↓
Share + NTFS Permission Enforcement
       ↓
Authorized Access / Access Denied
```

### Key Skills

* Windows 11 Enterprise deployment
* Domain join
* Client administration
* Authentication validation
* Authorization testing
* Access-control validation
* Access Denied troubleshooting
* End-to-end IAM testing

---

## Project 07 – Microsoft Entra ID Identity Administration

[View Project 07](./Project%2007%20-%20Microsoft%20Entra%20ID)

Extended the CyberLab environment into cloud identity administration using Microsoft Entra ID.

### Work Completed

* Deployed a Microsoft Entra tenant
* Created cloud identities
* Created security groups
* Implemented RBAC concepts
* Assigned built-in administrative roles
* Created Administrative Units
* Configured authentication methods
* Added enterprise applications
* Assigned users to SaaS applications
* Reviewed Single Sign-On
* Reviewed SAML configuration
* Reviewed identity security recommendations
* Documented cloud identity administration

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

* Microsoft Entra ID
* Cloud Identity Administration
* RBAC
* Administrative Units
* Authentication Methods
* Enterprise Applications
* Single Sign-On
* SAML
* SaaS Identity Management

---

## Project 08 – Okta Identity Cloud Administration

[View Project 08](./Project%2008%20-%20Okta%20Identity%20Cloud)

Implemented an enterprise IAM environment using Okta Identity Cloud.

### Work Completed

* Deployed an Okta Identity Cloud tenant
* Created enterprise users
* Created departmental groups
* Implemented Role-Based Access Control
* Configured authentication methods
* Integrated Microsoft 365
* Integrated Slack
* Integrated GitHub Enterprise Cloud
* Integrated Zoom
* Integrated Atlassian Jira Cloud
* Created internal applications
* Assigned applications through security groups
* Reviewed authentication policies
* Reviewed session policies
* Documented enterprise IAM administration

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

* Okta Identity Cloud
* Identity Provider administration
* Role-Based Access Control
* Enterprise application integration
* SaaS Identity Management
* Authentication policies
* MFA administration
* Group-based application assignment

---

## Project 09 – Hybrid Identity Planning & Architecture

[View Project 09](./Project%2009%20-%20Hybrid%20Identity%20Planning%20%26%20Architecture)

Designed and documented a hybrid identity architecture integrating on-premises Active Directory with Microsoft Entra ID.

### Work Completed

* Reviewed Microsoft Entra Cloud Sync
* Reviewed Microsoft Entra Connect Sync
* Compared synchronization technologies
* Compared authentication methods
* Evaluated deployment requirements
* Reviewed Cloud Sync agents
* Reviewed IdFix
* Selected a Cloud Sync architecture
* Documented synchronization planning
* Documented deployment prerequisites

### Key Skills

* Hybrid Identity
* Microsoft Entra Cloud Sync
* Microsoft Entra Connect
* Password Hash Synchronization
* Pass-through Authentication
* Federation concepts
* Identity synchronization
* Enterprise architecture

---

## Project 10 – Enterprise Group Policy Administration

[View Project 10](./Project%2010%20%E2%80%93%20Enterprise%20Group%20Policy%20Administration)

Designed, deployed, validated, and troubleshot enterprise Group Policy Objects for centralized Windows security administration.

### Work Completed

* Created enterprise Group Policy Objects
* Configured password policies
* Configured account lockout policies
* Configured legal logon banners
* Configured machine inactivity timeout
* Disabled AutoPlay
* Configured Microsoft Defender
* Configured Windows Defender Firewall
* Linked GPOs to Organizational Units
* Validated policies using `gpupdate`
* Verified policies using `gpresult`
* Reviewed Resultant Set of Policy
* Troubleshot GPO deployment

### Key Skills

* Group Policy Management
* Group Policy Objects
* Windows security administration
* Password policy
* Account lockout policy
* Microsoft Defender
* Windows Firewall
* `gpupdate`
* `gpresult`
* RSoP
* Enterprise troubleshooting

---

## Project 11 – Enterprise DNS Administration

[View Project 11](./Project%2011%20%E2%80%93%20Enterprise%20DNS%20Administration)

Designed, deployed, validated, and troubleshot Microsoft DNS in an Active Directory environment.

### Work Completed

* Verified Active Directory-integrated DNS
* Reviewed Forward Lookup Zones
* Created a Reverse Lookup Zone
* Configured Secure Dynamic DNS Updates
* Registered PTR records
* Validated forward DNS resolution
* Validated reverse DNS resolution
* Reviewed SRV records
* Reviewed SOA records
* Reviewed NS records
* Tested DNS with `nslookup`
* Validated DNS using `Resolve-DnsName`
* Verified DNS health using `dcdiag`
* Validated Windows client name resolution

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
```

### Key Skills

* Microsoft DNS
* Active Directory Integrated DNS
* Forward Lookup Zones
* Reverse Lookup Zones
* Dynamic DNS
* Secure Dynamic Updates
* A records
* PTR records
* NS records
* SOA records
* SRV records
* `Resolve-DnsName`
* `nslookup`
* `dcdiag`
* DNS troubleshooting
* Active Directory service discovery

---

## Project 12 – Enterprise DHCP Administration

[View Project 12](./Project%2012%20%E2%80%93%20Enterprise%20DHCP%20Administration)

Designed, deployed, validated, and troubleshot Microsoft DHCP within the Active Directory environment.

### Work Completed

* Installed Microsoft DHCP Server
* Authorized DHCP in Active Directory
* Created an enterprise IPv4 scope
* Configured the address pool
* Configured exclusion ranges
* Configured DHCP reservations
* Configured Router Option 003
* Configured DNS Server Option 006
* Configured DNS Domain Name Option 015
* Verified automatic client lease assignment
* Renewed DHCP leases
* Reviewed DHCP statistics
* Reviewed DHCP operational event logs
* Validated Windows 11 client configuration

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

* Microsoft DHCP
* DHCP Scope Design
* DHCP Authorization
* Address Pools
* Exclusion Ranges
* Lease Management
* Reservations
* Scope Options
* DHCP Statistics
* DHCP Event Logs
* `ipconfig /release`
* `ipconfig /renew`
* Enterprise DHCP troubleshooting

---

## Project 13 – Enterprise IAM Automation with PowerShell

[View Project 13](./Project%2013%20%E2%80%93%20Enterprise%20IAM%20Automation%20with%20PowerShell)

Automated enterprise Active Directory identity administration using Windows PowerShell and the Active Directory module.

### Work Completed

* Bulk-provisioned 50 Active Directory users from structured CSV data
* Automatically populated identity attributes
* Assigned users to department OUs
* Configured temporary passwords
* Required password changes at first logon
* Automated manager assignments
* Created 7 departmental RBAC groups
* Automated group membership assignments
* Generated Active Directory audit reports
* Exported identity information to CSV
* Automated employee offboarding
* Reset terminated-user passwords
* Disabled terminated accounts
* Removed group memberships
* Moved terminated users to the Disabled Accounts OU
* Implemented logging
* Implemented error handling
* Validated automation results

### Automation Results

* 50 users created
* 49 manager relationships assigned
* 7 RBAC security groups created
* 50 group assignments completed
* 0 failed provisioning operations

### PowerShell Scripts

| Script                                  | Purpose                             |
| --------------------------------------- | ----------------------------------- |
| `01_Create_Users.ps1`                   | Bulk user provisioning              |
| `02_Set_Managers.ps1`                   | Organizational hierarchy assignment |
| `03_Create_Groups_And_Assign_Users.ps1` | RBAC group creation and membership  |
| `04_Generate_AD_Audit_Report.ps1`       | Enterprise identity audit reporting |
| `05_Terminate_Employee.ps1`             | Automated employee offboarding      |

### Automation Workflow

```text
Structured CSV Input
       ↓
Bulk User Provisioning
       ↓
Manager Assignment
       ↓
RBAC Group Creation
       ↓
Group Assignment
       ↓
Audit Reporting
       ↓
Employee Offboarding
```

### Key Skills

* PowerShell automation
* Active Directory Module for PowerShell
* Identity lifecycle management
* CSV data processing
* Role-Based Access Control
* Bulk provisioning
* Automated manager assignment
* Enterprise audit reporting
* Employee offboarding automation
* Error handling
* Logging

---

## Project 14 – Identity Governance & Conditional Access

[View Project 14](./Project%2014%20-%20Identity%20Governance%20and%20Conditional%20Access)

Extended the CyberLab Microsoft Entra environment with enterprise identity governance, Conditional Access, privileged-access, and access-certification controls.

### Work Completed

* Activated Microsoft Entra ID P2
* Created governance test identities
* Created governance security groups
* Created two cloud-only emergency access accounts
* Assigned Global Administrator to both emergency accounts
* Excluded emergency identities from restrictive Conditional Access policies
* Created `CA-Require-MFA-Test-Users`
* Created `CA-Require-MFA-Admins`
* Tested Conditional Access policies in Report-only mode
* Validated policy results through Entra sign-in logs
* Disabled Security Defaults after policy validation
* Enforced custom MFA Conditional Access policies
* Configured Microsoft Entra Privileged Identity Management
* Assigned IAM Privileged Admin as Eligible for User Administrator
* Required MFA for privileged activation
* Required justification for privileged activation
* Limited privileged activation to one hour
* Performed successful just-in-time role activation
* Created an access review for Finance access
* Assigned a reviewer
* Completed review decisions through Microsoft My Access
* Approved appropriate access
* Denied unnecessary access
* Manually remediated denied access
* Validated final security-group membership

### Governance Security Groups

* `GRP-CA-MFA-Required`
* `GRP-CA-Admins`
* `GRP-AccessReview-Finance`
* `GRP-PIM-Test`

### Conditional Access Policies

#### `CA-Require-MFA-Test-Users`

* Targeted standard test users
* Required MFA
* Targeted all resources
* Excluded emergency access identities
* Tested in Report-only mode before enforcement

#### `CA-Require-MFA-Admins`

* Targeted privileged administrators
* Required MFA
* Targeted all resources
* Excluded emergency access identities
* Tested in Report-only mode before enforcement

### Privileged Identity Management

IAM Privileged Admin received an **Eligible** assignment for:

**User Administrator**

Activation controls:

* MFA required
* Justification required
* Maximum duration: 1 hour
* Just-in-time activation
* Automatic expiration

### Access Review

Resource:

`GRP-AccessReview-Finance`

Review:

`Quarterly-Finance-Access-Review-Lab-v2`

| Identity        | Decision |
| --------------- | -------- |
| IAM Test User 1 | Approved |
| IAM Test User 2 | Denied   |
| IAM Test User 3 | Approved |

IAM Test User 2 was manually removed after the denial decision.

Final membership:

* IAM Test User 1
* IAM Test User 3

### Governance Workflow

```text
Identity
   ↓
Security Group
   ↓
Conditional Access
   ↓
MFA Enforcement
   ↓
Privileged Identity Management
   ↓
Just-in-Time Elevation
   ↓
Access Review
   ↓
Approve / Deny
   ↓
Remediation
   ↓
Validation
```

### Key Skills

* Microsoft Entra ID P2
* Conditional Access
* Multifactor Authentication
* Identity Governance
* Privileged Identity Management
* Just-in-Time Privileged Access
* Eligible Role Assignments
* Emergency Access / Break-Glass Design
* Access Reviews
* Access Certification
* Microsoft My Access
* Least Privilege
* Sign-In Log Analysis
* Policy Validation
* Access Remediation
* Identity Security Troubleshooting

---

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
Okta Identity Cloud
       ↓
Hybrid Identity Architecture
       ↓
Enterprise Group Policy
       ↓
Enterprise DNS
       ↓
Enterprise DHCP
       ↓
PowerShell IAM Automation
       ↓
Conditional Access
       ↓
Privileged Identity Management
       ↓
Identity Governance
       ↓
Identity Security Monitoring & Audit
       ↓
Python Infrastructure Automation
```

---

# Enterprise Technologies

## Current

### Microsoft Identity

* Active Directory Domain Services
* Active Directory Users and Computers
* Microsoft Entra ID
* Microsoft Entra ID P2
* Microsoft Entra Administrative Units
* Microsoft Entra Enterprise Applications
* Microsoft Entra Authentication Methods
* Microsoft Entra Cloud Sync concepts
* Conditional Access
* Identity Governance
* Access Reviews
* Privileged Identity Management
* Just-in-Time Privileged Access
* Emergency Access Accounts
* Microsoft My Access

### Okta

* Okta Identity Cloud
* Identity Provider administration
* Application assignment
* Authentication policies
* MFA administration
* Group-based application access

### Windows Infrastructure

* Windows Server 2022
* Windows 11 Enterprise
* Server Manager
* Group Policy Management
* Microsoft DNS
* Microsoft DHCP
* SMB File Sharing
* NTFS permissions
* VMware Workstation Pro

### Automation

* Windows PowerShell
* Active Directory Module for PowerShell
* PowerShell IAM Automation
* CSV data processing
* Bulk identity provisioning
* Automated manager assignments
* RBAC automation
* Automated audit reporting
* Automated employee offboarding

### Development & Documentation

* Git
* GitHub
* Markdown
* Technical documentation
* Architecture documentation
* Troubleshooting documentation

## Planned

* Identity security monitoring
* Privileged access auditing
* Stale-account analysis
* Administrative role auditing
* Microsoft Graph automation
* REST APIs
* Python infrastructure automation
* Automated incident response
* SIEM integration

---

# Skills Demonstrated

## Identity and Access Management

* Identity administration
* Joiner–Mover–Leaver
* User provisioning
* User deprovisioning
* Identity attribute administration
* Security-group administration
* Role-Based Access Control
* AGDLP
* Access provisioning
* Access revocation
* Least privilege
* Privileged account separation
* Disabled-account retention
* End-to-end access validation
* Cloud Identity Administration
* Enterprise Applications
* Authentication Methods
* Single Sign-On
* SAML
* SaaS Identity Management
* Identity Provider Administration

## Identity Security & Governance

* Microsoft Entra ID P2
* Conditional Access policy design
* Report-only policy testing
* MFA enforcement
* Emergency access account design
* Emergency access exclusions
* Privileged Identity Management
* Eligible administrative roles
* Just-in-Time privilege elevation
* Time-bound administrative access
* MFA-protected role activation
* Privileged-access justification
* Access reviews
* Access certification
* Reviewer workflows
* Access remediation
* Post-remediation validation
* Sign-in log analysis
* Identity governance troubleshooting

## PowerShell Automation

* PowerShell scripting
* Active Directory Module for PowerShell
* Bulk user provisioning
* CSV processing
* Automated manager assignments
* RBAC automation
* Automated audit reporting
* Automated employee offboarding
* Error handling
* Operational logging

## Group Policy

* Group Policy Management
* Group Policy Objects
* Group Policy deployment
* Security baselines
* Password policies
* Account lockout policies
* Windows Defender administration
* Windows Firewall administration
* `gpupdate`
* `gpresult`
* Resultant Set of Policy
* Group Policy troubleshooting

## Hybrid Identity

* Hybrid Identity planning
* Microsoft Entra Cloud Sync
* Microsoft Entra Connect concepts
* Password Hash Synchronization
* Pass-through Authentication
* Federation concepts
* Identity synchronization

## Windows Server & Client Administration

* Windows Server deployment
* Domain Controller deployment
* Active Directory Domain Services
* Active Directory Users and Computers
* Server role administration
* SMB file sharing
* NTFS permissions
* Share permissions
* Access-control lists
* Windows 11 Enterprise deployment
* Domain-joined client administration
* Authentication troubleshooting

## DNS Administration

* Microsoft DNS
* Active Directory Integrated DNS
* Forward Lookup Zones
* Reverse Lookup Zones
* Secure Dynamic Updates
* Dynamic DNS registration
* A records
* PTR records
* SOA records
* NS records
* SRV records
* `Resolve-DnsName`
* `nslookup`
* `ipconfig /registerdns`
* `ipconfig /flushdns`
* `ipconfig /displaydns`
* `dcdiag /test:dns`
* DNS troubleshooting
* Client name resolution

## DHCP Administration

* Microsoft DHCP
* DHCP Scope Configuration
* DHCP Authorization
* Address Pools
* Address Exclusions
* Reservations
* Lease Management
* Scope Options
* DHCP Statistics
* DHCP Event Logs
* Client IP Configuration
* `ipconfig /release`
* `ipconfig /renew`
* `ipconfig /all`
* Enterprise DHCP troubleshooting

## Networking

* IPv4
* Static addressing
* DNS
* DHCP
* NAT
* VMware virtual networking
* Gateway configuration
* Connectivity troubleshooting
* Name-resolution troubleshooting

## Security

* Principle of Least Privilege
* Role-Based Access Control
* Enterprise authentication
* Authorization
* MFA
* Conditional Access
* Privileged Identity Management
* Emergency access design
* Account disablement
* Access removal
* Group-based resource protection
* Permission inheritance management
* Access Denied validation
* Identity governance
* Access certification
* Audit-ready documentation

## Documentation

* Architecture documentation
* Deployment notes
* Troubleshooting logs
* Technical workflows
* Screenshot evidence
* Audit and validation documentation
* Lessons learned
* Future improvement plans
* Project timelines
* GitHub project documentation

---

# Certifications Supporting This Portfolio

* CompTIA A+
* CompTIA Network+
* CompTIA Security+
* CompTIA Cloud+
* AWS Certified Cloud Practitioner
* ITIL 4 Foundation
* LPI Linux Essentials

---

# Repository Structure

```text
CyberLab-Enterprise-Infrastructure/
│
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
│   ├── Joiner_Workflow.md
│   ├── Mover_Workflow.md
│   ├── Leaver_Workflow.md
│   └── Screenshots/
│
├── Project 05 - Identity Based Resource Access/
│   ├── README.md
│   ├── Architecture.md
│   ├── RBAC_Design.md
│   ├── NTFS_Permissions.md
│   ├── Share_Permissions.md
│   └── Screenshots/
│
├── Project 06 – Windows 11 Enterprise Client/
│   ├── README.md
│   └── Screenshots/
│
├── Project 07 - Microsoft Entra ID/
│   ├── README.md
│   └── Screenshots/
│
├── Project 08 - Okta Identity Cloud/
│   ├── README.md
│   └── Screenshots/
│
├── Project 09 - Hybrid Identity Planning & Architecture/
│   ├── README.md
│   └── Screenshots/
│
├── Project 10 – Enterprise Group Policy Administration/
│   ├── README.md
│   └── Screenshots/
│
├── Project 11 – Enterprise DNS Administration/
│   ├── README.md
│   └── Screenshots/
│
├── Project 12 – Enterprise DHCP Administration/
│   ├── README.md
│   └── Screenshots/
│
├── Project 13 – Enterprise IAM Automation with PowerShell/
│   ├── README.md
│   ├── 01_Create_Users.ps1
│   ├── 02_Set_Managers.ps1
│   ├── 03_Create_Groups_And_Assign_Users.ps1
│   ├── 04_Generate_AD_Audit_Report.ps1
│   ├── 05_Terminate_Employee.ps1
│   └── Screenshots/
│
└── Project 14 - Identity Governance and Conditional Access/
    ├── README.md
    ├── Access_Review.md
    ├── Architecture.md
    ├── Audit_and_Validation.md
    ├── Conditional_Access_Policies.md
    ├── Emergency_Access_Design.md
    ├── Future_Improvements.md
    ├── Lessons_Learned.md
    ├── PIM_Implementation.md
    ├── Troubleshooting_Log.md
    └── Screenshots/
```

---

# Current Focus

With Project 14 complete, the CyberLab now covers infrastructure, identity administration, access control, cloud identity, automation, privileged access, and identity governance.

The next phase will focus on **Identity Security Monitoring & Audit Operations**.

Planned Project 15 activities include:

* Audit privileged administrative roles
* Identify stale and inactive identities
* Review privileged security-group membership
* Review administrative access
* Investigate Microsoft Entra sign-in activity
* Analyze authentication activity
* Identify unnecessary access
* Build identity-security audit reports
* Perform remediation
* Validate post-remediation identity state
* Document findings and security recommendations

The separate IAM Operations repository will continue to demonstrate realistic support-ticket and operational IAM workflows without duplicating Project 15.

---

# Roadmap

| Project    | Focus                                                  | Status     |
| ---------- | ------------------------------------------------------ | ---------- |
| Project 14 | Identity Governance & Conditional Access               | ✅ Complete |
| Project 15 | Identity Security Monitoring & Audit Operations        | ⏳ Next     |
| Project 16 | Python Infrastructure Monitoring & Incident Automation | 📋 Planned |

See the complete [project roadmap](ROADMAP.md).

---

# Long-Term Goal

The goal of CyberLab is to demonstrate the practical abilities expected of an Identity and Access Management professional, Microsoft identity administrator, and Windows infrastructure administrator.

The environment demonstrates:

* Windows Server infrastructure
* Active Directory Domain Services
* Enterprise identity administration
* Joiner–Mover–Leaver lifecycle management
* Role-Based Access Control
* AGDLP authorization
* Group-based resource security
* SMB and NTFS permissions
* Windows client administration
* Group Policy
* Enterprise DNS
* Enterprise DHCP
* PowerShell automation
* Microsoft Entra ID
* Okta Identity Cloud
* Hybrid identity concepts
* Conditional Access
* Multifactor Authentication
* Privileged Identity Management
* Just-in-Time privileged access
* Emergency access design
* Identity Governance
* Access Reviews
* Access remediation
* Identity security monitoring
* Enterprise technical documentation

---

# Career Focus

My primary career focus is **Identity and Access Management**, Microsoft identity administration, and enterprise infrastructure.

This portfolio demonstrates practical experience with:

* Active Directory
* Microsoft Entra ID
* Okta Identity Cloud
* Identity lifecycle operations
* User provisioning and deprovisioning
* Role-Based Access Control
* Access provisioning
* Access revocation
* Privileged identity administration
* Conditional Access
* Multifactor Authentication
* Privileged Identity Management
* Just-in-Time privileged access
* Identity Governance
* Access Reviews
* PowerShell automation
* Enterprise DNS
* Enterprise DHCP
* Group Policy
* Hybrid identity
* Troubleshooting
* Audit and validation
* Technical documentation

Future projects will expand the portfolio into Microsoft Graph, Python automation, identity-security monitoring, and automated infrastructure operations.
