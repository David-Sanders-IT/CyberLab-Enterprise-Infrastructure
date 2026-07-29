# Troubleshooting Log

## Issue

Computer policies were not applying.

---

### Investigation

gpresult showed:

Applied Group Policy Objects

Default Domain Policy

Corporate Computer Security Baseline was missing.

---

### Root Cause

The Windows 11 workstation remained inside the default Active Directory Computers container.

The GPO was linked to an Organizational Unit rather than the default Computers container.

---

### Resolution

Moved SFG-CL01 into:

Corporate

↓

Computers

↓

Desktops

Forced Group Policy update.

Validated using:

- gpupdate
- gpresult
- RSoP

---

### Result

Corporate Computer Security Baseline successfully applied.

---

## Issue

Control Panel access needed validation.

### Resolution

Attempted to open Control Panel.

Received:

"This operation has been cancelled due to restrictions in effect on this computer."

Policy successfully validated.