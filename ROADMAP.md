# CyberLab Enterprise Infrastructure Roadmap

## Overview

This roadmap documents the development of the CyberLab Enterprise Infrastructure portfolio.

The environment is designed to progress from foundational Windows Server deployment into enterprise Identity and Access Management, resource authorization, cloud identity, automation, privileged access, governance, security monitoring, and infrastructure automation.

The portfolio demonstrates a complete identity and infrastructure progression:

```text
Infrastructure
      ↓
Directory Services
      ↓
Identity Administration
      ↓
Identity Lifecycle Management
      ↓
Resource Authorization
      ↓
Client-Side Validation
      ↓
Cloud Identity
      ↓
Hybrid Identity
      ↓
Centralized Policy Management
      ↓
DNS & DHCP
      ↓
IAM Automation
      ↓
Conditional Access
      ↓
Privileged Identity Management
      ↓
Identity Governance
      ↓
Identity Security Monitoring
      ↓
Python Infrastructure Automation
```

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

# Phase 1 – Windows Infrastructure Foundation

## Project 01 – Windows Server Foundation

**Status:** Complete

### Objective

Deploy and prepare a Windows Server 2022 system for enterprise infrastructure services.

### Completed Work

* Installed Windows Server 2022
* Installed VMware Tools
* Renamed the server to `SFG-DC01`
* Configured static IPv4 addressing
* Configured VMware NAT networking
* Installed Windows updates
* Verified internet connectivity
* Verified DNS resolution
* Diagnosed and corrected network configuration issues
* Documented deployment and troubleshooting

### Skills Demonstrated

* Windows Server administration
* IPv4 configuration
* VMware networking
* Static addressing
* NAT
* Connectivity troubleshooting
* Technical documentation

---

## Project 02 – Active Directory Services

**Status:** Complete

### Objective

Deploy the first Active Directory forest, domain, Domain Controller, and integrated DNS service.

### Completed Work

* Installed Active Directory Domain Services
* Created the `corp.cyberlab.local` forest
* Promoted `SFG-DC01` to a Domain Controller
* Configured Active Directory-integrated DNS
* Enabled the Global Catalog
* Configured Directory Services Restore Mode
* Installed administrative tools
* Validated domain functionality

### Skills Demonstrated

* Active Directory Domain Services
* Domain Controller deployment
* Forest and domain creation
* Enterprise authentication
* Active Directory-integrated DNS
* Server role administration

---

# Phase 2 – Identity Administration

## Project 03 – Active Directory Identity Administration

**Status:** Complete

### Objective

Create an enterprise directory structure supporting identity administration, departmental organization, security groups, privileged accounts, and future policy deployment.

### Completed Work

* Designed the enterprise Organizational Unit hierarchy
* Created department OUs
* Created user, group, and computer OUs
* Provisioned departmental users
* Created department security groups
* Implemented Role-Based Access Control
* Created separate standard and administrative identities
* Assigned privileged group membership
* Created structures for contractors, service accounts, and disabled identities

### Skills Demonstrated

* Active Directory Users and Computers
* Organizational Unit design
* User provisioning
* Security-group administration
* Role-Based Access Control
* Privileged-account separation
* Least privilege

---

## Project 04 – Identity Lifecycle Management

**Status:** Complete

### Objective

Demonstrate a complete Joiner–Mover–Leaver lifecycle using structured IAM workflows.

### Completed Work

#### Joiner

* Created a new employee identity
* Configured initial password requirements
* Populated business identity attributes
* Assigned department and manager information
* Assigned role-based access
* Validated account provisioning

#### Mover

* Processed a department transfer
* Updated title, department, and manager
* Moved the user to the appropriate OU
* Removed obsolete access
* Assigned new role-based access
* Documented the before-and-after identity state

#### Leaver

* Disabled the terminated account
* Removed department-specific access
* Verified no privileged access remained
* Moved the account to the Disabled Accounts OU
* Retained the identity for audit purposes

### Skills Demonstrated

* Joiner–Mover–Leaver
* Identity provisioning
* Identity modification
* Identity deprovisioning
* Access assignment
* Access revocation
* IAM validation
* Audit-ready documentation

---

# Phase 3 – Enterprise Authorization

## Project 05 – Identity-Based Resource Access

**Status:** Complete

### Objective

Connect Active Directory identities to departmental resources using SMB, NTFS permissions, Role-Based Access Control, and AGDLP.

### Completed Work

* Verified Windows File Services
* Created departmental resource folders
* Published SMB shares
* Created Domain Local permission groups
* Nested department Global groups into permission groups
* Implemented AGDLP
* Removed broad default permissions
* Disabled NTFS inheritance where appropriate
* Configured explicit access-control lists
* Implemented read-only Public access
* Documented Share and NTFS permission architecture

### Authorization Model

```text
Account
   ↓
Global Group
   ↓
Domain Local Group
   ↓
Share and NTFS Permissions
   ↓
Business Resource
```

### Skills Demonstrated

* AGDLP
* SMB file sharing
* NTFS permissions
* Share permissions
* Access-control lists
* Permission inheritance
* Group nesting
* Identity-based authorization
* Role-Based Access Control
* Least privilege

---

# Phase 4 – Client Validation

## Project 06 – Windows 11 Enterprise Client

**Status:** Complete

### Objective

Deploy a domain-joined Windows 11 workstation and validate identity, authentication, authorization, and resource access from the end-user perspective.

### Completed Work

* Deployed Windows 11 Enterprise
* Joined the workstation to `corp.cyberlab.local`
* Signed in using domain identities
* Validated Active Directory authentication
* Tested authorized departmental access
* Tested unauthorized access
* Verified Access Denied behavior
* Validated read-only Public access
* Validated Joiner–Mover–Leaver changes
* Documented client-side access validation

### Skills Demonstrated

* Windows 11 Enterprise
* Domain joining
* Client administration
* Authentication validation
* Authorization testing
* End-to-end IAM validation
* Access troubleshooting

---

# Phase 5 – Cloud Identity

## Project 07 – Microsoft Entra ID Identity Administration

**Status:** Complete

### Objective

Extend CyberLab into Microsoft cloud identity administration.

### Completed Work

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

### Skills Demonstrated

* Microsoft Entra ID
* Cloud identity administration
* RBAC
* Administrative Units
* Authentication Methods
* Enterprise Applications
* Single Sign-On
* SAML
* SaaS Identity Management

---

## Project 08 – Okta Identity Cloud Administration

**Status:** Complete

### Objective

Deploy and administer a second enterprise identity platform using Okta Identity Cloud.

### Completed Work

* Deployed an Okta Identity Cloud tenant
* Created enterprise users
* Created departmental groups
* Implemented Role-Based Access Control
* Configured authentication methods
* Integrated enterprise SaaS applications
* Assigned applications through groups
* Reviewed authentication policies
* Reviewed session policies
* Documented Okta IAM administration

### Skills Demonstrated

* Okta Identity Cloud
* Identity Provider administration
* SaaS application integration
* Group-based access assignment
* Authentication policies
* MFA administration
* Role-Based Access Control

---

# Phase 6 – Hybrid Identity

## Project 09 – Hybrid Identity Planning & Architecture

**Status:** Complete

### Objective

Design and document a hybrid identity architecture integrating on-premises Active Directory with Microsoft Entra ID.

### Completed Work

* Reviewed Microsoft Entra Cloud Sync
* Reviewed Microsoft Entra Connect Sync
* Compared synchronization technologies
* Compared authentication methods
* Evaluated deployment requirements
* Reviewed Cloud Sync agents
* Reviewed IdFix
* Selected a synchronization architecture
* Documented deployment prerequisites
* Documented hybrid identity design

### Skills Demonstrated

* Hybrid Identity
* Microsoft Entra Cloud Sync
* Microsoft Entra Connect concepts
* Password Hash Synchronization
* Pass-through Authentication
* Federation concepts
* Identity synchronization
* Enterprise architecture

---

# Phase 7 – Centralized Windows Administration

## Project 10 – Enterprise Group Policy Administration

**Status:** Complete

### Objective

Implement centralized Windows configuration and security management through Group Policy.

### Completed Work

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

### Skills Demonstrated

* Group Policy Management
* Group Policy Objects
* Windows security administration
* Password policies
* Account lockout
* Microsoft Defender
* Windows Firewall
* `gpupdate`
* `gpresult`
* RSoP
* Enterprise troubleshooting

---

# Phase 8 – Core Network Services

## Project 11 – Enterprise DNS Administration

**Status:** Complete

### Objective

Implement and validate Microsoft DNS services required by Active Directory and enterprise clients.

### Completed Work

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
* Validated Windows client resolution

### Skills Demonstrated

* Microsoft DNS
* Active Directory Integrated DNS
* Forward Lookup Zones
* Reverse Lookup Zones
* Dynamic DNS
* Secure Dynamic Updates
* DNS records
* `Resolve-DnsName`
* `nslookup`
* `dcdiag`
* DNS troubleshooting

---

## Project 12 – Enterprise DHCP Administration

**Status:** Complete

### Objective

Deploy and manage centralized IPv4 address configuration using Microsoft DHCP.

### Completed Work

* Installed Microsoft DHCP Server
* Authorized DHCP in Active Directory
* Created an enterprise IPv4 scope
* Configured address pools
* Configured exclusions
* Configured DHCP reservations
* Configured Router Option 003
* Configured DNS Server Option 006
* Configured DNS Domain Name Option 015
* Verified automatic client lease assignment
* Renewed client leases
* Reviewed DHCP statistics
* Reviewed DHCP operational logs
* Validated Windows client configuration

### Skills Demonstrated

* Microsoft DHCP
* DHCP scope design
* DHCP authorization
* Address pools
* Exclusions
* Reservations
* Scope options
* Lease management
* DHCP troubleshooting

---

# Phase 9 – IAM Automation

## Project 13 – Enterprise IAM Automation with PowerShell

**Status:** Complete

### Objective

Automate repetitive Active Directory identity administration workflows using PowerShell.

### Completed Work

* Bulk-provisioned 50 Active Directory users
* Populated identity attributes from CSV data
* Assigned department OUs
* Configured temporary passwords
* Automated manager assignments
* Created 7 departmental RBAC groups
* Automated group membership
* Generated Active Directory audit reports
* Exported identity information to CSV
* Automated employee offboarding
* Reset terminated-user passwords
* Disabled terminated identities
* Removed group memberships
* Moved terminated identities to the Disabled Accounts OU
* Implemented logging
* Implemented error handling
* Validated automation results

### Automation Results

* 50 users created
* 49 manager relationships assigned
* 7 RBAC groups created
* 50 group assignments completed
* 0 failed provisioning operations

### Skills Demonstrated

* Windows PowerShell
* Active Directory Module for PowerShell
* IAM automation
* CSV processing
* Bulk provisioning
* Automated RBAC
* Manager assignment automation
* Audit reporting
* Employee offboarding
* Logging
* Error handling

---

# Phase 10 – Identity Security & Governance

## Project 14 – Identity Governance & Conditional Access

**Status:** Complete

### Objective

Implement advanced identity security, privileged access, Conditional Access, and access-certification controls using Microsoft Entra ID P2.

### Completed Work

* Activated Microsoft Entra ID P2
* Created governance test users
* Created governance security groups
* Created two emergency access accounts
* Assigned Global Administrator to both emergency accounts
* Excluded emergency identities from restrictive Conditional Access policies
* Created `CA-Require-MFA-Test-Users`
* Created `CA-Require-MFA-Admins`
* Tested policies in Report-only mode
* Validated policy results through sign-in logs
* Disabled Security Defaults after successful testing
* Enforced custom MFA policies
* Configured Privileged Identity Management
* Assigned IAM Privileged Admin as Eligible for User Administrator
* Required MFA for privileged activation
* Required business justification
* Limited activation duration to one hour
* Completed successful just-in-time activation
* Created Finance access reviews
* Completed reviewer decisions through Microsoft My Access
* Approved required access
* Denied unnecessary access
* Manually removed the denied identity
* Validated final group membership
* Documented troubleshooting and audit evidence

### Conditional Access Policies

#### `CA-Require-MFA-Test-Users`

* Target: `GRP-CA-MFA-Required`
* Resources: All resources
* Grant: Require MFA
* Emergency accounts excluded
* Tested in Report-only
* Successfully enforced

#### `CA-Require-MFA-Admins`

* Target: `GRP-CA-Admins`
* Resources: All resources
* Grant: Require MFA
* Emergency accounts excluded
* Tested in Report-only
* Successfully enforced

### PIM Configuration

Role:

**User Administrator**

Assignment:

**Eligible**

Activation controls:

* MFA required
* Justification required
* Maximum activation: 1 hour
* Just-in-time access
* Automatic expiration

### Access Review

Resource:

`GRP-AccessReview-Finance`

Final review:

`Quarterly-Finance-Access-Review-Lab-v2`

| Identity        | Decision |
| --------------- | -------- |
| IAM Test User 1 | Approved |
| IAM Test User 2 | Denied   |
| IAM Test User 3 | Approved |

IAM Test User 2 was removed during remediation.

### Skills Demonstrated

* Microsoft Entra ID P2
* Conditional Access
* Multifactor Authentication
* Identity Governance
* Privileged Identity Management
* Just-in-Time privileged access
* Eligible role assignment
* Emergency access design
* Break-glass account strategy
* Access Reviews
* Access certification
* Microsoft My Access
* Access remediation
* Sign-in log analysis
* Least privilege
* Identity security troubleshooting

---

# Phase 11 – Identity Security Monitoring & Audit

## Project 15 – Identity Security Monitoring & Audit Operations

**Status:** Next

### Objective

Expand the CyberLab from identity administration and governance into proactive identity-security monitoring and audit operations.

This project will focus on identifying excessive, stale, privileged, or suspicious access rather than repeating the support-ticket workflows already maintained in the separate IAM Operations repository.

### Planned Work

#### Privileged Access Audit

* Inventory privileged Entra role assignments
* Identify permanent administrative access
* Compare Active vs Eligible privileged assignments
* Review Global Administrator membership
* Identify excessive administrative privilege
* Document remediation recommendations

#### Active Directory Privileged Group Audit

Review membership of high-impact groups such as:

* Domain Admins
* Enterprise Admins
* Administrators
* Account Operators
* Server Operators
* Backup Operators

Identify unexpected or unnecessary privileged membership.

#### Stale Identity Audit

* Identify inactive accounts
* Review last sign-in activity
* Review disabled identities
* Identify identities with unnecessary access
* Document stale-account remediation recommendations

#### Microsoft Entra Sign-In Analysis

* Review user sign-in activity
* Review failed authentication
* Review authentication methods
* Review Conditional Access results
* Investigate unusual sign-in patterns
* Document findings

#### Group Membership Audit

* Review sensitive group membership
* Identify excessive group access
* Compare user roles with assigned access
* Identify least-privilege violations

#### Audit Reporting

Produce an identity-security audit report containing:

* Finding
* Affected identity
* Risk
* Evidence
* Recommended remediation
* Remediation status

#### Remediation

Where appropriate:

* Remove unnecessary group access
* Remove excessive administrative privileges
* Disable stale identities
* Update role assignments
* Validate resulting state

### Planned Validation

* Before-and-after screenshots
* Audit logs
* Sign-in logs
* Group membership validation
* Role-assignment validation
* PowerShell audit output
* Remediation documentation

### Skills Targeted

* Identity security monitoring
* Privileged-access auditing
* Active Directory security auditing
* Entra role analysis
* Stale-account detection
* Sign-in analysis
* Least-privilege analysis
* Access remediation
* Security reporting
* IAM audit documentation

---

# Phase 12 – Python Infrastructure Automation

## Project 16 – Python Infrastructure Monitoring & Incident Automation

**Status:** Planned

### Objective

Build an original Python automation project based on infrastructure-monitoring concepts developed during prior coursework.

The portfolio implementation will be rebuilt independently as a modular IT automation tool rather than uploaded as school assignment code.

### Planned Workflow

```text
Infrastructure
      ↓
Monitoring
      ↓
Issue Detection
      ↓
Incident Creation
      ↓
Remediation Attempt
      ↓
Validation
      ↓
Logging
      ↓
Notification
```

### Planned Components

#### Device Inventory

* Read infrastructure devices from structured configuration data
* Store hostname, IP address, device type, and monitoring attributes

#### Availability Monitoring

* Check network availability
* Identify unreachable devices
* Record status
* Generate structured logs

#### DNS Compliance

* Review DNS configuration
* Compare current state with approved configuration
* Flag non-compliant devices

#### Automated Remediation

Where safe:

* Correct configuration
* Verify remediation
* Record before-and-after state

#### Incident Automation

* Generate incident records for failures
* Assign priority/severity
* Record detected issue
* Record remediation status

#### Notification

* Generate alerts
* Record successful remediation
* Record unresolved incidents

### Planned Python Concepts

* Functions
* Modules
* CSV/JSON processing
* Environment variables
* Exception handling
* Logging
* APIs
* Network automation
* File handling
* Configuration management

### Security Improvements Over Coursework

The portfolio project will avoid:

* Hardcoded API tokens
* Hardcoded passwords
* Public secrets
* Coursework-specific solution code

Instead, it will use:

* Environment variables
* `.gitignore`
* Sanitized sample data
* Modular reusable functions
* Structured logging

### Skills Targeted

* Python automation
* Infrastructure monitoring
* Automated incident response
* DNS compliance
* API integration
* Secure secret handling
* Logging
* Error handling
* Network automation

---

# Supporting IAM Operations Repository

The separate **IAM Operations** repository complements CyberLab by demonstrating realistic operational IAM workflows and support-ticket handling.

CyberLab focuses primarily on:

* Infrastructure
* Identity architecture
* Administration
* Security controls
* Automation
* Governance
* Auditing

IAM Operations focuses on:

* IAM support tickets
* Identity lifecycle requests
* Password and MFA issues
* Access requests
* Investigation
* Escalation
* Resolution
* ServiceNow-style operational documentation

Maintaining the two repositories separately prevents duplication and allows each portfolio to demonstrate a distinct side of enterprise IAM work.

---

# Portfolio Progression

```text
Project 01
Windows Server Foundation
        ↓
Project 02
Active Directory Services
        ↓
Project 03
AD Identity Administration
        ↓
Project 04
Identity Lifecycle Management
        ↓
Project 05
Identity-Based Resource Access
        ↓
Project 06
Windows 11 Enterprise Client
        ↓
Project 07
Microsoft Entra ID
        ↓
Project 08
Okta Identity Cloud
        ↓
Project 09
Hybrid Identity Architecture
        ↓
Project 10
Group Policy Administration
        ↓
Project 11
Enterprise DNS
        ↓
Project 12
Enterprise DHCP
        ↓
Project 13
PowerShell IAM Automation
        ↓
Project 14
Identity Governance & Conditional Access
        ↓
Project 15
Identity Security Monitoring & Audit
        ↓
Project 16
Python Infrastructure Automation
```

---

# Long-Term Expansion

After Project 16, future CyberLab expansion may include:

## Microsoft Graph Automation

* Query Microsoft Entra identities
* Audit group membership
* Query privileged roles
* Export governance reports
* Automate identity reporting

## Entitlement Management

* Access packages
* Request workflows
* Approval workflows
* Access expiration
* Automated removal

## Lifecycle Workflows

* Automated Joiner workflows
* Automated Mover workflows
* Automated Leaver workflows

## Risk-Based Identity Security

* User risk
* Sign-in risk
* Identity Protection
* Risk remediation
* Authentication-strength policies

## Device-Based Conditional Access

* Compliant devices
* Entra joined devices
* Hybrid joined devices
* Intune integration

## SIEM Integration

* Microsoft Sentinel
* Entra sign-in log ingestion
* Identity alerts
* Security dashboards
* Investigation workflows

## Cloud Infrastructure

* Microsoft Azure
* AWS
* Identity integration
* Cloud networking
* Cloud security controls

---

# Career Alignment

The CyberLab roadmap is designed to build practical experience aligned with roles such as:

* IAM Analyst
* Identity Administrator
* Identity & Access Management Engineer
* Microsoft Entra Administrator
* Windows Systems Administrator
* Junior Systems Administrator
* IT Infrastructure Analyst
* Identity Security Analyst
* Access Management Analyst
* Cloud Identity Administrator

The portfolio focuses on demonstrating practical ability rather than only theoretical knowledge.

Each project includes evidence of:

* Planning
* Implementation
* Validation
* Troubleshooting
* Remediation
* Documentation
* Security decision-making

The long-term objective is to demonstrate the ability to build, administer, secure, automate, govern, monitor, and troubleshoot enterprise identity infrastructure.
