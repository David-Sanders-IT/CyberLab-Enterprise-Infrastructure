# Project Screenshots

## Overview

This folder contains validation screenshots documenting the development, testing, validation, and automation of the Enterprise IAM Automation with PowerShell project.

The screenshots demonstrate each major phase of the identity lifecycle automation process, from individual user administration to enterprise-scale provisioning, reporting, and employee offboarding.

---

# Screenshot Index

| Screenshot | Description |
|------------|-------------|
| 01_ActiveDirectory_Module_Validated.png | Verified the Active Directory PowerShell module and connectivity to the domain. |
| 02_AD_User_Query.png | Queried Active Directory user objects using PowerShell. |
| 03_PowerShell_User_Created.png | Created an Active Directory user account using `New-ADUser`. |
| 04_AD_User_Modified.png | Modified user attributes using `Set-ADUser`. |
| 05_AD_Password_Reset.png | Reset an Active Directory user password using PowerShell. |
| 06_AD_User_Disabled.png | Disabled an Active Directory user account. |
| 07_AD_User_Enabled.png | Re-enabled a previously disabled Active Directory user account. |
| 08_AD_Security_Group_Created.png | Created an Active Directory security group using PowerShell. |
| 09_OU_Validation_Complete.png | Validated Organizational Unit paths before bulk provisioning. |
| 10_Bulk_User_Creation.png | Successfully provisioned 50 Active Directory users from a CSV file with zero failures. |
| 11_Manager_Assignment.png | Assigned manager relationships automatically using the Manager attribute. |
| 12_RBAC_Group_Assignment.png | Created departmental security groups and automatically assigned users using RBAC. |
| 13_AD_Audit_Report_Generated.png | Generated an enterprise Active Directory audit report. |
| 14_AD_Audit_Report_Review.png | Reviewed the exported audit report containing user, department, manager, group, and OU information. |
| 15_Employee_Offboarding_Complete.png | Automated employee termination including password reset, account disablement, group removal, OU relocation, and logging. |

---

# Validation Summary

This project validates:

## Identity Administration

- Active Directory PowerShell administration
- User provisioning
- User modification
- Password management
- Account enablement
- Account disablement

## Enterprise Automation

- CSV-driven provisioning
- Bulk user creation
- Organizational hierarchy automation
- Manager assignment
- Error handling
- Logging

## Role-Based Access Control

- Security group creation
- Department-based RBAC
- Automated group membership assignment

## Enterprise Reporting

- Active Directory audit reporting
- CSV export
- Identity inventory
- Administrative review

## Identity Lifecycle

- User provisioning
- User management
- Organizational hierarchy
- RBAC implementation
- Employee offboarding

---

# Project Results

## Provisioning

- 50 Active Directory users created
- 49 manager relationships assigned
- 7 departmental security groups created
- 50 RBAC group memberships assigned

## Reporting

- Enterprise audit report generated
- Administrative logging completed
- CSV reporting exported successfully

## Offboarding

- Password reset
- Account disabled
- Security groups removed
- Account moved to Disabled Accounts OU
- Audit log generated

---

# Outcome

The project successfully demonstrates enterprise-scale Identity and Access Management automation using Windows PowerShell and Active Directory.

Manual identity administration tasks were transformed into reusable automation capable of provisioning users, managing reporting relationships, implementing RBAC, generating audit reports, and automating employee offboarding while maintaining validation and logging throughout the identity lifecycle.