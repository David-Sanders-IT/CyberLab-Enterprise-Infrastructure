
---

## 3. `Audit_and_Validation.md`

```markdown
# Audit and Validation

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Overview

Each major security and governance control implemented in this project was validated using Microsoft Entra administrative logs, policy results, privileged access records, and final resource state.

The goal was not only to configure controls, but to verify that each control behaved as intended.

## Conditional Access Validation

### Standard User MFA Policy

Policy:

`CA-Require-MFA-Test-Users`

The policy was initially configured in Report-only mode.

A sign-in from IAM Test User 1 was generated and reviewed under:

**Monitoring & health → Sign-in logs**

The Report-only tab showed:

`CA-Require-MFA-Test-Users – Report-only: Success`

This confirmed that the policy correctly matched the user before enforcement.

After the policy was changed to On, a new sign-in was generated.

The Conditional Access tab showed:

`CA-Require-MFA-Test-Users – Success`

This confirmed active MFA enforcement.

## Administrator MFA Validation

Policy:

`CA-Require-MFA-Admins`

IAM Privileged Admin was used for testing.

The policy was first validated in Report-only mode and later enabled.

A new privileged-user sign-in showed:

`CA-Require-MFA-Admins – Success`

The standard test-user policy correctly showed as not applied for the privileged account.

## Emergency Access Validation

Emergency Access 1 and Emergency Access 2 were:

- Created as separate cloud-only identities
- Assigned Global Administrator
- Kept outside the standard Conditional Access security groups
- Excluded from restrictive Conditional Access policies

This maintained an emergency administrative access path.

## PIM Validation

IAM Privileged Admin was assigned:

**User Administrator – Eligible**

The PIM audit log confirmed completion of the eligible assignment.

Activation settings were verified to require:

- Azure MFA
- Justification
- Maximum activation duration of one hour

The role was then activated.

The PIM Active Assignments page showed:

- Role: User Administrator
- State: Activated
- Defined expiration time

This confirmed successful just-in-time privileged elevation.

## Access Review Validation

The active Finance review recorded:

| User | Outcome |
|---|---|
| IAM Test User 1 | Approved |
| IAM Test User 2 | Denied |
| IAM Test User 3 | Approved |

The Entra Access Review Results page recorded the reviewer and review date.

## Remediation Validation

Because automatic result application was disabled, IAM Test User 2 was manually removed from:

`GRP-AccessReview-Finance`

The group membership page was then reviewed.

Final members:

- IAM Test User 1
- IAM Test User 3

This confirmed that the denied access decision was successfully remediated.

## Validation Methods Used

- Entra sign-in logs
- Conditional Access results
- Conditional Access Report-only results
- PIM resource audit
- PIM Active Assignments
- Access Review Results
- Security group membership
- Incognito browser testing

## Final Validation Result

All major controls implemented in Project 14 were successfully tested and verified.

The final environment demonstrated working Conditional Access, MFA enforcement, emergency access, PIM, access reviews, and access remediation.