# Future Improvements

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

Project 05 successfully established an enterprise authorization model using Active Directory security groups, SMB shares, NTFS permissions, and the AGDLP framework.

Future improvements will focus on client-side validation, automation, advanced access controls, auditing, governance, and cloud identity integration.

The goal is to evolve the environment from a manually configured authorization model into a more automated, measurable, and enterprise-ready access-management platform.

---

# Improvement 1 – Windows 11 Client Validation

A domain-joined Windows 11 workstation should be added to test access from the end-user perspective.

Validation should include:

- Successful domain sign-in
- Department share access
- Unauthorized share denial
- Public share access
- Read-only Public permissions
- Group membership changes
- Disabled-account sign-in failure
- Department-transfer access changes

This will prove that server-side permission configuration produces the expected user experience.

---

# Improvement 2 – Authorized Access Testing

Future validation should confirm that department users can access only approved resources.

Examples:

```text
Finance User
    ↓
Finance Share
    ↓
Access Granted
```

```text
Operations User
    ↓
Operations Share
    ↓
Access Granted
```

Each successful test should include:

- User identity
- Group membership
- Resource path
- Result
- Screenshot
- Validation notes

---

# Improvement 3 – Unauthorized Access Testing

The project should include documented Access Denied scenarios.

Examples:

```text
Finance User
    ↓
Human Resources Share
    ↓
Access Denied
```

```text
Operations User
    ↓
Finance Share
    ↓
Access Denied
```

This will demonstrate department isolation and least-privilege enforcement.

---

# Improvement 4 – Public Folder Validation

The Public share should be tested to confirm:

- Domain users can access it
- Users can read files
- Users cannot modify files
- Users cannot delete files
- Users cannot create new files

This will verify that `DL_Public_Read` is functioning as intended.

---

# Improvement 5 – Effective Access Review

The Windows Effective Access tool should be used to verify permissions for selected users.

Tests should include:

- Approved department user
- Unauthorized department user
- IT administrator
- Disabled user
- Standard domain user

This provides an additional validation method beyond login testing.

---

# Improvement 6 – Access-Based Enumeration

Access-Based Enumeration should be enabled for departmental shares.

This would prevent users from seeing folders they cannot access.

Benefits include:

- Reduced confusion
- Cleaner user experience
- Less information exposure
- Improved least-privilege presentation

Users would see only the resources they are authorized to access.

---

# Improvement 7 – Group Policy Drive Mapping

Department shares should be mapped automatically using Group Policy Preferences.

Example:

```text
Finance_Users
    ↓
Finance Share mapped as F:
```

```text
Operations_Users
    ↓
Operations Share mapped as O:
```

Group Policy Item-Level Targeting could be used to apply mappings based on security group membership.

---

# Improvement 8 – Read-Only Permission Groups

The current design primarily uses Modify groups.

Future versions should include separate read-only groups.

Examples:

```text
DL_Finance_Read
DL_Finance_Modify
DL_HR_Read
DL_HR_Modify
```

This would support multiple permission levels for the same resource.

---

# Improvement 9 – Manager and Executive Access

Future versions could implement cross-department access for approved managers or executives.

Example:

```text
Executive_Users
    ↓
DL_Finance_Read
```

This would allow leadership to review departmental documents without receiving Modify access.

All cross-department access should require formal approval.

---

# Improvement 10 – Separation of Duties

Future testing should identify and prevent conflicting permissions.

Examples include:

- Finance users should not receive HR Modify access
- Standard users should not receive IT administrative access
- Help Desk users should not receive Domain Admin access
- Users should not approve their own access

This would extend the project toward stronger governance controls.

---

# Improvement 11 – Access Review Process

A formal access-review workflow should be created.

The review should verify:

- Users still belong to the correct department
- Global group membership remains necessary
- Domain Local group nesting remains accurate
- Public access remains read-only
- Disabled users no longer retain department access
- No users have direct NTFS permissions

The review should document:

- Reviewer
- Review date
- Group
- Resource
- Decision
- Removed access
- Exceptions

---

# Improvement 12 – Permission Audit Reporting

PowerShell should be used to generate reports containing:

- SMB shares
- Share permissions
- NTFS permissions
- Global group memberships
- Domain Local group memberships
- Nested group relationships
- Users with direct permissions
- Orphaned security identifiers

Reports should be exported to CSV for review.

---

# Improvement 13 – PowerShell Automation

The manual deployment should be automated.

Automation could include:

- Creating department folders
- Creating SMB shares
- Creating Global groups
- Creating Domain Local groups
- Nesting groups
- Disabling inheritance
- Applying NTFS permissions
- Applying Share permissions
- Producing validation reports

Potential commands include:

```powershell
New-Item
New-SmbShare
Grant-SmbShareAccess
Revoke-SmbShareAccess
New-ADGroup
Add-ADGroupMember
Get-Acl
Set-Acl
```

---

# Improvement 14 – Configuration from CSV

A CSV file could define the authorization model.

Example fields:

```text
Department
FolderPath
ShareName
GlobalGroup
DomainLocalGroup
SharePermission
NTFSPermission
```

A PowerShell script could read the file and build the complete environment automatically.

This would improve consistency and scalability.

---

# Improvement 15 – Logging and Error Handling

Future automation should include:

- Timestamped logs
- Success and failure status
- Permission-change records
- Duplicate detection
- Missing-group detection
- Missing-folder detection
- Exception handling
- Rollback procedures
- Dry-run mode

This would make the automation safer and easier to audit.

---

# Improvement 16 – File Server Separation

The current file services are hosted on the Domain Controller for lab purposes.

A more realistic enterprise architecture would deploy a separate member server.

Example:

```text
SFG-DC01
    ↓
Active Directory and DNS
```

```text
SFG-FS01
    ↓
SMB Shares and NTFS Resources
```

This would improve role separation and more closely reflect production architecture.

---

# Improvement 17 – Dedicated Data Volume

The current shares are stored under:

```text
C:\CorporateShares
```

A future version should use a dedicated data volume.

Example:

```text
D:\CorporateShares
```

Benefits include:

- Separation of operating system and business data
- Easier backups
- Improved storage management
- Cleaner disaster recovery
- Reduced risk during operating-system maintenance

---

# Improvement 18 – Backup and Recovery

Future versions should include:

- File Server backup
- Share configuration backup
- NTFS ACL backup
- File restore testing
- Deleted-file recovery
- Permission restoration
- Disaster-recovery documentation

The project should verify that both data and permissions can be restored.

---

# Improvement 19 – Shadow Copies

Volume Shadow Copy should be configured for shared folders.

This would allow users or administrators to recover previous file versions.

Testing should include:

- File modification
- Previous-version recovery
- Deleted-file restoration
- Retention validation

---

# Improvement 20 – File Server Resource Manager

File Server Resource Manager could be added to provide:

- Storage quotas
- File screening
- Storage reports
- Folder usage analysis
- Unauthorized file-type blocking

This would extend the project beyond permissions into enterprise file-services management.

---

# Improvement 21 – Auditing

Advanced auditing should be configured to record:

- Successful file access
- Failed file access
- File modification
- File deletion
- Permission changes
- Share access
- Administrative changes

Audit events should be reviewed in Event Viewer.

---

# Improvement 22 – Sensitive Department Controls

Finance, Human Resources, and Executive resources should receive enhanced controls.

Possible improvements include:

- More restrictive access
- Additional manager approval
- Access reviews
- Detailed auditing
- Read-only groups
- Encryption
- Data-loss prevention
- File classification

---

# Improvement 23 – Encryption

Future versions could implement:

- BitLocker for the file-server volume
- Encrypting File System for selected files
- SMB encryption
- Secure transport requirements

This would strengthen protection for data at rest and in transit.

---

# Improvement 24 – SMB Hardening

Future SMB security improvements should include:

- Disabling SMBv1
- Requiring SMB signing
- Enabling SMB encryption where appropriate
- Reviewing anonymous access
- Restricting guest access
- Reviewing firewall rules
- Monitoring SMB sessions

---

# Improvement 25 – Identity Lifecycle Automation

Project 05 should integrate with the Joiner–Mover–Leaver automation planned for Project 04.

## Joiner

```text
New employee created
    ↓
Department Global group assigned
    ↓
Resource access granted automatically
```

## Mover

```text
Old Global group removed
New Global group assigned
    ↓
Resource access changes automatically
```

## Leaver

```text
Department group removed
Account disabled
    ↓
Resource access revoked
```

This would create a complete identity-to-resource automation workflow.

---

# Improvement 26 – Microsoft Entra ID Integration

Future cloud identity projects could map on-premises groups to cloud resources.

Potential areas include:

- Hybrid group synchronization
- Microsoft 365 group access
- SharePoint permissions
- Teams access
- Cloud file resources
- Access packages
- Access reviews

---

# Improvement 27 – Okta Integration

Okta could be used to demonstrate application authorization alongside file-resource authorization.

This would show a broader model:

```text
Identity
    ↓
Business Role Group
    ├── Windows File Access
    └── SaaS Application Access
```

This would connect on-premises and cloud authorization.

---

# Improvement 28 – Identity Governance

A governance layer should be added to manage access requests and recertification.

Potential controls include:

- Access request forms
- Manager approval
- Data-owner approval
- Time-limited access
- Access expiration
- Periodic access review
- Automatic revocation
- Exception documentation

---

# Improvement 29 – Temporary Access

Future versions should support temporary access assignments.

Examples:

- Project-based Finance access
- Temporary manager access
- Audit-team read access
- Contractor resource access

Temporary permissions should include:

- Start date
- Expiration date
- Approval
- Business justification
- Review
- Automatic removal

---

# Improvement 30 – Authorization Metrics

Future versions should track:

- Number of shares
- Number of permission groups
- Users per department
- Direct permission assignments
- Unauthorized-access attempts
- Access-review completion rate
- Permission-removal time
- Onboarding access-delivery time
- Mover access-change time
- Offboarding revocation time

These metrics could be displayed in a dashboard.

---

# Recommended Next Phase

The strongest immediate improvement is:

```text
Windows 11 Enterprise Client Validation
```

This will provide direct evidence that authorized access succeeds and unauthorized access is denied.

After validation, the next major improvement should be:

```text
PowerShell IAM and Authorization Automation
```

That project should automate group creation, nesting, share creation, and ACL configuration.

---

# Outcome

Project 05 established a strong manual authorization foundation.

The improvements outlined in this document provide a path toward client validation, automation, auditing, governance, cloud integration, and enterprise-scale access management.