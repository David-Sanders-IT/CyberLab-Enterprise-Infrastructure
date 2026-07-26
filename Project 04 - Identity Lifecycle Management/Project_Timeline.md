# Project Timeline

## Project

Project 04 – Identity Lifecycle Management

---

# Overview

This timeline documents the major milestones completed during Project 04.

The project followed the standard Joiner–Mover–Leaver (JML) identity lifecycle used by enterprise Identity and Access Management (IAM) teams.

Each phase was completed sequentially and validated before proceeding to the next stage.

---

# Phase 1 – Project Planning

## Objective

Design an enterprise identity lifecycle project that demonstrates secure user provisioning, access modification, and employee offboarding using Microsoft Active Directory.

### Completed

- Defined project objectives
- Planned Joiner workflow
- Planned Mover workflow
- Planned Leaver workflow
- Designed ticket-driven identity process
- Identified required screenshots
- Defined documentation requirements

**Status:** Complete

---

# Phase 2 – Joiner Workflow

## Objective

Provision a new employee identity.

### Completed

- Created Active Directory user account
- Configured username
- Configured temporary password
- Required password change at first logon
- Populated business identity attributes
- Assigned manager
- Assigned department
- Assigned security group
- Validated completed provisioning

### Screenshots

- 01_Joiner_User_Created.png
- 02_Joiner_Identity_Attributes.png
- 03_Joiner_RBAC_Group_Assignment.png
- 04_Joiner_Provisioning_Validated.png

**Status:** Complete

---

# Phase 3 – Mover Workflow

## Objective

Modify an existing employee identity following a departmental transfer.

### Completed

- Updated department
- Updated manager
- Updated job title
- Moved user to Operations OU
- Removed Finance access
- Assigned Operations access
- Validated updated identity

### Screenshots

- 05_Mover_Before_Transfer.png
- 06_Mover_Identity_Updated.png
- 07_Mover_User_Moved_To_Operations.png
- 08_Mover_Access_Updated.png

**Status:** Complete

---

# Phase 4 – Leaver Workflow

## Objective

Securely deprovision a terminated employee.

### Completed

- Disabled Active Directory account
- Removed department security group
- Verified removal of access
- Moved account to Disabled Accounts OU
- Preserved identity for audit purposes
- Validated completed offboarding

### Screenshots

- 09_Leaver_Account_Disabled.png
- 10_Leaver_Disabled_User_Visible.png
- 11_Leaver_Department_Access_Removed.png
- 12_Leaver_Disabled_Accounts_OU.png

**Status:** Complete

---

# Phase 5 – Documentation

## Objective

Produce enterprise-quality documentation describing the project architecture, implementation, validation, and security controls.

### Documents Created

- README.md
- Architecture.md
- Deployment_Notes.md
- Joiner_Workflow.md
- Mover_Workflow.md
- Leaver_Workflow.md
- Troubleshooting_Log.md
- Skills_Demonstrated.md
- Lessons_Learned.md
- Future_Improvements.md
- Screenshots_README.md
- IAM-001_New_Employee_Onboarding.md
- IAM-002_Department_Transfer.md
- IAM-003_Employee_Termination.md

**Status:** Complete

---

# Project Milestones

| Milestone | Status |
|----------|--------|
| Project Planned | ✅ Complete |
| Joiner Workflow Completed | ✅ Complete |
| Mover Workflow Completed | ✅ Complete |
| Leaver Workflow Completed | ✅ Complete |
| Identity Validation Completed | ✅ Complete |
| Documentation Completed | ✅ Complete |
| Screenshots Captured | ✅ Complete |
| GitHub Ready | ✅ Complete |

---

# Skills Developed Throughout the Project

- Active Directory Administration
- Identity Lifecycle Management
- Joiner–Mover–Leaver (JML)
- User Provisioning
- User Deprovisioning
- Organizational Unit Administration
- Security Group Administration
- Role-Based Access Control (RBAC)
- Principle of Least Privilege
- Access Validation
- Enterprise Documentation

---

# Project Outcome

Project 04 successfully demonstrated the complete lifecycle of an enterprise identity using Microsoft Active Directory.

The project simulated realistic IAM operations by processing approved onboarding, department transfer, and employee termination requests while maintaining secure access controls, accurate identity information, and comprehensive technical documentation.

The completed project establishes a strong foundation for future identity automation, Microsoft Entra ID, Okta, PowerShell, and identity governance projects.