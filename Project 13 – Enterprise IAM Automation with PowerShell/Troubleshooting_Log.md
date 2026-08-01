# Troubleshooting Log

## Overview

During development of the Enterprise IAM Automation with PowerShell project, several issues were encountered while automating Active Directory administration.

Each issue was investigated, validated, and resolved before continuing to the next phase of the automation process.

---

# Issue 1

## Organizational Unit Path Validation Failed

### Symptom

PowerShell returned:

```text
Directory object not found
```

during user provisioning.

### Root Cause

The Distinguished Names used in the CSV file did not match the Organizational Units that existed inside Active Directory.

Examples included:

- Incorrect Organizational Unit names
- Incorrect Distinguished Names
- Incorrect OU hierarchy

### Resolution

Verified Organizational Units using:

```powershell
Get-ADOrganizationalUnit `
    -Filter *
```

Updated every Organizational Unit path inside the CSV file to match the Active Directory environment before rerunning the provisioning script.

---

# Issue 2

## CSV Data Did Not Match Active Directory

### Symptom

Automation failed while locating Organizational Units.

### Root Cause

The original CSV file was built for a different Active Directory structure.

Department Organizational Units required updating before automation could succeed.

### Resolution

Updated:

- Organizational Units
- User Principal Names
- Manager references
- Distinguished Names

Validated all Organizational Units before provisioning.

---

# Issue 3

## Organizational Unit Naming Error

### Symptom

Information Technology users failed validation.

### Root Cause

The Organizational Unit had originally been created as:

```text
Informaton Technology
```

instead of

```text
Information Technology
```

PowerShell requires Distinguished Names to match exactly.

### Resolution

Updated the CSV file to match the existing Organizational Unit name.

Successfully validated every Organizational Unit before provisioning users.

---

# Issue 4

## Script File Not Found

### Symptom

PowerShell returned:

```text
Cannot find path...
```

when attempting to execute the provisioning script.

### Root Cause

The PowerShell script had not been saved inside the expected directory.

### Resolution

Created:

```text
C:\PowerShell\01_Create_Users.ps1
```

Verified the script path before execution.

---

# Issue 5

## Empty Script File

### Symptom

The script executed without errors but produced no output.

### Root Cause

The PowerShell script file contained no code.

### Resolution

Added the provisioning script to the file and verified the file size before execution.

---

# Issue 6

## Active Directory Property Errors

### Symptom

PowerShell reported invalid Active Directory properties during testing.

### Root Cause

Incorrect property names were requested during verification.

### Resolution

Reviewed Active Directory cmdlet documentation and corrected the requested properties before rerunning the commands.

---

# Issue 7

## Security Groups Missing

### Symptom

RBAC assignment failed.

### Root Cause

Department Security Groups had not yet been created.

### Resolution

Developed a PowerShell script to:

- Create Security Groups
- Verify existing groups
- Assign department memberships

Successfully assigned all users after creating the required groups.

---

# Issue 8

## Manager Assignment Validation

### Symptom

Manager attributes initially appeared blank.

### Root Cause

Manager assignment script had not yet executed.

### Resolution

Executed the manager automation script.

Verified reporting relationships using:

```powershell
Get-ADUser `
    -Properties Manager
```

Confirmed all manager assignments completed successfully.

---

# Issue 9

## Employee Offboarding Validation

### Symptom

Employee offboarding required verification beyond script execution.

### Resolution

Validated:

- Account disabled
- Password reset
- Group memberships removed
- User moved to Disabled Accounts Organizational Unit
- Log file created

Confirmed successful completion of the entire offboarding workflow.

---

# Validation Summary

The completed automation successfully validated:

✓ Organizational Units

✓ User Provisioning

✓ Manager Assignment

✓ Security Group Creation

✓ RBAC Assignment

✓ Enterprise Reporting

✓ Employee Offboarding

✓ Administrative Logging

---

# Lessons From Troubleshooting

The troubleshooting process reinforced several important enterprise administration practices:

- Always validate Organizational Units before provisioning.
- Verify Distinguished Names instead of assuming paths.
- Build automation in modular scripts rather than one large script.
- Validate CSV data before execution.
- Implement logging for every automated task.
- Test automation in small stages before scaling to enterprise deployments.
- Verify results after every automation phase.

---

# Final Status

All identified issues were successfully resolved.

The completed automation platform provisioned fifty enterprise users, configured organizational hierarchy, implemented department-based RBAC, generated enterprise audit reports, and automated employee offboarding with zero failed operations during the final production run.