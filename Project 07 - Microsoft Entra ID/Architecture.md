# Architecture

## Overview

Project 07 extends the CyberLab Enterprise Infrastructure environment from traditional on-premises identity management into cloud identity administration using Microsoft Entra ID.

This project demonstrates how Microsoft Entra ID centralizes cloud identities, authentication, authorization, and enterprise application access while preparing the environment for hybrid identity and future Okta integration.

Microsoft Entra ID functions as the organization's cloud Identity Provider (IdP), managing users, groups, authentication methods, administrative roles, and enterprise applications.

---

# Enterprise Identity Architecture

```text
                    CyberLab Enterprise Infrastructure

                 Windows Server 2022
                        SF-DC01
                            │
                            ▼
          Active Directory Domain Services
                            │
                            ▼
                 Microsoft Entra ID Tenant
                            │
      ┌─────────────────────┼─────────────────────┐
      │                     │                     │
      ▼                     ▼                     ▼
 Enterprise Users     Security Groups     Administrative Roles
      │                     │                     │
      └─────────────────────┼─────────────────────┘
                            │
                            ▼
                 Enterprise Applications
                            │
                            ▼
                  Single Sign-On (SSO)
```

---

# Identity Administration Architecture

Cloud identities are centrally managed within Microsoft Entra ID.

```text
Enterprise User
        │
        ▼
Microsoft Entra User Object
        │
        ▼
Security Group Membership
        │
        ▼
Administrative Role
        │
        ▼
Enterprise Application Access
```

This architecture separates identity administration from application authorization while maintaining centralized identity management.

---

# Authentication Architecture

Microsoft Entra ID provides centralized authentication for cloud resources.

```text
User
    │
    ▼
Microsoft Entra ID
    │
    ▼
Authentication Method
    │
    ▼
Identity Verification
    │
    ▼
Enterprise Application
```

Supported authentication methods include:

- Password
- Phone Number
- Microsoft Authenticator
- Temporary Access Pass
- FIDO2 Security Keys
- Passkeys

---

# Role-Based Access Control Architecture

Administrative permissions are assigned using Role-Based Access Control (RBAC).

```text
Administrator
        │
        ▼
Built-in Role
        │
        ▼
Administrative Permissions
        │
        ▼
Microsoft Entra Resources
```

Roles explored during this project include:

- Global Administrator
- User Administrator
- Groups Administrator
- Helpdesk Administrator
- Security Reader

---

# Administrative Unit Architecture

Administrative Units provide delegated administration.

```text
Organization
      │
      ▼
Administrative Unit
      │
      ▼
Users
      │
      ▼
Delegated Administrator
```

The project includes:

```text
IT Department
```

Administrative Unit

containing Information Technology users.

---

# Security Group Architecture

Cloud authorization continues to follow enterprise Role-Based Access Control principles.

```text
Enterprise User
        │
        ▼
Security Group
        │
        ▼
Enterprise Permissions
        │
        ▼
Cloud Resources
```

Groups implemented include:

- IT_Admins
- HR_Users
- Finance_Users
- Sales_Users

---

# Enterprise Application Architecture

Enterprise Applications represent Software-as-a-Service (SaaS) integrations.

```text
Microsoft Entra ID
        │
        ▼
Enterprise Application
        │
        ▼
Assigned Users
        │
        ▼
Single Sign-On
```

The project deployed:

```text
GitHub Enterprise Cloud – Organization
```

to demonstrate SaaS identity administration.

---

# Single Sign-On Architecture

Microsoft Entra provides centralized Single Sign-On.

```text
User
     │
     ▼
Microsoft Entra ID
     │
     ▼
Authentication
     │
     ▼
SAML / OAuth / OIDC
     │
     ▼
Enterprise Application
```

The project reviewed SAML configuration workflows used for enterprise federation.

---

# Identity Security Architecture

Security controls implemented during this project include:

- Authentication Methods
- Identity Secure Score
- Role-Based Administration
- Administrative Units
- Enterprise Application Assignment

These controls strengthen enterprise identity security while reducing administrative risk.

---

# Relationship to Previous Projects

Project 07 builds directly upon Projects 01 through 06.

```text
Windows Server
        │
        ▼
Active Directory
        │
        ▼
Identity Administration
        │
        ▼
Joiner–Mover–Leaver
        │
        ▼
AGDLP Authorization
        │
        ▼
Windows 11 Enterprise Client
        │
        ▼
Microsoft Entra ID
```

The environment now contains both on-premises and cloud identity administration.

---

# Enterprise Benefits

The completed architecture provides:

- Centralized cloud identity management
- Delegated administration
- Role-Based Access Control
- Authentication management
- Enterprise application administration
- Single Sign-On
- SaaS identity management
- Enterprise security monitoring

---

# Next Architecture Expansion

Project 08 will extend this environment into Okta Identity Cloud.

```text
Windows Server
        │
        ▼
Active Directory
        │
        ▼
Microsoft Entra ID
        │
        ▼
Okta Identity Cloud
        │
        ▼
Hybrid Identity
        │
        ▼
Enterprise Applications
```

Project 08 will demonstrate identity federation, cloud authentication, and enterprise Identity & Access Management across multiple identity providers.