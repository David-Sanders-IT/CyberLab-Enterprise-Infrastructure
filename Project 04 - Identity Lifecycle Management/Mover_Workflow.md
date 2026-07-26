# Mover Workflow

## Overview

This document outlines the standardized Mover workflow used to modify an employee's identity and access following a departmental transfer.

The objective is to ensure access remains aligned with the employee's current business responsibilities while maintaining the Principle of Least Privilege.

This workflow demonstrates how Identity and Access Management (IAM) teams process internal employee transfers by updating identity attributes, organizational placement, and role-based access.

---

# Business Scenario

An existing employee transferred from the Finance department to the Operations department.

Employee Information

| Attribute | Previous | Updated |
|-----------|----------|---------|
| Employee Name | Maria Lopez | Maria Lopez |
| Department | Finance | Operations |
| Job Title | Financial Analyst | Operations Analyst |
| Manager | Olivia Brown | Daniel Garcia |
| Employment Status | Active | Active |

---

# Service Request

Ticket Number

IAM-002

Request Type

Employee Department Transfer

Requester

Daniel Garcia

Priority

Medium

Approval Status

Approved

Business Justification

Employee transferred from Finance to Operations and requires updated access based on the new role.

---

# Identity Modification Process

## Step 1 – Verify Request

The transfer request was reviewed to verify:

- Department transfer approval
- New manager approval
- Updated job title
- Requested access changes
- Effective transfer date

The request was approved before identity modifications were performed.

---

## Step 2 – Update Identity Attributes

The employee's identity information was updated.

Updated fields included:

| Attribute | New Value |
|-----------|-----------|
| Job Title | Operations Analyst |
| Department | Operations |
| Manager | Daniel Garcia |

Maintaining accurate identity information ensures directory data remains synchronized with business operations.

---

## Step 3 – Move Organizational Unit

The employee account was moved from:

```text
Corporate
└── Departments
    └── Finance
        └── Users
```

to

```text
Corporate
└── Departments
    └── Operations
        └── Users
```

Organizing users within department-specific Organizational Units supports delegated administration and Group Policy targeting.

---

## Step 4 – Modify Role-Based Access

Previous access:

```text
Finance_Users
```

New access:

```text
Operations_Users
```

The Finance security group was removed.

The Operations security group was assigned.

No privileged groups were added.

---

## Step 5 – Validate Access

The updated identity was verified.

Validation Checklist

- Correct Organizational Unit
- Updated manager
- Updated department
- Updated job title
- Finance access removed
- Operations access assigned
- Account remained enabled

All validation checks completed successfully.

---

# Security Considerations

## Least Privilege

Permissions were updated to reflect current business responsibilities.

The employee retained only the minimum permissions necessary for the Operations role.

---

## Role-Based Access Control

Permissions continued to be assigned through security groups instead of direct user permissions.

This allows future access changes to be completed efficiently while reducing administrative overhead.

---

## Identity Accuracy

Business identity information remained synchronized with organizational changes.

Accurate identity attributes support:

- Identity governance
- Automated provisioning
- Reporting
- Access reviews
- Compliance auditing

---

# Screenshots

## Figure 5

Employee access before department transfer.

**Screenshot**

05_Mover_Before_Transfer.png

---

## Figure 6

Updated identity attributes.

**Screenshot**

06_Mover_Identity_Updated.png

---

## Figure 7

Employee moved to the Operations Organizational Unit.

**Screenshot**

07_Mover_User_Moved_To_Operations.png

---

## Figure 8

Role-Based Access Control updated to reflect the new department.

**Screenshot**

08_Mover_Access_Updated.png

---

# Outcome

The employee's identity was successfully updated following an approved departmental transfer.

Business identity information, Organizational Unit placement, and security group memberships were modified to reflect the employee's new responsibilities while maintaining secure Role-Based Access Control.

The completed workflow demonstrates a standardized enterprise IAM process for handling employee role changes without granting excessive or unnecessary permissions.