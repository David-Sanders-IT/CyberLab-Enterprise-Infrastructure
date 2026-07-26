# IAM Ticket 002 – Department Transfer

## Ticket Information

| Field | Value |
|--------|-------|
| Ticket Number | IAM-002 |
| Request Type | Department Transfer |
| Priority | Medium |
| Status | Completed |
| Request Date | July 26, 2026 |
| Completion Date | July 26, 2026 |
| Requested By | Daniel Garcia |
| Department | Operations |

---

# Business Request

The Operations department submitted a request to transfer an existing employee from the Finance department to Operations.

The employee requires updated identity information and access modifications to reflect their new responsibilities.

The previous department's access must be removed to maintain the Principle of Least Privilege.

---

# Employee Information

| Attribute | Previous | Updated |
|-----------|----------|---------|
| Name | Maria Lopez | Maria Lopez |
| Username | maria.lopez | maria.lopez |
| Department | Finance | Operations |
| Job Title | Financial Analyst | Operations Analyst |
| Manager | Olivia Brown | Daniel Garcia |
| Employment Status | Active | Active |

---

# Requested Changes

Identity Updates

- Update Department
- Update Job Title
- Update Manager

Access Updates

- Remove Finance department access
- Assign Operations department access

Organizational Updates

- Move employee to the Operations Users Organizational Unit

---

# Approval

| Approver | Status |
|----------|--------|
| Daniel Garcia | Approved |
| Olivia Brown | Approved |

The transfer request was reviewed and approved before identity modifications began.

---

# Identity Modification Actions

The following actions were completed:

- Updated Job Title
- Updated Department
- Updated Manager
- Moved user object to Operations Users Organizational Unit
- Removed Finance_Users security group
- Added Operations_Users security group
- Verified updated identity information
- Validated new access

---

# Validation

The completed transfer was reviewed.

Validation Checklist

- Correct Organizational Unit
- Correct Department
- Correct Job Title
- Correct Manager
- Finance_Users removed
- Operations_Users assigned
- No privileged groups assigned
- Account remained enabled

All validation checks completed successfully.

---

# Security Controls Applied

The transfer followed enterprise IAM practices by ensuring that previous department access was removed before the request was closed.

Security principles demonstrated:

- Principle of Least Privilege
- Role-Based Access Control (RBAC)
- Identity Lifecycle Management
- Access Re-Provisioning
- Identity Validation

---

# Before and After Access Review

## Previous Access

```text
Domain Users
Finance_Users
```

## Updated Access

```text
Domain Users
Operations_Users
```

The previous department access was removed before the new access assignment was validated.

---

# Screenshots

| Figure | Screenshot |
|---------|------------|
| Figure 5 | 05_Mover_Before_Transfer.png |
| Figure 6 | 06_Mover_Identity_Updated.png |
| Figure 7 | 07_Mover_User_Moved_To_Operations.png |
| Figure 8 | 08_Mover_Access_Updated.png |

---

# Risk Assessment

If the previous department access had not been removed, the employee would have retained unnecessary permissions.

Potential risks include:

- Excessive access
- Unauthorized access to Finance resources
- Separation of duties violations
- Failed access reviews
- Increased insider threat exposure

Removing obsolete permissions reduced these risks and ensured access aligned with current business responsibilities.

---

# Ticket Resolution

The employee identity was successfully modified following an approved department transfer.

Identity attributes, Organizational Unit placement, and Role-Based Access Control assignments were updated to reflect the employee's new role.

The previous department's access was removed before ticket closure.

---

# Closure Status

**Resolved**

The employee now has access appropriate for the Operations department.

No further action required.