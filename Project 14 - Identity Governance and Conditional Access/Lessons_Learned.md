# Lessons Learned

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Test Conditional Access Before Enforcement

Report-only mode was valuable because it allowed policy targeting and behavior to be verified before impacting authentication.

This reduced the possibility of accidental lockout.

## Establish Emergency Access First

Emergency access identities should exist before restrictive Conditional Access policies are enforced.

This preserves an administrative recovery path.

## Use Groups for Policy Scope

Group-based Conditional Access targeting is cleaner and more scalable than assigning individual users directly to policies.

## Fresh Sign-In Events Are Important

Existing sign-in events retain the policy state that existed when the authentication occurred.

New authentication events must be generated after policy changes.

## Report-only and Active Policies Are Different

A policy showing success under Report-only does not mean it is actively enforcing access controls.

The policy must be changed to On before enforcement occurs.

## Cloud Logs Can Be Delayed

Successful sign-ins did not always appear immediately.

Identity administrators should account for processing and replication delays when troubleshooting.

## PIM Reduces Standing Privilege

PIM allows privileged identities to remain unprivileged until administrative access is actually needed.

This reduces unnecessary exposure.

## Privileged Access Should Be Temporary

The User Administrator role was limited to a one-hour activation window.

Temporary elevation better supports least privilege than permanent role assignments.

## Privileged Actions Should Require Context

Requiring justification created an audit record explaining why administrative privileges were activated.

## Access Reviews Require Enough Time

The first access review completed before decisions were submitted.

The second review used a longer review period and completed successfully.

## Reviewer Decisions Occur in My Access

The Entra admin center manages the review configuration, while assigned reviewers complete decisions through Microsoft My Access.

## Governance Includes Remediation

Identifying unnecessary access is only part of governance.

The denied user's access had to be removed and the resulting group membership validated.

## Documentation Matters

Recording configuration, validation, troubleshooting, and remediation provides evidence that the control was implemented successfully rather than simply configured.