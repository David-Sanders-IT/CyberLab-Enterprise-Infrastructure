# Architecture

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Overview

Project 14 extends the CyberLab environment with cloud identity security and governance controls using Microsoft Entra ID P2.

The architecture separates standard identities, privileged identities, emergency access identities, and governance groups.

## Logical Architecture

```text
                     Microsoft Entra ID P2
                             |
          +------------------+------------------+
          |                  |                  |
     Test Users        Privileged User    Emergency Access
          |                  |                  |
          |                  |            Global Administrator
          |                  |            CA Policy Exclusions
          |                  |
          v                  v
     Security Groups       PIM
          |                  |
          |             Eligible Role
          |                  |
          |             JIT Activation
          |             MFA + Reason
          |
     Conditional Access
          |
     MFA Enforcement
          |
     Sign-In Logs
          |
     Policy Validation

          +
          |
          v
   Identity Governance
          |
     Access Review
          |
     Approve / Deny
          |
      Remediation

Identity Types
Standard Test Users
IAM Test User 1
IAM Test User 2
IAM Test User 3

These accounts were used for standard MFA enforcement and access review testing.

Privileged Identity
IAM Privileged Admin

This identity was used for:

Administrator Conditional Access testing
PIM eligible role assignment
Just-in-time User Administrator activation
Emergency Access Identities
Emergency Access 1
Emergency Access 2

Both were configured as cloud-only Global Administrators.

They were excluded from restrictive Conditional Access policies to preserve emergency tenant access.

Security Groups
GRP-CA-MFA-Required

Scopes the standard-user MFA Conditional Access policy.

GRP-CA-Admins

Scopes the privileged-administrator MFA Conditional Access policy.

GRP-AccessReview-Finance

Simulates access to a sensitive Finance resource and serves as the target of the access review.

GRP-PIM-Test

Created for privileged-access and future governance testing.

Conditional Access Flow
User Sign-In
     |
     v
Identity Evaluated
     |
     v
Group Membership Checked
     |
     v
Conditional Access Policy
     |
     +---- User Not In Scope ----> No Policy Applied
     |
     +---- User In Scope
                  |
                  v
             Require MFA
                  |
                  v
          Authentication Complete
                  |
                  v
             Access Granted
Privileged Identity Flow
IAM Privileged Admin
        |
        v
Eligible User Administrator
        |
        v
PIM Activation Request
        |
        +--> MFA
        |
        +--> Business Justification
        |
        v
Temporary Active Assignment
        |
        v
1-Hour Expiration
Access Governance Flow
GRP-AccessReview-Finance
        |
        v
Periodic Access Review
        |
        +--> User 1: Approve
        |
        +--> User 2: Deny
        |
        +--> User 3: Approve
        |
        v
Manual Remediation
        |
        v
User 2 Removed
        |
        v
Final Membership Validated