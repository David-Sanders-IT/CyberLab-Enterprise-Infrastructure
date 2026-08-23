# Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Overview

This project implements identity governance and access security controls in a Microsoft Entra ID lab environment using Microsoft Entra ID P2.

The lab demonstrates practical identity administration, Conditional Access, privileged access management, access reviews, and remediation workflows commonly used in enterprise IAM environments.

## Objectives

- Enable Microsoft Entra ID P2 capabilities for the lab tenant
- Create dedicated governance test identities and security groups
- Implement emergency access accounts
- Configure and validate Conditional Access policies
- Require MFA for standard and privileged users
- Use Report-only mode before enforcement
- Configure Privileged Identity Management (PIM)
- Implement just-in-time privileged access
- Require MFA and justification for role activation
- Conduct an access review
- Approve and deny access based on review decisions
- Manually remediate denied access
- Validate the final group membership state

## Environment

- Microsoft Entra ID
- Microsoft Entra ID P2
- Microsoft 365 Admin Center
- Microsoft Entra Admin Center
- Microsoft My Access
- Windows 11 workstation
- Web browser with Incognito/InPrivate testing

## Lab Identities

### Governance Test Users

- IAM Test User 1
- IAM Test User 2
- IAM Test User 3
- IAM Privileged Admin

### Emergency Access Accounts

- Emergency Access 1
- Emergency Access 2

The emergency access accounts were configured as cloud-only Global Administrators and excluded from restrictive Conditional Access policies.

## Security Groups

- `GRP-CA-MFA-Required`
- `GRP-CA-Admins`
- `GRP-AccessReview-Finance`
- `GRP-PIM-Test`

## Conditional Access Implementation

### Policy 1 – Standard Test Users

**Policy:** `CA-Require-MFA-Test-Users`

Configuration:

- Target group: `GRP-CA-MFA-Required`
- Target resources: All resources
- Grant control: Require multifactor authentication
- Emergency access accounts excluded
- Initially deployed in Report-only mode
- Validated through Entra sign-in logs
- Later changed to On for enforcement

The policy was successfully validated in Report-only mode before being enforced.

### Policy 2 – Privileged Administrators

**Policy:** `CA-Require-MFA-Admins`

Configuration:

- Target group: `GRP-CA-Admins`
- Target resources: All resources
- Grant control: Require multifactor authentication
- Emergency access accounts excluded
- Initially deployed in Report-only mode
- Validated through sign-in logs
- Later changed to On for enforcement

## Security Defaults

Security Defaults were disabled after the custom Conditional Access policies had been validated in Report-only mode.

This allowed the lab to transition from Microsoft-managed baseline controls to administrator-managed Conditional Access policies.

## Privileged Identity Management

The `IAM Privileged Admin` account was assigned the **User Administrator** role as an **Eligible** assignment through Microsoft Entra Privileged Identity Management.

### Activation Controls

- Maximum activation duration: 1 hour
- MFA required on activation
- Justification required
- Ticket information not required
- Approval not required for the lab

The role was successfully activated as a temporary just-in-time assignment.

## Access Review

An access review was created for:

`GRP-AccessReview-Finance`

The final active review was:

`Quarterly-Finance-Access-Review-Lab-v2`

Review decisions:

| User | Decision |
|---|---|
| IAM Test User 1 | Approved |
| IAM Test User 2 | Denied |
| IAM Test User 3 | Approved |

Because automatic result application was disabled, the denied user was manually removed from the Finance access group.

Final group membership:

- IAM Test User 1
- IAM Test User 3

## Key Outcomes

This project demonstrated:

- Conditional Access design and deployment
- Safe policy testing using Report-only mode
- MFA enforcement
- Break-glass account design
- PIM eligible role assignment
- Just-in-time privilege elevation
- MFA-protected privileged role activation
- Identity access reviews
- Governance decision documentation
- Manual access remediation
- Post-remediation validation
- Troubleshooting and policy verification using Entra logs

## Repository Documentation

- [Architecture.md](Architecture.md)
- [Deployment_Notes.md](Deployment_Notes.md)
- [Troubleshooting_Log.md](Troubleshooting_Log.md)
- [Lessons_Learned.md](Lessons_Learned.md)
- [Future_Improvements.md](Future_Improvements.md)
- [Skills_Demonstrated.md](Skills_Demonstrated.md)
- [Project_Timeline.md](Project_Timeline.md)
- [Screenshots/README.md](Screenshots/README.md)