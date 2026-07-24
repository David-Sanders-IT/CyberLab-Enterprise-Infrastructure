# Troubleshooting Log

## Issue 1

Problem

Incorrect Organizational Unit structure.

Resolution

Created a dedicated Corporate Organizational Unit and organized departments underneath it.

Lesson Learned

Enterprise environments should separate users, groups, computers, and service accounts using Organizational Units.

---

## Issue 2

Problem

Contractors Organizational Unit could not be moved.

Cause

Accidentally initiated a Cut operation while managing Organizational Units.

Resolution

Cancelled the operation and retained the existing Organizational Unit structure.

Lesson Learned

Always verify object operations before making structural changes inside Active Directory.

---

## Issue 3

Problem

Need to separate privileged administration from daily activities.

Resolution

Created a dedicated administrative account.

adm.david.sanders

Added account to Domain Admins.

Lesson Learned

Administrators should maintain separate privileged and standard user accounts.