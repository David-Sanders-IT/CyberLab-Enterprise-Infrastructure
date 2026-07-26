# Lessons Learned

## Project

Project 05 – Identity-Based Resource Access

---

# Overview

Project 05 demonstrated that secure access to business resources depends on more than creating shared folders.

A complete enterprise authorization model requires careful coordination between Active Directory groups, SMB share permissions, NTFS permissions, group nesting, and identity lifecycle processes.

The project reinforced the importance of separating identities from permissions and managing access through scalable group-based controls.

---

# Lesson 1 – Direct User Permissions Do Not Scale

Assigning permissions directly to individual users may work in a very small environment, but it becomes difficult to manage as the organization grows.

Direct permissions make it harder to:

- Audit access
- Remove access
- Process department transfers
- Maintain consistency
- Automate changes
- Identify excessive permissions

Using security groups provides a much cleaner and more scalable approach.

---

# Lesson 2 – Business Roles and Resource Permissions Should Be Separate

Global groups and Domain Local groups serve different purposes.

Global groups represent:

- Departments
- Job roles
- Business functions

Domain Local groups represent:

- Resource permissions
- Access levels
- Folder authorization

This separation makes the environment easier to understand and maintain.

---

# Lesson 3 – AGDLP Simplifies Enterprise Authorization

The AGDLP model created a clear access path:

```text
Account
   ↓
Global Group
   ↓
Domain Local Group
   ↓
Permission
```

This design allows administrators to change user access by modifying group membership instead of editing folder permissions.

That is especially useful during onboarding, transfers, and offboarding.

---

# Lesson 4 – Share Permissions and NTFS Permissions Work Together

Share Permissions and NTFS Permissions are separate security layers.

Share Permissions apply when a resource is accessed over the network.

NTFS Permissions apply to the file system itself.

The final effective permission is determined by the most restrictive combination of both layers.

This means a user may have Full Control at the share level but only Modify at the NTFS level, resulting in an effective permission of Modify.

---

# Lesson 5 – NTFS Should Be the Primary Security Layer

Using broader Share Permissions and more restrictive NTFS Permissions simplifies administration.

This approach allows the organization to manage authorization primarily through the NTFS ACL.

Benefits include:

- Fewer permission conflicts
- Easier troubleshooting
- More consistent access
- Clearer security design
- Better scalability

---

# Lesson 6 – Default Permissions Must Be Reviewed

Default inherited permissions may provide broader access than the business requires.

The inherited `Users` entry could have allowed unnecessary access to departmental resources.

Removing broad permissions and replacing them with approved Domain Local groups improved least-privilege enforcement.

---

# Lesson 7 – Inheritance Must Be Managed Carefully

Disabling inheritance gives administrators greater control over individual folder ACLs.

However, inherited permissions should first be converted into explicit permissions before entries are removed.

This reduces the risk of accidentally locking administrators or the operating system out of the resource.

---

# Lesson 8 – Administrative Access Must Be Preserved

While reducing broad access, it is still necessary to preserve access for:

- SYSTEM
- Administrators
- Approved support personnel
- Resource owners when required

Removing permissions without understanding their purpose can make resources difficult to manage or recover.

---

# Lesson 9 – Public Access Should Still Be Controlled

A Public folder does not mean unrestricted access.

In this project, Public access was limited to authenticated domain users through:

```text
Domain Users
   ↓
DL_Public_Read
   ↓
Public Folder
```

Users were given read-only access instead of Modify rights.

This allows broad visibility without allowing unauthorized changes.

---

# Lesson 10 – Naming Conventions Improve Administration

The naming convention made group purpose easy to identify.

Examples:

```text
Finance_Users
DL_Finance_Modify
DL_Public_Read
```

The prefix and suffix communicate:

- Group scope
- Department
- Permission level
- Intended purpose

Consistent naming supports troubleshooting, auditing, and future automation.

---

# Lesson 11 – Access Changes Should Be Driven by Identity Changes

Project 05 connected directly to the Joiner–Mover–Leaver workflows from Project 04.

A user’s access should change because their identity or business role changes.

Example:

```text
Employee moves from Finance to Operations
        ↓
Finance_Users removed
        ↓
Operations_Users added
        ↓
Resource access changes automatically
```

No NTFS permissions need to be edited during the transfer.

---

# Lesson 12 – Group Nesting Reduces Permission Sprawl

Using nested groups prevents the folder ACL from becoming filled with individual users and multiple business-role groups.

The ACL remains simple:

```text
DL_Finance_Modify
```

The membership behind that group can change without altering the resource permission itself.

This creates a cleaner and more maintainable environment.

---

# Lesson 13 – Access Must Be Validated, Not Assumed

A configuration may appear correct in Active Directory and still fail from the user’s perspective.

Final validation should confirm:

- Authorized access succeeds
- Unauthorized access is denied
- Public access is read-only
- Group membership changes affect access
- Disabled users cannot authenticate

Client-side testing is necessary before the project can be considered fully validated.

---

# Lesson 14 – Authorization Is Different From Authentication

Authentication answers:

```text
Who are you?
```

Authorization answers:

```text
What are you allowed to access?
```

Active Directory authenticates the user.

Security groups, Share Permissions, and NTFS Permissions determine authorization.

This project focused primarily on the authorization side of IAM.

---

# Lesson 15 – Least Privilege Requires Intentional Design

Least privilege does not happen automatically.

It requires administrators to:

- Remove unnecessary default permissions
- Assign access through approved groups
- Limit access by department
- Use read-only access where appropriate
- Avoid direct user permissions
- Review final ACLs

The project demonstrated that least privilege must be built into the architecture from the beginning.

---

# Lesson 16 – Manual Configuration Creates Automation Opportunities

The authorization model was configured manually to understand each component.

Future PowerShell automation could:

- Create folders
- Create SMB shares
- Create Global groups
- Create Domain Local groups
- Nest groups
- Configure Share Permissions
- Apply NTFS ACLs
- Generate access reports

Understanding the manual process provides the foundation for safe automation.

---

# Lesson 17 – Documentation Improves Security

Documenting the architecture, naming standards, group nesting, and permission model makes the environment easier to:

- Review
- Audit
- Troubleshoot
- Transfer to another administrator
- Automate
- Expand

Good documentation is part of the security control, not just an administrative extra.

---

# Key Takeaway

The most important lesson from Project 05 is that enterprise authorization should be managed through structured group relationships rather than direct permissions.

The final model follows this pattern:

```text
Identity
   ↓
Business Role
   ↓
Permission Group
   ↓
Share and NTFS Permissions
   ↓
Business Resource
```

This design supports scalability, least privilege, cleaner audits, and efficient identity lifecycle management.

---

# Outcome

Project 05 strengthened practical understanding of Active Directory authorization, AGDLP, SMB shares, NTFS permissions, permission inheritance, and group-based access control.

The project also created a strong foundation for future Windows client validation, PowerShell automation, access reviews, Microsoft Entra ID, Okta, and identity governance.