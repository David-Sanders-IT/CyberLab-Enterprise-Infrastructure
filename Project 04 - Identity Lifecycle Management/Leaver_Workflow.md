# Leaver Workflow

## Overview

This document outlines the standardized Leaver workflow used to securely deprovision an employee identity after employment ends.

The objective is to prevent unauthorized access, remove department-specific permissions, preserve the account for audit or retention purposes, and maintain an accurate identity record within Active Directory.

This workflow reflects common enterprise Identity and Access Management practices for employee termination.

---

# Business Scenario

An employee's access must be removed following the end of employment.

Employee Information

| Attribute | Value |
|-----------|-------|
| Employee Name | Maria Lopez |
| Username | maria.lopez |
| Department | Operations |
| Job Title | Operations Analyst |
| Manager | Daniel Garcia |
| Employment Status | Terminated |

---

# Service Request

Ticket Number

IAM-003

Request Type

Employee Termination

Requester

Human Resources

Priority

High

Approval Status

Approved

Requested Actions

- Disable the user account
- Remove department-specific access
- Preserve the account
- Move the account to the Disabled Accounts Organizational Unit
- Do not delete the identity

---

# Identity Deprovisioning Process

## Step 1 – Verify Termination Request

The termination request was reviewed to verify:

- Employee identity
- Termination approval
- Effective termination date
- Department
- Manager
- Required access-removal actions

The request was confirmed before changes were made.

---

## Step 2 – Disable the Account

The Active Directory account was disabled immediately.

Disabling the account prevents the user from authenticating while preserving:

- Identity attributes
- Group history
- Security identifiers
- Audit information
- Account ownership records

The account was not deleted.

---

## Step 3 – Remove Department Access

The employee was removed from:

```text
Operations_Users
```

The account retained only:

```text
Domain Users
```

This removed department-specific access and reduced the risk of inappropriate access if the account were re-enabled accidentally.

---

## Step 4 – Move the Account

The account was moved from:

```text
Corporate
└── Departments
    └── Operations
        └── Users
```

to:

```text
Corporate
└── Disabled Accounts
```

This separates inactive identities from active employees and supports future auditing, reporting, and retention.

---

## Step 5 – Validate Deprovisioning

The completed offboarding process was verified.

Validation Checklist

- Account disabled
- Department security group removed
- No privileged groups assigned
- Account moved to Disabled Accounts
- Identity retained
- Account no longer located in the active department OU

All validation checks completed successfully.

---

# Security Considerations

## Immediate Access Revocation

Disabling the account was the first action performed to prevent additional authentication.

---

## Access Removal

Department-specific group membership was removed even though the account was disabled.

This helps prevent access from being restored unintentionally if the account is later re-enabled.

---

## Account Retention

The identity was retained instead of deleted.

Retaining the account supports:

- Audit investigations
- Compliance requirements
- Legal hold
- Ownership review
- Historical reporting
- Possible rehire scenarios

---

## Least Privilege

All role-based department access was removed during deprovisioning.

---

# Screenshots

## Figure 9

Account disable action completed.

**Screenshot**

09_Leaver_Account_Disabled.png

---

## Figure 10

Disabled account visible in the Operations Users Organizational Unit.

**Screenshot**

10_Leaver_Disabled_User_Visible.png

---

## Figure 11

Department-specific access removed.

**Screenshot**

11_Leaver_Department_Access_Removed.png

---

## Figure 12

Disabled identity moved to the Disabled Accounts Organizational Unit.

**Screenshot**

12_Leaver_Disabled_Accounts_OU.png

---

# Risks Prevented

This workflow reduced the risk of:

- Former employee access
- Orphaned permissions
- Inappropriate account reactivation
- Excessive access retention
- Incomplete offboarding
- Unauthorized access to department resources
- Loss of audit history through premature account deletion

---

# Outcome

The employee identity was successfully deprovisioned following an approved termination request.

The account was disabled, department access was removed, and the identity was moved to the Disabled Accounts Organizational Unit while being preserved for audit and retention purposes.

The completed workflow demonstrates a secure and controlled enterprise IAM offboarding process.