# Conditional Access Policies

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Overview

Conditional Access was used to implement policy-based MFA enforcement for both standard users and privileged administrators.

Policies were first deployed in Report-only mode before being enforced.

This allowed the policy scope and behavior to be validated without immediately affecting user access.

# Policy 1 – Standard User MFA

## Policy Name

`CA-Require-MFA-Test-Users`

## Target Group

`GRP-CA-MFA-Required`

Members included the standard governance test users.

## Target Resources

All resources.

## Grant Control

Require multifactor authentication.

## Exclusions

- Emergency Access 1
- Emergency Access 2

## Initial State

Report-only.

## Validation

A successful IAM Test User 1 sign-in was reviewed in the Entra sign-in logs.

The Report-only result showed:

`CA-Require-MFA-Test-Users – Report-only: Success`

## Enforcement

After validation, the policy was changed from Report-only to On.

A new IAM Test User 1 sign-in was generated.

The Conditional Access result showed:

`CA-Require-MFA-Test-Users – Success`

This confirmed active MFA enforcement.

---

# Policy 2 – Administrator MFA

## Policy Name

`CA-Require-MFA-Admins`

## Target Group

`GRP-CA-Admins`

The IAM Privileged Admin account was added to this group.

## Target Resources

All resources.

## Grant Control

Require multifactor authentication.

## Exclusions

- Emergency Access 1
- Emergency Access 2

## Initial State

Report-only.

## Validation

IAM Privileged Admin generated a new sign-in.

The policy appeared in the Report-only evaluation results.

## Enforcement

The policy was changed to On.

A new privileged-user sign-in was generated.

The Conditional Access result showed:

`CA-Require-MFA-Admins – Success`

The standard test-user Conditional Access policy showed as not applied.

## Security Defaults Transition

Microsoft Security Defaults were initially enabled in the tenant.

After the custom Conditional Access policies were validated in Report-only mode, Security Defaults were disabled.

This allowed custom Conditional Access policies to become the primary policy-based identity security controls.

## Policy Design Principles

The Conditional Access implementation followed several security practices:

- Test before enforcement
- Use group-based assignments
- Protect privileged identities
- Require MFA
- Maintain emergency access exclusions
- Verify policies through sign-in logs
- Generate new authentication events after configuration changes