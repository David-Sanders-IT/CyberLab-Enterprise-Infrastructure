# Troubleshooting Log

## Issue 1

Problem

DNS Delegation Warning

Cause

No parent DNS infrastructure exists because this is the first Domain Controller.

Resolution

Accepted warning and continued installation.

Lesson Learned

DNS delegation warnings are expected during first forest creation.

---

## Issue 2

Problem

Selecting a domain name.

Decision

Selected:

corp.cyberlab.local

Reason

Provides a professional internal Active Directory namespace suitable for enterprise lab environments.

---

## Issue 3

Problem

Choosing Domain Controller options.

Resolution

Enabled

- DNS
- Global Catalog

Disabled

- Read Only Domain Controller

Reason

Microsoft best practice for first Domain Controller.

---

## Interview Talking Point

Built a Windows Server Active Directory forest from scratch by installing Active Directory Domain Services, configuring integrated DNS, creating a new forest, and promoting the server into the first Domain Controller while validating prerequisite checks and documenting the deployment.