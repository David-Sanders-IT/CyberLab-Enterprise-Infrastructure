# Emergency Access Design

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Overview

Emergency access accounts provide an alternative administrative access path when normal administrator accounts cannot authenticate or are affected by policy or configuration failures.

Two dedicated emergency identities were created for the CyberLab tenant.

## Accounts

### Emergency Access 1

Username:

`breakglass1@CyberLab2027.onmicrosoft.com`

### Emergency Access 2

Username:

`breakglass2@CyberLab2027.onmicrosoft.com`

## Account Design

Both identities were:

- Cloud-only Microsoft Entra accounts
- Separate from normal administrator accounts
- Assigned Global Administrator
- Not used for normal daily administration
- Excluded from restrictive Conditional Access policies

## Purpose

Emergency access identities can be used if:

- A Conditional Access policy causes administrator lockout
- MFA services are unavailable
- Normal administrative accounts cannot authenticate
- Identity provider configuration is disrupted
- Administrative recovery is required

## Conditional Access Exclusion

Both emergency identities were excluded from:

`CA-Require-MFA-Test-Users`

and

`CA-Require-MFA-Admins`

This reduces the risk that the same policy affecting normal administrators also blocks emergency recovery access.

## Separation of Duties

Normal administrative work was performed using the primary administrator or IAM Privileged Admin account.

Emergency access accounts were created specifically for recovery scenarios rather than routine administration.

## Security Considerations

In a production environment, emergency accounts should also include:

- Strong unique credentials
- Secure offline credential storage
- Continuous monitoring for sign-ins
- Alerts whenever the account is used
- Regular account validation
- Documented emergency procedures
- Periodic credential rotation
- Restricted operational use

## Lab Outcome

The CyberLab tenant now has two independent emergency administrative identities capable of providing recovery access if normal administrator authentication becomes unavailable.