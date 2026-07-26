# Joiner Workflow

## Overview

This document outlines the standardized Joiner workflow used to provision a new employee identity within the CyberLab Active Directory environment.

The objective is to ensure every new employee receives the correct identity, security group memberships, and business access while following the Principle of Least Privilege.

---

# Business Scenario

A new employee has joined the Finance department and requires access to enterprise resources before their first day of work.

Employee Information

| Attribute | Value |
|-----------|-------|
| Employee Name | Maria Lopez |
| Username | maria.lopez |
| Department | Finance |
| Job Title | Financial Analyst |
| Manager | Olivia Brown |
| Company | CyberLab |
| Employment Status | Full-Time |

---

# Service Request

Ticket Number

IAM-001

Request Type

New Employee Onboarding

Requester

Olivia Brown

Priority

Medium

Approval Status

Approved

Requested Resources

- Active Directory account
- Finance department access
- Finance security group
- Password change required at first logon

---

# Identity Provisioning Process

## Step 1 – Verify Request

The onboarding request was reviewed to verify:

- Employee information
- Manager approval
- Department assignment
- Requested access
- Start date

No discrepancies were identified.

---

## Step 2 – Create Identity

A new Active Directory user account was created within the Finance Users Organizational Unit.

Location

```text
Corporate
└── Departments
    └── Finance
        └── Users
```

Username

```text
maria.lopez
```

The account was created in an enabled state.

---

## Step 3 – Configure Password

A temporary password was assigned.

The following policy was applied:

- User must change password at next logon

This ensures the employee establishes a unique password during their initial sign-in.

---

## Step 4 – Populate Identity Attributes

Business identity information was added to the user account.

| Attribute | Value |
|-----------|-------|
| Job Title | Financial Analyst |
| Department | Finance |
| Company | CyberLab |
| Manager | Olivia Brown |
| Description | Financial Analyst - Finance Department |

Maintaining accurate identity information supports:

- Identity governance
- Reporting
- Access reviews
- Automated provisioning
- Manager approval workflows

---

## Step 5 – Assign Role-Based Access

The employee was added to the following security group:

```text
Finance_Users
```

The account retained the default:

```text
Domain Users
```

No privileged groups were assigned.

This implementation follows Role-Based Access Control (RBAC), where permissions are granted through security groups rather than directly to user accounts.

---

## Step 6 – Validate Provisioning

The completed identity was verified.

Validation Checklist

- Account enabled
- Correct Organizational Unit
- Correct username
- Correct manager
- Correct department
- Correct title
- Correct company
- Correct security group
- Password change required at first logon

All validation checks completed successfully.

---

# Security Considerations

The provisioning process followed several enterprise security principles.

## Principle of Least Privilege

The employee received only the permissions necessary to perform their assigned role.

---

## Role-Based Access Control

Permissions were assigned through security groups rather than directly to the user account.

---

## Identity Integrity

Business identity attributes were populated to ensure accurate identity records and support future lifecycle operations.

---

# Screenshots

## Figure 1

User account successfully created.

**Screenshot**

01_Joiner_User_Created.png

---

## Figure 2

Business identity attributes populated.

**Screenshot**

02_Joiner_Identity_Attributes.png

---

## Figure 3

Role-Based Access Control assignment.

**Screenshot**

03_Joiner_RBAC_Group_Assignment.png

---

## Figure 4

Completed identity provisioning validation.

**Screenshot**

04_Joiner_Provisioning_Validated.png

---

# Outcome

The new employee identity was successfully provisioned following enterprise IAM practices.

The account was created, documented, assigned role-based access, and validated before the employee's first day of work.

The completed workflow demonstrates a standardized onboarding process that aligns with common enterprise Identity and Access Management procedures.