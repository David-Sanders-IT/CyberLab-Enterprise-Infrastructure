# IAM Ticket 003 – Employee Termination

## Ticket Information

| Field | Value |
|--------|-------|
| Ticket Number | IAM-003 |
| Request Type | Employee Termination |
| Priority | High |
| Status | Completed |
| Request Date | July 26, 2026 |
| Completion Date | July 26, 2026 |
| Requested By | Human Resources |
| Department | Operations |

---

# Business Request

Human Resources submitted a request to terminate an employee's access following the end of employment.

The employee's access must be revoked immediately to prevent unauthorized authentication while preserving the account for auditing, legal, and compliance purposes.

---

# Employee Information

| Attribute | Value |
|-----------|-------|
| Name | Maria Lopez |
| Username | maria.lopez |
| Department | Operations |
| Job Title | Operations Analyst |
| Manager | Daniel Garcia |
| Employment Status | Terminated |

---

# Requested Actions

Identity Actions

- Disable Active Directory account
- Preserve user identity

Access Actions

- Remove department security group
- Verify no privileged group membership remains

Directory Actions

- Move account to Disabled Accounts Organizational Unit

Retention Actions

- Preserve account for audit and compliance
- Do not delete the identity

---

# Approval

| Approver | Status |
|----------|--------|
| Human Resources | Approved |
| Daniel Garcia | Approved |

The termination request was reviewed and approved before access removal began.

---

# Identity Deprovisioning Actions

The following actions were completed:

- Disabled Active Directory account
- Verified account could no longer authenticate
- Removed Operations_Users security group
- Confirmed no privileged access remained
- Moved account to Disabled Accounts Organizational Unit
- Preserved identity for retention
- Validated completed offboarding

---

# Validation

The completed offboarding process was reviewed.

Validation Checklist

- Account disabled
- Department access removed
- No privileged groups assigned
- Account preserved
- Correct Organizational Unit
- Identity retained
- Offboarding completed successfully

All validation checks passed.

---

# Security Controls Applied

The offboarding process followed enterprise Identity and Access Management practices.

Security principles demonstrated:

- Principle of Least Privilege
- Identity Lifecycle Management
- Secure Deprovisioning
- Access Revocation
- Account Retention
- Audit Readiness

---

# Before and After Review

## Before Offboarding

```text
Status:
Enabled

Groups

Domain Users
Operations_Users

Organizational Unit

Operations
└── Users
```

---

## After Offboarding

```text
Status:
Disabled

Groups

Domain Users

Organizational Unit

Disabled Accounts
```

---

# Risk Assessment

Failure to properly offboard terminated employees can result in:

- Unauthorized authentication
- Excessive permissions
- Insider threats
- Unauthorized access to business resources
- Failed security audits
- Compliance violations
- Loss of accountability

The completed workflow reduced these risks by immediately disabling the account, removing department access, and preserving the identity for auditing.

---

# Screenshots

| Figure | Screenshot |
|---------|------------|
| Figure 9 | 09_Leaver_Account_Disabled.png |
| Figure 10 | 10_Leaver_Disabled_User_Visible.png |
| Figure 11 | 11_Leaver_Department_Access_Removed.png |
| Figure 12 | 12_Leaver_Disabled_Accounts_OU.png |

---

# Ticket Resolution

The employee identity was successfully deprovisioned following an approved termination request.

Authentication was immediately revoked, department-specific access was removed, and the account was preserved in the Disabled Accounts Organizational Unit to support auditing, compliance, and future review.

The offboarding process was completed in accordance with enterprise Identity and Access Management practices.

---

# Closure Status

**Resolved**

The employee account has been disabled, department access removed, identity retained, and no additional action is required.