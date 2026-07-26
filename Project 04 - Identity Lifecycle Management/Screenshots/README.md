# Screenshots

## Overview

This directory contains screenshots documenting the complete Identity Lifecycle Management workflow completed in Project 04.

The screenshots provide visual evidence of each stage of the Joiner, Mover, and Leaver (JML) process within the CyberLab Active Directory environment.

Each image corresponds to a specific identity management task and supports the documentation contained in the project README and workflow documents.

---

# Joiner Workflow

## 01_Joiner_User_Created.png

A new Active Directory user account (Maria Lopez) was created within the Finance Users Organizational Unit.

Demonstrates:

- User provisioning
- Correct Organizational Unit placement
- Enterprise directory organization

---

## 02_Joiner_Identity_Attributes.png

Business identity attributes were populated for the newly created user.

Attributes include:

- Job Title
- Department
- Company
- Manager

Demonstrates:

- Identity attribute management
- Business identity documentation
- Enterprise identity administration

---

## 03_Joiner_RBAC_Group_Assignment.png

The employee was assigned to the Finance_Users security group.

Demonstrates:

- Role-Based Access Control (RBAC)
- Group-based authorization
- Least Privilege

---

## 04_Joiner_Provisioning_Validated.png

Completed provisioning was validated after identity creation.

Validation included:

- Correct Organizational Unit
- Correct department
- Correct manager
- Correct group membership
- Enabled account

Demonstrates:

- Identity validation
- Quality assurance
- Provisioning verification

---

# Mover Workflow

## 05_Mover_Before_Transfer.png

Documents the employee's original security group membership before the department transfer.

Demonstrates:

- Existing access review
- Baseline identity state

---

## 06_Mover_Identity_Updated.png

Business identity attributes updated following an approved department transfer.

Changes include:

- Department
- Job Title
- Manager

Demonstrates:

- Identity modification
- Organizational change management

---

## 07_Mover_User_Moved_To_Operations.png

The employee account was relocated from the Finance Users Organizational Unit to the Operations Users Organizational Unit.

Demonstrates:

- Organizational Unit administration
- Directory organization
- Identity lifecycle management

---

## 08_Mover_Access_Updated.png

Finance access was removed and Operations access was assigned.

Demonstrates:

- Role-Based Access Control
- Access modification
- Principle of Least Privilege
- Department transfer

---

# Leaver Workflow

## 09_Leaver_Account_Disabled.png

Administrative confirmation of successful account disablement.

Demonstrates:

- Immediate access revocation
- Identity deprovisioning

---

## 10_Leaver_Disabled_User_Visible.png

Disabled account visible within the Operations Users Organizational Unit before archival.

Demonstrates:

- Account disablement
- Identity retention

---

## 11_Leaver_Department_Access_Removed.png

Department-specific security group removed during offboarding.

Demonstrates:

- Access deprovisioning
- Removal of unnecessary permissions
- Least Privilege

---

## 12_Leaver_Disabled_Accounts_OU.png

The disabled account relocated to the Disabled Accounts Organizational Unit.

Demonstrates:

- Secure offboarding
- Identity retention
- Audit readiness
- Enterprise account lifecycle management

---

# Identity Lifecycle Summary

The screenshots collectively document the complete employee identity lifecycle:

```text
Joiner
│
├── User Provisioning
├── Identity Attributes
├── Role Assignment
└── Validation

↓

Mover

├── Identity Update
├── OU Relocation
├── Access Removal
└── New Access Assignment

↓

Leaver

├── Account Disablement
├── Access Removal
├── Identity Retention
└── Disabled Accounts OU
```

---

# Skills Demonstrated

The screenshots provide evidence of the following Identity and Access Management skills:

- Active Directory Administration
- Identity Provisioning
- Identity Modification
- Identity Deprovisioning
- Joiner–Mover–Leaver (JML)
- Organizational Unit Administration
- Security Group Administration
- Role-Based Access Control (RBAC)
- Principle of Least Privilege
- Access Validation
- Enterprise Documentation

---

# Outcome

These screenshots document the successful completion of a full Joiner, Mover, and Leaver identity lifecycle within an enterprise Active Directory environment.

The evidence supports the technical documentation contained throughout Project 04 and demonstrates practical Identity and Access Management workflows commonly performed by enterprise IAM teams.