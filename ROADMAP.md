# CyberLab Enterprise Infrastructure Roadmap

## Overview

This roadmap documents the planned development of the CyberLab Enterprise Infrastructure portfolio.

The environment is designed to progress from foundational Windows Server deployment into enterprise Identity and Access Management, resource authorization, cloud identity, governance, and automation.

The completed portfolio will demonstrate the full identity journey:

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
Centralized Policy Management
      ↓
Automation
      ↓
Cloud Identity
      ↓
Identity Governance
```

---

# Current Progress

| Status | Project |
|---|---|
| ✅ | Project 01 – Windows Server Foundation |
| ✅ | Project 02 – Active Directory Services |
| ✅ | Project 03 – Active Directory Identity Administration |
| ✅ | Project 04 – Identity Lifecycle Management |
| ✅ | Project 05 – Identity-Based Resource Access |
| ⏳ | Project 06 – Windows 11 Enterprise Client |
| ⏳ | Project 07 – Group Policy Administration |
| ⏳ | Project 08 – DNS Administration |
| ⏳ | Project 09 – DHCP Administration |
| ⏳ | Project 10 – PowerShell IAM Administration |
| ⏳ | Project 11 – Microsoft Entra ID |
| ⏳ | Project 12 – Okta Identity Cloud |
| ⏳ | Project 13 – Identity Governance and Conditional Access |
| ⏳ | Project 14 – Enterprise IAM Automation |
| ⏳ | Project 15 – Enterprise IT Operations and IAM Support |

---

# Phase 1 – Windows Infrastructure Foundation

## Project 01 – Windows Server Foundation

**Status:** Complete

### Objective

Deploy and prepare a Windows Server 2022 system for enterprise infrastructure services.

### Completed Work

- Installed Windows Server 2022
- Installed VMware Tools
- Renamed the server to `SFG-DC01`
- Configured static IPv4 addressing
- Configured VMware NAT networking
- Installed Windows updates
- Verified internet connectivity
- Verified DNS resolution
- Diagnosed and corrected a subnet mismatch
- Documented deployment and troubleshooting

### Skills Demonstrated

- Windows Server administration
- IPv4 configuration
- VMware networking
- Static addressing
- NAT
- Connectivity troubleshooting
- Technical documentation

---

## Project 02 – Active Directory Services

**Status:** Complete

### Objective

Deploy the first Active Directory forest, domain, Domain Controller, and integrated DNS service.

### Completed Work

- Installed Active Directory Domain Services
- Created the `corp.cyberlab.local` forest
- Promoted `SFG-DC01` to a Domain Controller
- Configured Active Directory-integrated DNS
- Enabled the Global Catalog
- Configured Directory Services Restore Mode
- Installed administrative tools
- Validated domain functionality

### Skills Demonstrated

- Active Directory Domain Services
- Domain Controller deployment
- Forest and domain creation
- Enterprise authentication
- Active Directory-integrated DNS
- Server role administration

---

# Phase 2 – Identity Administration

## Project 03 – Active Directory Identity Administration

**Status:** Complete

### Objective

Create an enterprise directory structure supporting identity administration, departmental organization, security groups, privileged accounts, and future policy deployment.

### Completed Work

- Designed the enterprise Organizational Unit hierarchy
- Created department OUs
- Created user, group, and computer OUs
- Provisioned departmental users
- Created department security groups
- Implemented Role-Based Access Control
- Created separate standard and administrative identities
- Assigned privileged group membership
- Created structures for contractors, service accounts, and disabled identities

### Skills Demonstrated

- Active Directory Users and Computers
- Organizational Unit design
- User provisioning
- Security-group administration
- Role-Based Access Control
- Privileged-account separation
- Least privilege

---

## Project 04 – Identity Lifecycle Management

**Status:** Complete

### Objective

Demonstrate a complete Joiner–Mover–Leaver lifecycle using approved, ticket-driven IAM workflows.

### Completed Work

#### Joiner

- Created a new employee identity
- Configured initial password requirements
- Populated business identity attributes
- Assigned department and manager information
- Assigned role-based access
- Validated account provisioning

#### Mover

- Processed a department transfer
- Updated title, department, and manager
- Moved the user to the appropriate OU
- Removed obsolete Finance access
- Assigned Operations access
- Documented the before-and-after identity state

#### Leaver

- Disabled the terminated account
- Removed department-specific access
- Verified no privileged access remained
- Moved the account to the Disabled Accounts OU
- Retained the identity for auditing and future review

### Skills Demonstrated

- Joiner–Mover–Leaver
- Identity provisioning
- Identity modification
- Identity deprovisioning
- Access assignment
- Access revocation
- Ticket processing
- IAM validation
- Audit-ready documentation

---

# Phase 3 – Enterprise Authorization

## Project 05 – Identity-Based Resource Access

**Status:** Complete

### Objective

Connect Active Directory identities to departmental resources using SMB, NTFS permissions, Role-Based Access Control, and the AGDLP model.

### Completed Work

- Verified Windows File Services
- Created departmental resource folders
- Published SMB shares
- Created Domain Local permission groups
- Nested department Global groups into permission groups
- Implemented AGDLP
- Removed broad default permissions
- Disabled NTFS inheritance where appropriate
- Configured explicit access-control lists
- Implemented read-only Public access
- Documented Share and NTFS permission architecture

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

- AGDLP
- SMB file sharing
- NTFS permissions
- Share permissions
- Access-control lists
- Permission inheritance
- Group nesting
- Identity-based authorization
- Role-Based Access Control
- Least privilege

---

# Phase 4 – Client Validation and Centralized Administration

## Project 06 – Windows 11 Enterprise Client

**Status:** Planned

### Objective

Deploy a domain-joined Windows 11 workstation and validate identity, authentication, authorization, and resource access from the end-user perspective.

### Planned Work

- Create a Windows 11 virtual machine
- Configure virtual networking
- Point DNS to `SFG-DC01`
- Rename the workstation
- Join it to `corp.cyberlab.local`
- Move the computer object into the appropriate OU
- Sign in using domain accounts
- Validate user-profile creation
- Test initial password change
- Trigger and resolve an account lockout
- Test password reset and account unlock
- Validate disabled-account sign-in failure
- Test department share access
- Document authorized access
- Document unauthorized Access Denied results
- Validate Public read-only access

### Project 05 Validation

The client will be used to prove:

```text
Authorized Department User
        ↓
Approved Resource
        ↓
Access Granted
```

```text
Unauthorized Department User
        ↓
Restricted Resource
        ↓
Access Denied
```

### Skills to Demonstrate

- Windows 11 deployment
- Domain joining
- Domain authentication
- User-profile administration
- IAM support operations
- Access validation
- Account lockout troubleshooting
- Password administration
- Client-server troubleshooting

---

## Project 07 – Group Policy Administration

**Status:** Planned

### Objective

Centrally configure and secure Windows users and computers through Group Policy.

### Planned Work

- Create and link Group Policy Objects
- Configure password policies
- Configure account-lockout policies
- Configure legal logon banners
- Configure automatic screen locking
- Restrict Control Panel access
- Restrict removable storage
- Configure Microsoft Defender settings
- Configure Windows Firewall settings
- Map department drives
- Apply Item-Level Targeting by security group
- Use security filtering
- Test user and computer policies
- Run `gpupdate /force`
- Validate with `gpresult`
- Validate with Resultant Set of Policy
- Troubleshoot policies that fail to apply

### IAM Integration

Department drives will be assigned according to identity group membership.

Example:

```text
Finance_Users
      ↓
Finance Drive Mapping
      ↓
Finance Share
```

### Skills to Demonstrate

- Group Policy Management
- Centralized endpoint management
- Security baselines
- Drive mapping
- Security filtering
- Policy inheritance
- Policy validation
- GPO troubleshooting

---

# Phase 5 – Core Network Services

## Project 08 – DNS Administration

**Status:** Planned

### Objective

Administer and troubleshoot the DNS infrastructure supporting Active Directory.

### Planned Work

- Review the AD-integrated DNS zone
- Create A records
- Create AAAA records
- Create CNAME records
- Create reverse lookup zones
- Create PTR records
- Configure DNS forwarders
- Review Active Directory SRV records
- Test resolution using `nslookup`
- Test using `Resolve-DnsName`
- Clear and inspect the DNS cache
- Simulate a DNS failure
- Diagnose and repair the failure
- Review DNS event logs

### Skills to Demonstrate

- DNS administration
- Forward lookup zones
- Reverse lookup zones
- DNS record management
- Active Directory name resolution
- DNS troubleshooting
- Event-log review

---

## Project 09 – DHCP Administration

**Status:** Planned

### Objective

Provide centralized IPv4 configuration to domain workstations.

### Planned Work

- Install the DHCP Server role
- Authorize DHCP in Active Directory
- Create an IPv4 scope
- Define the address range
- Create address exclusions
- Configure lease duration
- Configure default-gateway options
- Configure DNS-server options
- Configure DNS-domain options
- Activate the scope
- Create a client reservation
- Request a DHCP lease
- Release and renew a lease
- Review active leases
- Simulate DHCP failure
- Diagnose APIPA addressing
- Document the DHCP DORA process

### Skills to Demonstrate

- DHCP deployment
- Scope administration
- Reservations
- Exclusions
- DHCP options
- Lease troubleshooting
- Active Directory authorization
- IPv4 client configuration

---

# Phase 6 – Identity Automation

## Project 10 – PowerShell IAM Administration

**Status:** Planned

### Objective

Automate the Active Directory and IAM tasks previously completed manually.

### Planned Scripts

#### User Administration

- Create a single AD user
- Bulk-create users from CSV
- Populate identity attributes
- Assign managers
- Generate usernames
- Validate duplicate accounts
- Require password changes

#### Group Administration

- Create security groups
- Add users to groups
- Remove users from groups
- Export group membership
- Report nested groups

#### Joiner–Mover–Leaver

- Automate onboarding
- Automate department transfers
- Export former access
- Remove obsolete group memberships
- Disable terminated accounts
- Move disabled users
- Generate completion reports

#### Reporting

- Find inactive accounts
- Find locked accounts
- Find disabled accounts
- Find expired contractors
- Export user reports
- Export permission-group reports

#### Resource Authorization

- Create folders
- Create SMB shares
- Create Domain Local groups
- Implement AGDLP nesting
- Configure Share permissions
- Apply NTFS permissions
- Generate ACL reports

### Engineering Controls

Scripts will include:

- Input validation
- Duplicate checking
- Error handling
- `try/catch`
- Logging
- CSV input and output
- Confirmation prompts
- Dry-run capability
- Reusable functions
- Documentation

### Skills to Demonstrate

- PowerShell
- Active Directory modules
- IAM automation
- CSV processing
- Error handling
- Logging
- Reporting
- Secure administrative scripting

---

# Phase 7 – Cloud Identity Platforms

## Project 11 – Microsoft Entra ID

**Status:** Planned

### Objective

Extend identity administration into Microsoft cloud identity services.

### Planned Work

- Configure a Microsoft Entra tenant
- Create cloud users
- Create cloud security groups
- Assign administrative roles
- Configure Multi-Factor Authentication
- Configure Self-Service Password Reset
- Create guest identities
- Review sign-in logs
- Review audit logs
- Configure group-based access
- Explore dynamic groups where licensing permits
- Document hybrid identity architecture
- Explore Microsoft Entra Connect or Cloud Sync
- Use Microsoft Graph for basic identity operations

### Skills to Demonstrate

- Microsoft Entra ID
- Cloud identity
- MFA
- SSPR
- Administrative roles
- Guest identity
- Sign-in monitoring
- Audit logs
- Microsoft Graph fundamentals
- Hybrid identity concepts

---

## Project 12 – Okta Identity Cloud

**Status:** Planned

### Objective

Demonstrate identity lifecycle, authentication, application access, and API automation using a non-Microsoft identity provider.

### Planned Work

- Configure an Okta developer environment
- Create users
- Create groups
- Configure group rules
- Assign applications
- Configure Multi-Factor Authentication
- Configure password policies
- Configure self-service password reset
- Suspend users
- Reactivate users
- Simulate Joiner–Mover–Leaver workflows
- Review Okta System Log events
- Configure SSO to supported test applications
- Use the Okta API
- Create Python or PowerShell automation
- Export user and group reports

### Skills to Demonstrate

- Okta Workforce Identity
- SaaS identity administration
- Single Sign-On
- MFA
- Lifecycle Management
- Application assignment
- System Log investigation
- REST APIs
- Token-based authentication
- Cross-platform IAM automation

---

# Phase 8 – Governance and Security Controls

## Project 13 – Identity Governance and Conditional Access

**Status:** Planned

### Objective

Demonstrate how organizations request, approve, review, restrict, and revoke access over time.

### Identity Governance Work

- Create an access-request workflow
- Define manager approval
- Define resource-owner approval
- Configure access expiration
- Simulate access packages
- Conduct an access review
- Document access certification
- Identify excessive access
- Identify separation-of-duties conflicts
- Revoke unnecessary permissions
- Document exceptions

### Conditional Access Work

Where licensing permits:

- Require MFA for administrators
- Require MFA for selected users
- Block legacy authentication
- Restrict access by location
- Require approved or compliant devices
- Configure report-only policies
- Protect emergency access accounts
- Test permitted sign-ins
- Test blocked sign-ins
- Review policy results

### Skills to Demonstrate

- Identity governance
- Access requests
- Access approvals
- Access reviews
- Certification
- Expiration
- Separation of duties
- Conditional Access
- Risk-based controls
- Policy testing
- Governance documentation

---

# Phase 9 – Enterprise IAM Automation

## Project 14 – Enterprise IAM Automation

**Status:** Planned

### Objective

Combine Active Directory, Microsoft Entra ID, Okta, PowerShell, Python, APIs, approvals, and audit logging into a unified identity workflow.

### Automated Joiner Workflow

```text
Approved HR Data
      ↓
Validate Required Fields
      ↓
Generate Username
      ↓
Create Identity
      ↓
Populate Attributes
      ↓
Assign Role-Based Access
      ↓
Assign Applications
      ↓
Generate Audit Log
      ↓
Create Completion Report
```

### Automated Mover Workflow

```text
Approved Transfer
      ↓
Export Current Access
      ↓
Remove Previous Access
      ↓
Update Identity Attributes
      ↓
Assign New Access
      ↓
Validate Final State
      ↓
Generate Before-and-After Report
```

### Automated Leaver Workflow

```text
Approved Termination
      ↓
Disable or Suspend Identity
      ↓
Reset Credentials
      ↓
Export Group Memberships
      ↓
Remove Application and Resource Access
      ↓
Move or Archive Identity
      ↓
Generate Audit Evidence
```

### Planned Engineering Features

- PowerShell automation
- Python automation
- REST API integration
- Microsoft Graph API
- Okta API
- CSV and JSON processing
- Environment variables
- Secure token handling
- Input validation
- Logging
- Error handling
- Dry-run mode
- Rollback planning
- Audit reports
- Workflow diagrams

### Skills to Demonstrate

- IAM engineering
- Cross-platform automation
- API integration
- PowerShell
- Python
- JSON
- CSV
- Microsoft Graph
- Okta API
- Workflow orchestration
- Audit logging

---

# Phase 10 – Enterprise Operations

## Project 15 – Enterprise IT Operations and IAM Support

**Status:** Planned

### Objective

Demonstrate ticket handling, identity support, troubleshooting, communication, escalation, and service-management skills using the completed CyberLab environment.

### Planned IAM Tickets

- New-hire onboarding
- Department transfer
- Employee termination
- Contractor onboarding
- Contractor expiration
- Password reset
- Account unlock
- Incorrect group membership
- Unauthorized access request
- Shared-folder access denied
- MFA enrollment failure
- Suspicious sign-in
- Disabled-account reactivation
- Privileged-access request

### Planned Infrastructure Tickets

- Domain-join failure
- DNS resolution failure
- DHCP lease failure
- Group Policy not applying
- Missing mapped drive
- User profile issue
- Network-resource failure
- Windows authentication failure

### Ticket Documentation

Every ticket will include:

- Ticket number
- Requester
- Affected user
- Priority
- Business impact
- Approval status
- Troubleshooting steps
- Root cause
- Actions taken
- Validation
- Resolution notes
- Security considerations
- Escalation decision
- Customer-facing communication

### Skills to Demonstrate

- IAM operations
- Service desk workflows
- Incident prioritization
- Technical troubleshooting
- Ticket documentation
- Customer communication
- Escalation
- ITIL practices
- Security-aware support

---

# Certification and Education Alignment

The portfolio is supported by the following completed certifications:

- CompTIA A+
- CompTIA Network+
- CompTIA Security+
- AWS Certified Cloud Practitioner
- ITIL 4 Foundation
- LPI Linux Essentials

Additional development areas include:

- CompTIA Cloud+
- Microsoft SC-300
- PowerShell
- Python
- Microsoft Entra ID
- Okta
- Identity Governance

---

# Employment Readiness Milestones

## IAM Application Baseline

Completed:

- Active Directory deployment
- Enterprise identity administration
- Joiner–Mover–Leaver
- RBAC
- AGDLP
- SMB and NTFS authorization
- Professional GitHub documentation

IAM applications should begin while the remaining projects are being developed.

---

## Strong Junior IAM Profile

Target milestone:

- Windows 11 validation
- PowerShell IAM automation
- Microsoft Entra ID
- Okta
- Access testing
- API fundamentals

---

## Advanced Portfolio Milestone

Target milestone:

- Identity governance
- Conditional Access
- Automated JML workflows
- Microsoft Graph
- Okta API
- Python automation
- Access reviews
- Audit reporting

---

# Final Portfolio Outcome

At completion, CyberLab Enterprise Infrastructure will demonstrate practical experience across:

- Windows Server
- Active Directory
- Identity administration
- Joiner–Mover–Leaver
- Role-Based Access Control
- AGDLP
- SMB and NTFS authorization
- Windows client administration
- Group Policy
- DNS
- DHCP
- PowerShell
- Python
- Microsoft Entra ID
- Okta
- Conditional Access
- Identity Governance
- Access reviews
- IAM automation
- Enterprise ticket operations
- Technical documentation

The final environment will present a complete identity story:

```text
Create the Identity
        ↓
Assign Business Access
        ↓
Validate Authentication
        ↓
Validate Authorization
        ↓
Modify Access as Roles Change
        ↓
Govern and Review Access
        ↓
Automate Repetitive Operations
        ↓
Securely Deprovision the Identity
```
