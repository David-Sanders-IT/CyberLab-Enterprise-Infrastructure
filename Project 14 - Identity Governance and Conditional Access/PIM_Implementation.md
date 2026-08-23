# Privileged Identity Management Implementation

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Overview

Microsoft Entra Privileged Identity Management was implemented to reduce permanent privileged access within the CyberLab tenant.

Instead of giving IAM Privileged Admin a permanently active administrative role, the account was made eligible to activate the User Administrator role when required.

## Privileged Identity

**Account:** IAM Privileged Admin

## Role

**Microsoft Entra Role:** User Administrator

## Assignment Type

**Eligible**

The role is not permanently active.

The administrator must intentionally activate the role before using its privileges.

## PIM Assignment

IAM Privileged Admin was added as an eligible member of the User Administrator role.

The Microsoft Entra PIM resource audit confirmed:

- Action: Add eligible member to role in PIM completed
- Role: User Administrator
- Subject: IAM Privileged Admin
- Status: Success

## Activation Configuration

The User Administrator role was configured with the following activation requirements:

### Maximum Activation Duration

1 hour

### Multifactor Authentication

Required.

### Justification

Required.

### Ticket Information

Not required for the lab.

### Approval

Not required for the lab.

## Activation Workflow

The IAM Privileged Admin account signed into Microsoft Entra and navigated to:

**Privileged Identity Management → My roles → Microsoft Entra roles**

User Administrator appeared under eligible assignments.

The role was activated using a business justification.

Example:

`Temporary privileged access required to perform user administration tasks in the CyberLab environment.`

MFA was completed during activation.

## Validation

After activation, User Administrator appeared under:

**Active assignments**

with:

- State: Activated
- Temporary expiration time
- Deactivate option available

This confirmed successful just-in-time privilege elevation.

## Security Benefits

The PIM configuration demonstrated:

- Reduced standing administrative privilege
- Just-in-time access
- MFA-protected elevation
- Time-limited access
- Business justification
- Auditable privilege activation
- Least-privilege administration

## Production Improvements

A production implementation could additionally require:

- Approval from another administrator
- Service ticket number
- Privileged Access Workstation
- Strong authentication strength
- Security alerts for activation
- Regular privileged role access reviews