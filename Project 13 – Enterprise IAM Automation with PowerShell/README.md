# Project 13 – Enterprise IAM Automation with PowerShell

## Overview

This project demonstrates enterprise Identity and Access Management (IAM) automation using Windows PowerShell and Active Directory Domain Services (AD DS). The objective was to automate the complete identity lifecycle, including user provisioning, organizational hierarchy, role-based access control (RBAC), audit reporting, and employee offboarding.

Instead of manually creating and managing Active Directory objects, I developed reusable PowerShell automation that provisions users from a structured CSV file, assigns managers, creates and manages security groups, generates audit reports, and automates employee termination.

This project simulates real enterprise IAM operations commonly performed by Systems Administrators, IAM Analysts, and Active Directory Administrators.

---

# Objectives

- Automate Active Directory user provisioning
- Build an enterprise organizational hierarchy
- Implement Role-Based Access Control (RBAC)
- Automate manager assignments
- Generate enterprise identity audit reports
- Automate employee offboarding
- Improve consistency through scripting
- Eliminate repetitive manual administration

---

# Environment

## Platform

- VMware Workstation
- Windows Server 2022
- Active Directory Domain Services
- Windows PowerShell
- DNS
- Organizational Units
- Security Groups

## Domain

```text
corp.cyberlab.local
```

---

# Project Components

## User Provisioning

- Created 50 enterprise users
- Imported employee information from CSV
- Automatically assigned:
  - Name
  - Username
  - UPN
  - Department
  - Title
  - Company
  - Office
  - Organizational Unit
- Configured temporary passwords
- Forced password change at first logon

---

## Organizational Hierarchy

Automatically assigned manager relationships for all employees using ManagerUsername values from the CSV file.

Created a realistic enterprise reporting structure including:

- Executive Leadership
- Directors
- Managers
- Individual Contributors

---

## Role-Based Access Control (RBAC)

Created departmental security groups including:

- SG-Executive
- SG-IT
- SG-Finance
- SG-HR
- SG-Marketing
- SG-Sales
- SG-Operations

Automatically assigned all employees to the appropriate security group based on department.

---

## Enterprise Audit Reporting

Generated an automated Active Directory audit report containing:

- Name
- Username
- User Principal Name
- Department
- Job Title
- Company
- Office
- Manager
- Group Membership
- Organizational Unit
- Account Status

Exported results to CSV for auditing and administrative review.

---

## Employee Offboarding Automation

Developed an automated employee termination workflow that performs the following actions:

- Resets password
- Disables account
- Removes group memberships
- Moves account to Disabled Accounts OU
- Creates audit log
- Verifies completion

---

# PowerShell Scripts

| Script | Purpose |
|---------|---------|
| 01_Create_Users.ps1 | Bulk user provisioning |
| 02_Set_Managers.ps1 | Assign organizational hierarchy |
| 03_Create_Groups_And_Assign_Users.ps1 | Create RBAC groups and assign memberships |
| 04_Generate_AD_Audit_Report.ps1 | Generate enterprise audit report |
| 05_Terminate_Employee.ps1 | Automate employee offboarding |

---

# Skills Demonstrated

- Active Directory Administration
- PowerShell Automation
- Identity Lifecycle Management
- Enterprise User Provisioning
- Organizational Unit Administration
- Security Group Management
- Role-Based Access Control (RBAC)
- CSV Data Processing
- Enterprise Reporting
- Error Handling
- Logging
- Identity Governance Fundamentals
- Automation Development

---

# Project Results

Successfully automated:

- 50 Active Directory users
- 49 manager assignments
- 7 departmental security groups
- 50 RBAC group assignments
- Enterprise audit reporting
- Automated employee offboarding

Final Results:

- Users Created: 50
- Managers Assigned: 49
- Groups Created: 7
- Group Assignments: 50
- Failed Operations: 0

---

# Screenshots

1. Active Directory Module Validation
2. Active Directory User Query
3. PowerShell User Creation
4. User Modification
5. Password Reset
6. User Disabled
7. User Enabled
8. Security Group Creation
9. Organizational Unit Validation
10. Bulk User Provisioning
11. Manager Assignment
12. RBAC Group Assignment
13. Audit Report Generation
14. Audit Report Review
15. Employee Offboarding

---

# Key Takeaways

This project demonstrates how PowerShell can automate repetitive identity management tasks that would otherwise require significant manual effort. Building reusable automation improved consistency, reduced administrative overhead, and simulated enterprise IAM workflows used in production environments.

The project also reinforced the importance of structured data, organizational hierarchy, role-based access control, and lifecycle management when administering Active Directory at scale.

---

# Future Improvements

- Microsoft Entra ID integration
- Microsoft Graph automation
- Exchange Online mailbox provisioning
- Automatic Microsoft 365 licensing
- MFA enrollment automation
- ServiceNow integration
- HR system integration
- Lifecycle Workflows
- Scheduled provisioning
- Scheduled offboarding
- Email notifications
- PowerShell module packaging