# Skills Demonstrated

## Project

Project 04 – Identity Lifecycle Management

---

# Overview

This project demonstrated practical Identity and Access Management skills through the completion of a full Joiner–Mover–Leaver lifecycle in an enterprise Active Directory environment.

The project focused on maintaining accurate identity records, assigning access based on business roles, modifying permissions after organizational changes, and securely deprovisioning terminated accounts.

---

# Identity Lifecycle Management

## Joiner Process

Demonstrated the ability to:

- Review an approved onboarding request
- Create a new Active Directory user
- Place the user in the correct Organizational Unit
- Configure a temporary password
- Require password change at first logon
- Populate identity attributes
- Assign the correct manager
- Assign department-based access
- Validate the completed account

---

## Mover Process

Demonstrated the ability to:

- Review an approved transfer request
- Update job title
- Update department
- Update manager
- Move the user to a new Organizational Unit
- Remove access associated with the former department
- Assign access associated with the new department
- Validate the final identity state

---

## Leaver Process

Demonstrated the ability to:

- Review an approved termination request
- Disable an Active Directory account
- Remove department-specific access
- Confirm that no privileged access remained
- Retain the account for audit purposes
- Move the identity to the Disabled Accounts Organizational Unit
- Validate the completed offboarding process

---

# Active Directory Administration

The following Active Directory skills were demonstrated:

- Active Directory Users and Computers
- User account creation
- User account disablement
- User attribute management
- Manager assignment
- Department assignment
- Job title assignment
- Organizational Unit placement
- User object relocation
- Security group membership management
- Account-state validation
- Directory structure navigation

---

# Identity Provisioning

Provisioning skills included:

- Creating user identities from approved business requests
- Applying standardized username conventions
- Configuring initial account settings
- Assigning business attributes
- Applying role-based access
- Verifying identity readiness
- Confirming that unnecessary privileged access was not assigned

---

# Identity Deprovisioning

Deprovisioning skills included:

- Immediate account disablement
- Removal of department access
- Preservation of identity records
- Separation of active and inactive accounts
- Account relocation for retention
- Validation of final account status
- Reduction of residual access risk

---

# Role-Based Access Control

The project demonstrated Role-Based Access Control by assigning department access through security groups.

Access model:

```text
User Identity
      ↓
Department Security Group
      ↓
Business Resource Access
```

Examples:

```text
Maria Lopez
      ↓
Finance_Users
```

After the department transfer:

```text
Maria Lopez
      ↓
Operations_Users
```

This approach avoids assigning permissions directly to individual users and supports scalable access administration.

---

# Principle of Least Privilege

Least-privilege practices included:

- Assigning only approved department access
- Avoiding privileged group membership
- Removing old access during a department transfer
- Removing department access during offboarding
- Retaining only the default Domain Users membership after termination
- Verifying access after every lifecycle change

---

# Access Provisioning and Deprovisioning

The project demonstrated both granting and removing access.

## Provisioning

- Added Finance access during onboarding
- Added Operations access after the department transfer

## Deprovisioning

- Removed Finance access during the mover workflow
- Removed Operations access during the leaver workflow

This demonstrates that secure IAM requires both access assignment and timely access removal.

---

# Organizational Unit Administration

Organizational Unit skills included:

- Provisioning users into department-specific OUs
- Moving users after organizational changes
- Separating inactive identities from active employees
- Maintaining a structured directory hierarchy
- Supporting future Group Policy and delegated administration

---

# Identity Data Management

The following identity attributes were maintained:

- Display name
- Username
- Job title
- Department
- Company
- Manager
- Description
- Employment status
- Organizational Unit location
- Security group membership

Accurate identity data supports:

- Reporting
- Access reviews
- Governance
- Automation
- Manager approval workflows
- Audit investigations

---

# Security Group Administration

Security group skills included:

- Reviewing current memberships
- Adding approved department groups
- Removing obsolete groups
- Validating effective role assignment
- Avoiding direct permission assignment
- Confirming that privileged groups were not assigned

---

# Service Request Processing

The project used ticket-based workflows to simulate enterprise IAM operations.

Tickets included:

- IAM-001 — New employee onboarding
- IAM-002 — Department transfer
- IAM-003 — Employee termination

Each request included:

- Requester
- Business justification
- Approval status
- Identity information
- Requested actions
- Validation requirements

---

# Validation and Quality Assurance

The following validation methods were used:

- Organizational Unit review
- User Properties review
- Organization tab validation
- Member Of tab validation
- Account status verification
- Before-and-after comparison
- Ticket-to-directory comparison
- Least-privilege review
- Screenshot documentation

---

# Troubleshooting

The project demonstrated troubleshooting related to:

- Incorrect Organizational Unit placement
- Incomplete identity attributes
- Incorrect security group membership
- Retained access after a department transfer
- Outdated manager or department information
- Incomplete account disablement
- Department access remaining after termination
- Disabled accounts left inside active department OUs

---

# Enterprise Documentation

Documentation skills demonstrated:

- README development
- Deployment notes
- Joiner workflow documentation
- Mover workflow documentation
- Leaver workflow documentation
- Troubleshooting logs
- Ticket documentation
- Screenshot naming
- Figure captions
- Validation checklists
- Security rationale
- Future improvement planning

---

# Security Concepts Demonstrated

- Identity Lifecycle Management
- Joiner–Mover–Leaver
- Authentication control
- Authorization
- Role-Based Access Control
- Principle of Least Privilege
- Access provisioning
- Access deprovisioning
- Account retention
- Separation of active and inactive identities
- Audit readiness
- Identity governance fundamentals

---

# Professional Relevance

The skills demonstrated in this project align with responsibilities commonly associated with:

- Identity and Access Management Analyst
- Identity Operations Analyst
- Access Provisioning Analyst
- Active Directory Administrator
- Security Access Administrator
- User Access Administrator
- IAM Support Analyst
- Systems Administrator

---

# Outcome

This project demonstrated the ability to manage an employee identity throughout its full lifecycle.

The completed workflows showed secure provisioning, controlled access modification, timely deprovisioning, and accurate documentation within an enterprise Active Directory environment.