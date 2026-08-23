# Access Review

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Overview

This phase of the project demonstrated how Microsoft Entra ID Governance can be used to periodically review user access and remove access that is no longer required.

The access review targeted a Finance security group containing test identities.

## Resource Reviewed

**Group:** `GRP-AccessReview-Finance`

The group was used to simulate access to a sensitive Finance-related resource.

Initial members included:

- IAM Test User 1
- IAM Test User 2
- IAM Test User 3

## Review Configuration

The access review was configured with:

- Resource type: Teams + Groups
- Selected group: `GRP-AccessReview-Finance`
- Scope: All users
- Reviewer: Primary lab administrator
- Frequency: One time
- Auto-apply results: Disabled
- If reviewer does not respond: No change
- Justification required: Enabled
- Email notifications: Enabled
- Reminders: Enabled

## Initial Review Issue

The first review:

`Quarterly-Finance-Access-Review-Lab`

completed before reviewer decisions were submitted.

A second review was therefore created with a longer review period:

`Quarterly-Finance-Access-Review-Lab-v2`

The second review successfully transitioned to an Active state and was completed through Microsoft My Access.

## Reviewer Decisions

| User | Decision | Reason |
|---|---|---|
| IAM Test User 1 | Approved | Access remains required for current Finance responsibilities. |
| IAM Test User 2 | Denied | Access is no longer required for the user's current role. |
| IAM Test User 3 | Approved | Access remains appropriate for assigned Finance duties. |

## Remediation

Automatic application of review results was intentionally disabled.

Because IAM Test User 2 was denied continued access, the account was manually removed from:

`GRP-AccessReview-Finance`

## Final Membership

After remediation, the group contained:

- IAM Test User 1
- IAM Test User 3

IAM Test User 2 was no longer a member.

## Validation

The final group membership was reviewed in Microsoft Entra ID to confirm that the access review decision had been properly implemented.

## Outcome

This workflow demonstrated:

- Periodic access certification
- Reviewer-based access decisions
- Approval and denial workflows
- Justification requirements
- Manual access remediation
- Post-remediation validation
- Least-privilege access governance