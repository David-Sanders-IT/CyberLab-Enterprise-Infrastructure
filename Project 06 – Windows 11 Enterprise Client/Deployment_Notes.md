# Deployment Notes

## Project Summary

Project 06 deployed a Windows 11 Enterprise workstation into the CyberLab Enterprise Infrastructure environment.

The workstation was successfully configured as a managed Active Directory client capable of authenticating through Kerberos, resolving DNS through the Domain Controller, and accessing enterprise resources based on Active Directory security group membership.

---

# Deployment Objectives

The deployment was performed to accomplish the following goals:

- Deploy a Windows 11 Enterprise workstation
- Configure enterprise networking
- Join Active Directory
- Validate DNS functionality
- Validate Kerberos authentication
- Verify domain trust
- Validate enterprise resource access
- Prepare the environment for Microsoft Entra ID integration

---

# Deployment Environment

| Component | Value |
|-----------|--------|
| Virtualization | VMware Workstation Pro |
| Operating System | Windows 11 Enterprise |
| Domain | corp.cyberlab.local |
| Domain Controller | SF-DC01 |
| Client Name | SFG-CL01 |
| Authentication | Kerberos |
| DNS | Active Directory Integrated DNS |

---

# Workstation Deployment

A new Windows 11 Enterprise virtual machine was deployed using VMware Workstation Pro.

The operating system installation completed successfully before enterprise configuration began.

Tasks completed:

- Windows installation
- Initial configuration
- Administrator account creation
- VMware Tools installation
- Windows Updates
- Initial validation

---

# Computer Configuration

The workstation was renamed to comply with enterprise naming conventions.

Original Name

```
DESKTOP-XXXXXXX
```

Enterprise Name

```
SFG-CL01
```

The workstation was restarted after the rename operation.

---

# Network Configuration

The workstation was configured using enterprise network settings.

Configuration included:

- IPv4 Address
- Subnet Mask
- Default Gateway
- Preferred DNS Server

The Preferred DNS Server was configured as the Active Directory Domain Controller to support:

- LDAP
- Kerberos
- Active Directory
- Domain Controller discovery
- DNS resolution

---

# Connectivity Validation

The workstation was validated before joining the domain.

Validation included:

```
ipconfig /all
```

```
ping SF-DC01
```

```
nslookup SF-DC01
```

Successful validation confirmed:

- Proper IPv4 configuration
- DNS communication
- Domain Controller reachability

---

# Domain Join

The workstation joined:

```
corp.cyberlab.local
```

using Domain Administrator credentials.

The following actions occurred automatically:

- Computer object created
- Secure channel established
- Machine password created
- Domain trust established

The workstation was restarted after the domain join.

---

# Domain Authentication

Following restart, authentication was performed using domain credentials.

Authentication validation confirmed:

- Domain trust
- User authentication
- Logon server
- Kerberos functionality

Validation commands:

```
whoami
```

```
hostname
```

```
echo %logonserver%
```

---

# Kerberos Validation

Kerberos authentication was validated using:

```
klist
```

Validation confirmed:

- Ticket Granting Ticket (TGT)
- Service tickets
- Successful domain authentication

---

# DNS Validation

Enterprise DNS functionality was verified.

Validation included:

```
nslookup SF-DC01
```

```
ping SF-DC01
```

This confirmed:

- Name resolution
- Domain Controller discovery
- Active Directory DNS functionality

---

# Resource Access Validation

Project 05 authorization policies were validated from the client workstation.

Testing included:

- Authorized access
- Unauthorized access
- SMB share connectivity
- Least privilege verification

Validation confirmed that authorization decisions are enforced through Active Directory group membership.

---

# Deployment Challenges

During the initial deployment, the original Windows 11 virtual machine experienced persistent virtual networking issues.

Although multiple network configurations were tested, communication with the Domain Controller could not be established.

Rather than continuing to troubleshoot a potentially corrupted virtual machine, a new Windows 11 Enterprise workstation was deployed.

The replacement workstation successfully completed every deployment phase.

---

# Deployment Outcome

The workstation now operates as a fully managed enterprise endpoint.

Completed functionality includes:

- Active Directory domain membership
- Kerberos authentication
- Enterprise DNS
- SMB resource access
- Identity-based authorization
- Enterprise workstation validation

The environment is now prepared for Microsoft Entra ID integration during Project 07.