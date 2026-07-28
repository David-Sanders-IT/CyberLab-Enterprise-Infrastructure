# Screenshots

## Overview

This directory contains the visual documentation for **Project 06 – Windows 11 Enterprise Domain Client**.

Each screenshot captures a significant deployment or validation milestone completed during the integration of a Windows 11 Enterprise workstation into the Active Directory environment.

The screenshots provide visual evidence of successful workstation deployment, enterprise authentication, DNS configuration, Kerberos validation, and identity-based resource access.

---

# Screenshot Index

## 01 – Windows 11 Installation

**File**

```
01_Windows11_Installed.png
```

**Description**

Initial Windows 11 Enterprise workstation deployment following operating system installation.

---

## 02 – Computer Rename

**File**

```
02_Rename_Computer.png
```

**Description**

Renaming the workstation to comply with enterprise naming conventions.

Computer Name:

```
SFG-CL01
```

---

## 03 – Computer Information

**File**

```
03_Computer_Renamed.png
```

**Description**

Verification that the workstation was successfully renamed.

---

## 04 – Network Configuration

**File**

```
04_Network_Configuration.png
```

**Description**

Enterprise IPv4 configuration including:

- Static IP Address
- Subnet Mask
- Default Gateway
- Preferred DNS Server

---

## 05 – IP Configuration

**File**

```
05_IPConfig_All.png
```

**Description**

Validation of workstation networking using:

```cmd
ipconfig /all
```

This confirms:

- Computer Name
- IPv4 Address
- DNS Server
- Network Adapter

---

## 06 – Domain Controller Connectivity

**File**

```
06_Ping_Domain_Controller.png
```

**Description**

Successful communication between the Windows 11 workstation and the Domain Controller.

Validation included:

```cmd
ping SF-DC01
```

---

## 07 – Active Directory Domain Join

**File**

```
07_Domain_Join_Success.png
```

**Description**

Successful domain join to:

```
corp.cyberlab.local
```

The workstation was successfully added to Active Directory.

---

## 08 – Domain User Login

**File**

```
08_Domain_User_Login.png
```

**Description**

Successful authentication using enterprise Active Directory credentials.

---

## 09 – Domain Validation

**File**

```
09_Domain_Validation.png
```

**Description**

Verification of domain membership using:

```cmd
whoami

hostname

echo %logonserver%
```

Validation confirms:

- Domain authentication
- Computer identity
- Logon server

---

## 10 – Kerberos Authentication

**File**

```
10_Kerberos_Authentication.png
```

**Description**

Kerberos ticket validation using:

```cmd
klist
```

This confirms successful enterprise authentication.

---

## 11 – DNS Resolution

**File**

```
11_DNS_Resolution.png
```

**Description**

Verification of enterprise DNS functionality.

Validation commands:

```cmd
nslookup SF-DC01

ping SF-DC01
```

This confirms:

- Name resolution
- Domain Controller discovery
- DNS communication

---

## 12A – Unauthorized Resource Access

**File**

```
12A_Access_Denied_Validation.png
```

**Description**

Validation that unauthorized users receive **Access Denied** when attempting to access restricted enterprise resources.

This confirms proper implementation of:

- Least Privilege
- Active Directory security groups
- NTFS permissions
- SMB share permissions

---

## 12B – Authorized Resource Access

**File**

```
12B_Authorized_Share_Access.png
```

**Description**

Successful access to enterprise resources using an authorized Active Directory account.

This validates the identity-based authorization model implemented during Project 05.

---

# Validation Summary

The screenshots collectively verify the following enterprise capabilities:

- Windows 11 Enterprise deployment
- Enterprise workstation configuration
- Active Directory domain membership
- DNS configuration
- Kerberos authentication
- Enterprise client validation
- SMB resource access
- Identity-based authorization
- Least-Privilege enforcement
- Enterprise workstation documentation

---

# Project Outcome

The screenshots contained within this directory document the successful deployment and validation of a Windows 11 Enterprise workstation within the CyberLab Enterprise Infrastructure environment.

Together, they provide visual evidence that the workstation functions as a fully integrated enterprise endpoint capable of participating in centralized authentication, identity-based authorization, and future cloud identity projects.