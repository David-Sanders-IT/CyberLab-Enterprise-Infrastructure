# Skills Demonstrated

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

This project demonstrates enterprise resource authorization using Microsoft Active Directory, SMB file sharing, NTFS permissions, and the AGDLP authorization model.

The environment was designed to separate identities from permissions, allowing resource access to be managed through security groups rather than direct user assignments.

The project emphasizes scalable authorization, least privilege, and enterprise access management.

---

# Active Directory Administration

The following Active Directory administration skills were demonstrated:

- Active Directory Users and Computers (ADUC)
- Security group administration
- Group membership management
- Domain Local group creation
- Global security group management
- Group nesting
- Organizational Unit navigation
- Enterprise directory administration

---

# Identity & Access Management

The project demonstrates practical Identity and Access Management (IAM) skills including:

- Role-Based Access Control (RBAC)
- Identity-based authorization
- AGDLP implementation
- Access provisioning
- Group-based authorization
- Least Privilege
- Access validation
- Authorization design
- Resource access management

---

# Microsoft AGDLP

The project successfully implemented Microsoft's recommended AGDLP authorization model.

```text
Accounts

↓

Global Groups

↓

Domain Local Groups

↓

Permissions
```

The implementation demonstrates:

- Identity separation
- Resource permission separation
- Scalable authorization
- Enterprise security design

---

# Windows File Services

Windows Server File Services skills demonstrated include:

- SMB Share creation
- Share administration
- Department resource organization
- Shared resource management
- Enterprise folder design
- Business resource organization

---

# Share Permission Administration

Configured SMB Share permissions using Domain Local security groups.

Demonstrated:

- Share creation
- Share management
- Share permission assignment
- Share security
- Network resource publishing

---

# NTFS Permission Administration

Configured NTFS permissions using enterprise authorization practices.

Demonstrated:

- ACL management
- Permission inheritance
- Explicit permissions
- Access Control List modification
- Security principal management
- NTFS authorization
- Effective permission design

---

# Enterprise Authorization

Designed an authorization model where:

```text
Identity

↓

Business Role

↓

Permission Group

↓

Business Resource
```

Users never receive direct folder permissions.

Authorization is controlled entirely through security group membership.

---

# Principle of Least Privilege

Least Privilege was implemented throughout the project.

Demonstrated:

- Removal of broad permissions
- Department-specific authorization
- Read-only public resources
- Separation of administrative permissions
- Group-based access assignment

---

# Enterprise Security Groups

Implemented both:

## Global Security Groups

- Executive_Users
- Finance_Users
- HR_Users
- IT_Admins
- Marketing_Users
- Operations_Users
- Sales_Users

## Domain Local Permission Groups

- DL_Executive_Modify
- DL_Finance_Modify
- DL_HR_Modify
- DL_IT_Modify
- DL_Marketing_Modify
- DL_Operations_Modify
- DL_Sales_Modify
- DL_Public_Read

---

# Business Resource Administration

Configured enterprise departmental resources including:

- Executive
- Finance
- Human Resources
- Information Technology
- Marketing
- Operations
- Sales
- Public

Demonstrated structured enterprise resource organization.

---

# Access Control

The project demonstrates:

- Authorization
- Permission assignment
- Permission removal
- Group nesting
- Access separation
- Security boundary design
- Department isolation

---

# Troubleshooting

Troubleshooting activities included:

- Share configuration verification
- NTFS permission validation
- Permission inheritance review
- Security group validation
- AGDLP verification
- Share permission review
- ACL validation
- Authorization review

---

# Enterprise Documentation

Documentation produced for this project includes:

- README
- Architecture
- Deployment Notes
- RBAC Design
- NTFS Permissions
- Share Permissions
- Troubleshooting Log
- Skills Demonstrated
- Lessons Learned
- Future Improvements
- Screenshots README
- Project Timeline

---

# Security Concepts Demonstrated

This project demonstrates understanding of:

- Active Directory
- SMB File Sharing
- NTFS Security
- Authorization
- Role-Based Access Control
- Principle of Least Privilege
- Identity-Based Access
- Enterprise File Security
- Access Separation
- Resource Protection

---

# Professional Relevance

The skills demonstrated align with responsibilities commonly associated with:

- Identity & Access Management (IAM) Analyst
- Identity Operations Analyst
- Access Management Analyst
- Active Directory Administrator
- Windows Systems Administrator
- Systems Engineer
- Infrastructure Engineer
- Security Administrator
- Enterprise Support Engineer

---

# Outcome

Project 05 demonstrates practical enterprise authorization using Microsoft's AGDLP model and Active Directory security groups.

The completed implementation provides a scalable, maintainable, and secure access-control framework that supports identity lifecycle management, future automation, and enterprise governance.