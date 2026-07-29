# Deployment Notes

## Objective

Deploy centralized Windows security policies using Group Policy while following enterprise Active Directory design principles.

---

## Group Policy Objects Created

- Corporate Computer Security Baseline
- Corporate Workstation Policy
- Corporate Drive Mapping
- Corporate Windows Defender
- Corporate Windows Firewall

---

## Security Configuration

Configured:

- Password History
- Password Length
- Password Complexity
- Account Lockout
- Legal Logon Banner
- Machine Inactivity Limit
- AutoPlay Disabled
- Microsoft Defender
- Windows Defender Firewall

---

## Active Directory Changes

The Windows 11 Enterprise workstation was moved from the default Computers container into:

Corporate

↓

Computers

↓

Desktops

This allowed computer policies to apply correctly.

---

## Deployment Validation

Deployment was validated using:

- gpupdate /force
- gpresult /r
- Resultant Set of Policy
- Control Panel restriction testing

---

## Result

The Corporate Computer Security Baseline successfully applied to the Windows 11 Enterprise workstation.