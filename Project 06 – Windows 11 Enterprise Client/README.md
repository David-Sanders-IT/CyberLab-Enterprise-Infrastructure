# Project 06 – Windows 11 Enterprise Domain Client

## Overview

This project demonstrates the deployment of a Windows 11 Enterprise workstation into an existing Active Directory environment.

The workstation was configured with enterprise network settings, joined to the Active Directory domain, authenticated using domain credentials, and validated against enterprise infrastructure services.

The objective was to simulate the deployment of a new employee workstation while verifying DNS resolution, Kerberos authentication, domain membership, and secure access to business resources.

This project builds directly on Project 05 by validating the identity-based authorization model from the client perspective.

---

# Objectives

- Deploy a Windows 11 Enterprise workstation
- Configure enterprise network settings
- Rename the workstation according to enterprise naming standards
- Join the workstation to Active Directory
- Authenticate using domain credentials
- Validate DNS resolution
- Validate Kerberos authentication
- Verify communication with the Domain Controller
- Validate enterprise SMB resource access
- Confirm least-privilege authorization
- Document the deployment process

---

# Environment

| Component | Configuration |
|---|---|
| Domain | `corp.cyberlab.local` |
| Domain Controller | `SF-DC01` |
| Client Computer | `SFG-CL01` |
| Client Operating System | Windows 11 Enterprise |
| Directory Service | Active Directory Domain Services |
| Authentication | Kerberos |
| DNS | Active Directory Integrated DNS |
| File Services | SMB File Sharing |
| Virtualization | VMware Workstation Pro |

---

# Enterprise Workstation Role

The Windows 11 workstation represents a standard enterprise endpoint deployed for a new employee.

After deployment, the workstation becomes a trusted member of the Active Directory domain and receives authentication, authorization, DNS services, and Group Policy from the Domain Controller.

---

# Client Deployment Architecture

```text
Windows 11 Enterprise
        │
        ▼
Configure Networking
        │
        ▼
DNS → SF-DC01
        │
        ▼
Join Active Directory
        │
        ▼
Kerberos Authentication
        │
        ▼
Access Enterprise Resources
```

---

# Enterprise Deployment Process

The workstation deployment followed a standard enterprise provisioning workflow.

```text
Install Windows 11
        ↓
Rename Computer
        ↓
Configure Network
        ↓
Configure DNS
        ↓
Join Active Directory
        ↓
Restart
        ↓
Authenticate with Domain Credentials
        ↓
Validate Enterprise Services
```

---

# Network Configuration

The workstation was configured with enterprise networking parameters.

Configuration included:

- Static IPv4 Address
- Subnet Mask
- Default Gateway
- Preferred DNS Server

The preferred DNS server was configured to use the Domain Controller.

This allows Active Directory services to resolve:

- Domain Controllers
- Kerberos services
- LDAP services
- Domain resources

---

# Active Directory Integration

The workstation was joined to:

`corp.cyberlab.local`

using Domain Administrator credentials.

After joining the domain:

- Computer account created in Active Directory
- Secure channel established
- Kerberos trust established
- Enterprise authentication enabled

---

# Authentication Process

The workstation authenticates users through Active Directory.

Authentication flow:

```text
User
    ↓
Windows 11 Client
    ↓
DNS
    ↓
Domain Controller
    ↓
Kerberos
    ↓
Domain Authentication
```

---

# DNS Validation

DNS functionality was validated using:

```cmd
ipconfig /all

nslookup SF-DC01

ping SF-DC01
```

Validation confirmed:

- DNS server configuration
- Name resolution
- Domain Controller communication

---

# Kerberos Validation

Kerberos authentication was verified using:

```cmd
klist
```

Validation confirmed:

- Ticket Granting Ticket
- Service Tickets
- Domain authentication

---

# Domain Membership Validation

Domain membership was validated using:

```cmd
whoami

hostname

echo %logonserver%
```

Validation confirmed:

- Domain user authentication
- Workstation identity
- Logon server
- Active Directory trust relationship

---

# Enterprise Resource Validation

The workstation was used to validate the authorization model created in Project 05.

Testing included:

- Department resource access
- Public share access
- Unauthorized access attempts
- Least-privilege enforcement

This confirms the AGDLP authorization model functions correctly from a client workstation.

---

# Security Principles Demonstrated

## Centralized Authentication

User authentication is managed through Active Directory instead of local accounts.

## Kerberos Authentication

Users authenticate using Kerberos tickets rather than direct password verification for every resource request.

## Least Privilege

Users only receive access to resources assigned through security group membership.

## Centralized Identity Management

Authentication and authorization are managed through the Domain Controller.

---

# Relationship to Previous Projects

Project 06 builds directly on previous Enterprise Infrastructure projects.

Project 01

Established the Windows Server environment.

↓

Project 02

Configured Active Directory Domain Services.

↓

Project 03

Created enterprise users, groups, and Organizational Units.

↓

Project 04

Implemented enterprise identity lifecycle management.

↓

Project 05

Configured identity-based resource authorization.

↓

Project 06

Validated the entire environment from an enterprise Windows workstation.

---

# Screenshots

## Windows 11 Installation

![Windows Installation](Screenshots/01_Windows11_Installed.png)

**Figure 1.** Windows 11 Enterprise virtual machine deployment.

---

## Computer Rename

![Rename Computer](Screenshots/02_Rename_Computer.png)

**Figure 2.** Workstation renamed to enterprise naming standard.

---

## Computer Information

![Computer Name](Screenshots/03_Computer_Renamed.png)

**Figure 3.** Computer renamed to `SFG-CL01`.

---

## Network Configuration

![Network Configuration](Screenshots/04_Network_Configuration.png)

**Figure 4.** Enterprise IPv4 configuration.

---

## Network Validation

![IP Configuration](Screenshots/05_IPConfig_All.png)

**Figure 5.** Verification of network configuration.

---

## Domain Controller Connectivity

![Ping](Screenshots/06_Ping_Domain_Controller.png)

**Figure 6.** Successful communication with the Domain Controller.

---

## Domain Join

![Domain Join](Screenshots/07_Domain_Join_Success.png)

**Figure 7.** Successful Active Directory domain join.

---

## Domain Authentication

![Domain Login](Screenshots/08_Domain_User_Login.png)

**Figure 8.** Authentication using enterprise credentials.

---

## Domain Validation

![Validation](Screenshots/09_Domain_Validation.png)

**Figure 9.** Domain membership verification.

---

## Kerberos Authentication

![Kerberos](Screenshots/10_Kerberos_Authentication.png)

**Figure 10.** Kerberos ticket validation.

---

## DNS Resolution

![DNS](Screenshots/11_DNS_Resolution.png)

**Figure 11.** DNS name resolution validation.

---

## Unauthorized Resource Access

![Access Denied](Screenshots/12A_Access_Denied_Validation.png)

**Figure 12.** Least-privilege authorization preventing unauthorized access.

---

## Authorized Resource Access

![Authorized Access](Screenshots/12B_Authorized_Share_Access.png)

**Figure 13.** Authorized access through Active Directory security groups.

---

# Skills Demonstrated

- Windows 11 Administration
- Enterprise Client Deployment
- Active Directory
- Kerberos Authentication
- DNS Administration
- Enterprise Networking
- Domain Membership
- SMB Resource Access
- Identity Validation
- Enterprise Authentication
- Least Privilege
- Windows Troubleshooting
- VMware Administration
- Enterprise Documentation

---

# Current Validation Status

The workstation has been successfully integrated into the Active Directory environment.

Validation confirmed:

- Successful domain join
- Enterprise authentication
- Kerberos functionality
- DNS resolution
- Resource authorization
- Client-side validation of Project 05

The Enterprise Infrastructure environment now includes both server-side and client-side functionality.

---

# Lessons Learned

This project demonstrated that successful Active Directory deployments depend on proper DNS configuration and enterprise authentication.

It also reinforced:

- Enterprise workstation deployment
- Domain trust relationships
- Kerberos authentication
- Client validation of authorization models
- Identity-based access control

The project further demonstrated that enterprise troubleshooting sometimes requires rebuilding a workstation when virtual machine issues outweigh the value of continued troubleshooting.

---

# Future Improvements

Planned enhancements include:

- Group Policy deployment
- Drive mapping through Group Policy
- Printer deployment
- Microsoft Entra ID integration
- Microsoft Intune device management
- Windows Update management
- PowerShell workstation provisioning
- BitLocker deployment
- Windows Defender management
- Microsoft Defender for Endpoint integration

---

# Outcome

Project 06 successfully deployed and integrated a Windows 11 Enterprise workstation into the existing Active Directory infrastructure.

The workstation now authenticates through Active Directory, uses Kerberos for enterprise authentication, validates the authorization model created in previous projects, and serves as the enterprise client for future Microsoft Entra ID, Group Policy, and identity management projects.