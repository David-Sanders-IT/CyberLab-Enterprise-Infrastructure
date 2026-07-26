# Troubleshooting Log

## Project

Project 04 – Identity Lifecycle Management

---

# Purpose

This document records issues, validation checks, and corrective actions identified during the Joiner, Mover, and Leaver workflows.

The goal of the troubleshooting process was to confirm that identity changes were completed accurately and that access remained aligned with approved business requirements.

---

# Issue 1 – User Created in the Wrong Organizational Unit

## Potential Problem

A new user account may be created in the default Users container or an incorrect department Organizational Unit.

## Impact

Incorrect placement can affect:

- Group Policy application
- Delegated administration
- Reporting
- Identity organization
- Future lifecycle processing

## Validation Performed

The account location was reviewed in Active Directory Users and Computers.

Expected location:

```text
Corporate
└── Departments
    └── Finance
        └── Users
```

## Resolution

The user account was confirmed inside the correct Finance Users Organizational Unit.

## Preventive Action

Verify the destination OU before completing user creation.

---

# Issue 2 – Incomplete Identity Attributes

## Potential Problem

A user account may be created without complete business information.

Examples include missing:

- Department
- Job title
- Manager
- Company
- Description

## Impact

Incomplete identity data may affect:

- Access reviews
- Reporting
- Automated provisioning
- Manager approval workflows
- Identity governance

## Validation Performed

The Organization tab was reviewed after provisioning.

## Resolution

The following attributes were confirmed:

| Attribute | Value |
|-----------|-------|
| Job Title | Financial Analyst |
| Department | Finance |
| Company | CyberLab |
| Manager | Olivia Brown |

## Preventive Action

Use a standardized onboarding checklist before closing a provisioning request.

---

# Issue 3 – Incorrect Security Group Assignment

## Potential Problem

A newly provisioned user may receive the wrong department group or unnecessary privileged access.

## Impact

Incorrect group membership may create:

- Excessive permissions
- Unauthorized resource access
- Separation-of-duties conflicts
- Audit findings
- Security exposure

## Validation Performed

The Member Of tab was reviewed.

Expected groups:

```text
Domain Users
Finance_Users
```

## Resolution

The user was assigned only to the approved Finance security group.

No privileged groups were assigned.

## Preventive Action

Compare requested access against the approved service request before closing the ticket.

---

# Issue 4 – Old Access Retained After Department Transfer

## Potential Problem

A user transferring departments may receive new access while retaining access to the former department.

## Impact

This may result in:

- Excessive access
- Cross-department data exposure
- Separation-of-duties violations
- Failed access reviews
- Unauthorized access to sensitive information

## Validation Performed

The user’s group membership was reviewed before and after the transfer.

Before transfer:

```text
Domain Users
Finance_Users
```

After transfer:

```text
Domain Users
Operations_Users
```

## Resolution

The Finance security group was removed before the mover workflow was considered complete.

## Preventive Action

Mover requests must include both access removal and new access assignment.

---

# Issue 5 – User Moved Without Updating Identity Attributes

## Potential Problem

A user may be moved to a new department OU while the title, department, and manager fields still show the previous role.

## Impact

Outdated attributes may create:

- Inaccurate reports
- Incorrect approval routing
- Identity governance errors
- Automation failures
- Confusion during future access reviews

## Validation Performed

The Organization tab was reviewed after the department transfer.

Expected values:

| Attribute | Value |
|-----------|-------|
| Job Title | Operations Analyst |
| Department | Operations |
| Manager | Daniel Garcia |

## Resolution

The identity attributes were updated before final mover validation.

## Preventive Action

Treat OU placement, identity data, and access membership as separate required validation points.

---

# Issue 6 – Terminated Account Not Disabled Immediately

## Potential Problem

A terminated employee account may remain active after the termination request is approved.

## Impact

An active terminated account may allow:

- Continued authentication
- Unauthorized system access
- Data theft
- Account misuse
- Increased incident risk

## Validation Performed

The account status was checked in Active Directory Users and Computers.

## Resolution

The account was disabled immediately before other offboarding steps were performed.

## Preventive Action

Account disablement should be the first technical action in a termination workflow.

---

# Issue 7 – Department Access Retained After Account Disablement

## Potential Problem

An administrator may assume disabling the account is enough and leave department security groups assigned.

## Impact

If the account is accidentally re-enabled, previous access may be restored immediately.

This may result in:

- Unauthorized access
- Incomplete offboarding
- Excessive permissions
- Audit failures

## Validation Performed

The Member Of tab was reviewed after account disablement.

## Resolution

The Operations security group was removed.

The account retained only the default Domain Users membership.

## Preventive Action

Use an offboarding checklist that includes access removal in addition to account disablement.

---

# Issue 8 – Account Deleted Instead of Retained

## Potential Problem

A terminated identity may be deleted immediately rather than retained.

## Impact

Premature deletion may result in the loss of:

- Audit history
- Security identifier information
- Ownership records
- Historical reporting
- Evidence needed for investigations
- Rehire data

## Validation Performed

The account was confirmed inside the Disabled Accounts Organizational Unit.

## Resolution

The identity was retained in a disabled state instead of being deleted.

## Preventive Action

Follow a defined account-retention policy before deletion.

---

# Issue 9 – Disabled Account Left in an Active Department OU

## Potential Problem

A disabled account may remain mixed with active department users.

## Impact

This can make it harder to:

- Identify inactive identities
- Perform access reviews
- Apply retention policies
- Generate accurate reports
- Delegate administration

## Validation Performed

The account location was reviewed after offboarding.

Expected location:

```text
Corporate
└── Disabled Accounts
```

## Resolution

The disabled account was moved out of the Operations Users OU and into the Disabled Accounts OU.

## Preventive Action

Include OU relocation as a required leaver step.

---

# Troubleshooting Methods Used

The following methods were used throughout the project:

- Active Directory Users and Computers review
- User Properties validation
- Organization tab review
- Member Of tab review
- Organizational Unit path verification
- Before-and-after screenshot comparison
- Approved ticket comparison
- Least-privilege validation

---

# Final Validation

The final identity state was reviewed against the approved business requests.

## Joiner Validation

- Correct user created
- Correct identity information
- Correct department access
- No privileged access

## Mover Validation

- Old access removed
- New access assigned
- Identity attributes updated
- User moved to correct OU

## Leaver Validation

- Account disabled
- Department access removed
- Account retained
- Account moved to Disabled Accounts OU

---

# Outcome

No unresolved identity or access issues remained at project completion.

The troubleshooting process confirmed that each lifecycle action was completed accurately and that the final identity state aligned with the approved Joiner, Mover, and Leaver requests.