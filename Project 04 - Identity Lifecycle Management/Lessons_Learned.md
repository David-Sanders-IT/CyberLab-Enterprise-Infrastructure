# Lessons Learned

## Project

Project 04 – Identity Lifecycle Management

---

# Overview

This project demonstrated that identity administration is not limited to creating user accounts.

Effective Identity and Access Management requires a controlled process for provisioning, modifying, validating, and deprovisioning access throughout the employee lifecycle.

The Joiner–Mover–Leaver model provided a structured way to manage identity changes while maintaining least privilege and accurate directory information.

---

# Lesson 1 – Identity Creation Is Only the Beginning

Creating a user account does not complete the onboarding process.

A properly provisioned identity also requires:

- Correct Organizational Unit placement
- Accurate business attributes
- Manager assignment
- Department assignment
- Role-based group membership
- Initial password controls
- Final validation

The project showed that an account can exist successfully while still being incomplete from an IAM perspective.

---

# Lesson 2 – Business Attributes Matter

Fields such as department, title, company, and manager are not cosmetic.

These attributes can support:

- Automated provisioning
- Access reviews
- Manager approvals
- Identity governance
- Reporting
- Audit investigations
- Dynamic group assignment

Accurate identity data is necessary for both manual and automated IAM processes.

---

# Lesson 3 – Access Should Be Assigned Through Groups

Permissions should be assigned through security groups instead of directly to individual users.

The access model used in this project was:

```text
User
  ↓
Business Role Group
  ↓
Resource Access
```

This approach makes access easier to:

- Review
- Remove
- Audit
- Scale
- Standardize
- Automate

It also reduces inconsistent permission assignments.

---

# Lesson 4 – Movers Create Significant Access Risk

A department transfer is not complete when the user’s title and OU are updated.

The previous department’s access must also be removed.

During the mover workflow, Maria Lopez’s Finance access was removed before Operations access was assigned.

This prevented the user from retaining unnecessary cross-department access.

The project reinforced that movers can create excessive access when old permissions are not removed promptly.

---

# Lesson 5 – Identity Data and Authorization Must Be Updated Separately

Changing the department field does not automatically change security group membership.

Likewise, moving a user to another OU does not automatically remove previous access.

The mover workflow required separate changes to:

- Job title
- Department
- Manager
- Organizational Unit
- Security group membership

Each item required its own validation.

---

# Lesson 6 – Account Disablement Should Happen First

During employee termination, the first technical action should be disabling the account.

This immediately blocks authentication while allowing the organization to continue with the remaining offboarding steps.

The project showed the importance of separating urgent access revocation from later administrative cleanup.

---

# Lesson 7 – Disabling an Account Is Not Complete Offboarding

A disabled account can still retain group memberships.

If the account is re-enabled accidentally, those permissions may become active again.

A complete leaver process should include:

- Account disablement
- Department group removal
- Privileged access removal
- OU relocation
- Retention validation
- Audit documentation

Removing access after disabling the account reduces the risk of unintended restoration.

---

# Lesson 8 – Accounts Should Not Always Be Deleted Immediately

Deleting a terminated account immediately may remove useful identity history.

Retaining a disabled account can support:

- Audit investigations
- Legal hold
- Compliance requirements
- Historical reporting
- Resource ownership review
- Rehire scenarios

The project used a Disabled Accounts OU to preserve the identity while separating it from active users.

---

# Lesson 9 – OU Structure Supports Lifecycle Management

A clear Organizational Unit structure improves:

- User organization
- Delegated administration
- Group Policy targeting
- Reporting
- Account retention
- Lifecycle processing

Moving Maria between department OUs and later into the Disabled Accounts OU demonstrated how directory structure supports identity state management.

---

# Lesson 10 – Validation Is a Required IAM Control

Every lifecycle action should be verified before the ticket is closed.

Validation in this project included:

- Confirming account status
- Checking OU placement
- Reviewing identity attributes
- Reviewing security group membership
- Comparing the final state with the approved request
- Confirming that unnecessary access was removed

This reduced the chance of incomplete or incorrect changes.

---

# Lesson 11 – Before-and-After Evidence Improves Auditing

The mover workflow included screenshots of group membership before and after the transfer.

This provided clear evidence that:

- Previous access existed
- Old access was removed
- New access was assigned

Before-and-after documentation is especially useful for:

- Audits
- Change reviews
- Troubleshooting
- Approval verification
- Security investigations

---

# Lesson 12 – IAM Work Is Driven by Business Requests

Identity changes should not be made solely because an administrator receives an informal request.

Each workflow in this project was based on an approved service ticket.

The ticket established:

- Who requested the change
- Why the change was needed
- Which identity was affected
- What access was required
- Whether approval existed
- What validation was expected

This reinforced the connection between business processes and technical identity administration.

---

# Lesson 13 – Least Privilege Requires Ongoing Maintenance

Least privilege is not a one-time configuration.

It must be maintained throughout the identity lifecycle.

In this project:

- Maria received only Finance access during onboarding.
- Finance access was removed during the department transfer.
- Operations access was removed during offboarding.
- No privileged access was assigned.

This demonstrated that least privilege depends on timely access changes.

---

# Lesson 14 – Manual Processes Create Automation Opportunities

The workflows were completed manually to understand each identity-management step.

The same process could later be automated using PowerShell, Microsoft Graph, Okta APIs, or identity governance platforms.

Automation opportunities include:

- User creation
- Attribute population
- Group assignment
- OU placement
- Account disablement
- Group removal
- Reporting
- Audit logging

Understanding the manual workflow first provides a strong foundation for safe automation.

---

# Key Takeaway

The most important lesson from this project is that secure identity management requires coordination between people, business processes, directory data, access controls, and documentation.

A successful IAM workflow must answer five questions:

1. Who is the user?
2. What is the user’s current business role?
3. What access is approved?
4. What access should be removed?
5. How was the final identity state validated?

---

# Outcome

Project 04 strengthened practical understanding of Joiner–Mover–Leaver operations, Role-Based Access Control, least privilege, access validation, and secure offboarding.

The project also established a foundation for future automation, Microsoft Entra ID, Okta, identity governance, and access-review projects.