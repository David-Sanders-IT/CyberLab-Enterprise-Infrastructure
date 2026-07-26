# Future Improvements

## Project

Project 04 – Identity Lifecycle Management

---

# Overview

Project 04 successfully demonstrated manual Joiner–Mover–Leaver workflows within Active Directory.

Future improvements will focus on automation, stronger governance, improved validation, cloud identity integration, and more realistic enterprise controls.

The goal is to evolve the project from manual identity administration into a more scalable and auditable IAM solution.

---

# Improvement 1 – PowerShell Automation

The current workflow was completed manually through Active Directory Users and Computers.

Future versions should automate repetitive tasks using PowerShell.

Potential automation tasks include:

- Creating new user accounts
- Populating identity attributes
- Assigning managers
- Adding security group memberships
- Moving users between Organizational Units
- Disabling terminated accounts
- Removing department access
- Moving disabled accounts
- Exporting audit reports
- Generating completion logs

Example commands may include:

```powershell
New-ADUser
Set-ADUser
Add-ADGroupMember
Remove-ADGroupMember
Move-ADObject
Disable-ADAccount
Get-ADUser
```

Automation would improve consistency, reduce administrative errors, and decrease provisioning time.

---

# Improvement 2 – CSV-Based Bulk Provisioning

Future versions should support onboarding multiple employees from an approved CSV file.

Example fields:

```text
FirstName
LastName
Username
Department
JobTitle
Manager
Company
StartDate
EmploymentType
```

The automation should:

- Validate required fields
- Detect duplicate usernames
- Create accounts
- Assign attributes
- Place users in the correct OU
- Assign security groups
- Record failures
- Export a completion report

This would simulate larger enterprise onboarding events.

---

# Improvement 3 – Automated Joiner–Mover–Leaver Workflow

A complete JML automation should be developed.

## Joiner Automation

- Read approved employee data
- Generate username
- Create account
- Assign temporary password
- Populate business attributes
- Place account in the correct OU
- Assign role-based groups
- Generate an audit record

## Mover Automation

- Read approved transfer data
- Export current group memberships
- Remove previous department access
- Update title, manager, and department
- Move the account
- Assign new department access
- Generate a before-and-after report

## Leaver Automation

- Disable the account
- Reset the password
- Export group memberships
- Remove non-default groups
- Move the account to Disabled Accounts
- Record the completion time
- Generate an offboarding report

---

# Improvement 4 – Windows Client Validation

The current project validated identity changes through Active Directory administration tools.

A future version should include a domain-joined Windows 11 client.

Validation should include:

- Initial domain sign-in
- Password change at first logon
- Account lockout
- Password reset
- Account unlock
- Disabled-account sign-in failure
- Group membership refresh
- User profile creation
- Department transfer testing

This would provide end-to-end evidence that administrative changes affect the user experience as expected.

---

# Improvement 5 – Resource Access Testing

Future testing should connect security groups to actual business resources.

Examples include:

- Finance shared folder
- Operations shared folder
- HR shared folder
- IT administrative share
- Management-only folder

Testing should verify:

- Authorized users receive access
- Unauthorized users are denied
- Old access is removed after a transfer
- New access is granted after reassignment
- Disabled users cannot access resources

This would connect identity administration directly to authorization.

---

# Improvement 6 – Nested Group Strategy

The current project used department-based security groups.

A more advanced design should separate business roles from resource permissions.

Example:

```text
Maria Lopez
      ↓
Finance_Users
      ↓
Finance_Modify
      ↓
Finance Shared Folder
```

This approach supports an enterprise group-nesting model and reduces direct permission assignments.

Possible group categories:

- Department role groups
- Read-only resource groups
- Modify resource groups
- Application-access groups
- Administrative role groups

---

# Improvement 7 – Formal Approval Workflow

The project simulated approved service requests.

A future version should include a formal approval chain.

Example:

```text
HR Request
   ↓
Hiring Manager Approval
   ↓
Data Owner Approval
   ↓
IAM Provisioning
   ↓
Validation
   ↓
Ticket Closure
```

Higher-risk access should require additional approval.

Examples include:

- Finance systems
- HR records
- Administrative privileges
- Production systems
- Sensitive applications

---

# Improvement 8 – Separation of Duties Controls

Future workflows should include checks for conflicting access.

Examples:

- User cannot approve and process the same financial transaction
- Standard users cannot receive Domain Admin access
- Help Desk staff cannot modify privileged administrator accounts
- IAM administrators cannot approve their own access

The project could include a sample separation-of-duties conflict and document how it was denied or escalated.

---

# Improvement 9 – Access Review Process

A future version should include periodic access certification.

The review process should verify:

- User still works in the department
- Manager remains accurate
- Group memberships remain necessary
- Privileged access remains justified
- Disabled accounts remain properly retained
- Contractor accounts have valid expiration dates

The final review should record:

- Reviewer
- Date
- Decision
- Removed access
- Exceptions
- Follow-up actions

---

# Improvement 10 – Contractor Lifecycle Management

A contractor workflow should be added.

Contractor controls should include:

- Sponsor or manager assignment
- Start date
- End date
- Account expiration
- Limited group memberships
- Restricted resource access
- Periodic review
- Automatic disablement

This would demonstrate management of temporary and nonemployee identities.

---

# Improvement 11 – Privileged Access Management

Future versions should include stronger privileged-account controls.

Potential improvements:

- Separate standard and administrative accounts
- No email or web browsing from privileged accounts
- Time-limited administrative access
- Approval for privileged group membership
- Administrative activity logging
- Regular privileged access reviews
- Emergency access account documentation

This would extend the project toward Privileged Access Management.

---

# Improvement 12 – Microsoft Entra ID Integration

A future version should extend identity lifecycle management into Microsoft Entra ID.

Potential tasks include:

- Create cloud users
- Create cloud security groups
- Assign administrative roles
- Configure MFA
- Configure Self-Service Password Reset
- Review sign-in logs
- Review audit logs
- Create guest identities
- Explore hybrid identity synchronization

This would demonstrate both on-premises and cloud identity administration.

---

# Improvement 13 – Okta Integration

Okta could be added as an additional identity platform.

Potential tasks include:

- Create users
- Create groups
- Assign applications
- Configure MFA
- Suspend and reactivate users
- Configure self-service password reset
- Review System Log events
- Automate users through the Okta API
- Implement group-based application assignment

This would broaden the project beyond Microsoft-only identity technologies.

---

# Improvement 14 – API-Based Automation

Python or PowerShell could be used to automate cloud identity tasks through REST APIs.

Potential APIs include:

- Microsoft Graph API
- Okta API

Automation could include:

- User creation
- User suspension
- Group assignment
- Access-report generation
- Identity comparison
- Audit-log retrieval
- Application assignment

The automation should use:

- Secure token storage
- Environment variables
- Error handling
- Logging
- Input validation
- Least-privilege API permissions

---

# Improvement 15 – Audit Logging

Future automation should produce an audit log for each lifecycle action.

Recommended fields:

```text
Timestamp
Ticket ID
Target User
Action
Previous Value
New Value
Technician
Approval
Result
Error Message
```

Logs should be retained for review and troubleshooting.

---

# Improvement 16 – Error Handling and Rollback

Automated workflows should handle partial failures.

Example:

If the account is created but group assignment fails, the workflow should:

- Record the failure
- Avoid reporting the request as completed
- Alert the administrator
- Roll back unsafe changes when appropriate
- Preserve sufficient detail for troubleshooting

This would reduce the risk of partially provisioned identities.

---

# Improvement 17 – Naming Standards

A formal identity naming standard should be documented.

The standard should cover:

- Usernames
- Administrative accounts
- Service accounts
- Contractor accounts
- Security groups
- Distribution groups
- Organizational Units

Example:

```text
Standard User: firstname.lastname
Administrator: adm.firstname.lastname
Service Account: svc.application
Security Group: SG_Department_AccessLevel
```

Consistent naming improves reporting, automation, and troubleshooting.

---

# Improvement 18 – Identity Metrics

Future versions should track operational IAM metrics.

Examples include:

- Average onboarding time
- Average offboarding time
- Failed provisioning attempts
- Number of dormant accounts
- Number of locked accounts
- Number of expired contractors
- Access-review completion rate
- Accounts with excessive access
- Tickets completed within service-level targets

These metrics could be displayed in a dashboard.

---

# Improvement 19 – Ticketing-System Integration

The project currently uses Markdown-based tickets.

A future version could simulate or integrate with:

- ServiceNow
- Jira Service Management
- Freshservice
- Microsoft Forms and Power Automate

The workflow could automatically begin after approval and update the ticket with the final result.

---

# Improvement 20 – Governance and Compliance Mapping

Future documentation should map lifecycle controls to governance requirements.

Examples include:

- Least privilege
- Timely access removal
- Access certification
- Approval evidence
- Audit retention
- Separation of duties
- Privileged access control

This would help demonstrate how technical IAM tasks support broader security and compliance goals.

---

# Recommended Next Phase

The next major improvement should be:

```text
Project 05 – Identity-Based Resource Access
```

This project should connect Active Directory security groups to shared business resources and validate both approved and denied access.

After that, the strongest improvement would be:

```text
Project 10 – PowerShell IAM Administration
```

This would automate the manual Joiner–Mover–Leaver process completed in Project 04.

---

# Outcome

Project 04 established a strong manual identity lifecycle foundation.

The future improvements outlined in this document provide a path toward a scalable IAM environment that includes automation, cloud identity, governance, auditing, API integration, and stronger access controls.