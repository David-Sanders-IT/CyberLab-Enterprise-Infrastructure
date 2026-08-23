# Troubleshooting Log

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Issue 1 – Microsoft Entra Premium Features Unavailable

### Symptom

The tenant displayed an error stating:

Microsoft Entra ID Premium licensing was required.

### Cause

The CyberLab tenant initially lacked Microsoft Entra ID Premium licensing.

### Resolution

Microsoft Entra ID P2 was activated through the available trial.

### Result

Conditional Access, PIM, Identity Protection, and access review functionality became available.

---

## Issue 2 – Successful Sign-In Missing from Logs

### Symptom

After signing in as IAM Test User 1, only an earlier failed authentication attempt appeared.

### Cause

Entra sign-in log ingestion was delayed.

### Resolution

Waited several minutes and refreshed the sign-in logs.

### Result

The successful authentication appeared.

---

## Issue 3 – Conditional Access Showed Not Applicable

### Symptom

A new IAM Test User 1 authentication displayed:

`Not applicable`

under Conditional Access.

### Investigation

The same policy had already successfully matched in Report-only mode.

The Conditional Access policy configuration was reviewed.

### Root Cause

`CA-Require-MFA-Test-Users` was still configured as Report-only.

### Resolution

Changed the policy state from:

`Report-only`

to:

`On`

A new Incognito authentication was generated.

### Result

The Conditional Access result displayed:

`CA-Require-MFA-Test-Users – Success`

---

## Issue 4 – Security Defaults Appeared After Being Disabled

### Symptom

Some sign-in events continued showing Security Defaults after Security Defaults had been disabled.

### Cause

The events being reviewed occurred before the tenant configuration was changed.

Entra authentication logs preserve the policy state at the time of the event.

### Resolution

Generated a new authentication after disabling Security Defaults.

### Result

The new event showed the custom Conditional Access policy.

---

## Issue 5 – Administrator Policy Initially Appeared Only in Report-Only Results

### Symptom

`CA-Require-MFA-Admins` appeared under the Report-only tab rather than active Conditional Access enforcement.

### Cause

The sign-in event occurred while the administrator policy was still being evaluated in Report-only mode.

### Resolution

The policy was changed to On and a new authentication was generated.

### Result

The Conditional Access tab showed:

`CA-Require-MFA-Admins – Success`

---

## Issue 6 – Initial Access Review Completed Too Soon

### Symptom

`Quarterly-Finance-Access-Review-Lab`

showed:

`Complete`

before reviewer decisions could be submitted.

### Cause

The original review period was too short for the test workflow.

### Resolution

Created:

`Quarterly-Finance-Access-Review-Lab-v2`

with a longer review period.

### Result

The second review transitioned through:

`Not started → Initializing → Active`

and remained available for review.

---

## Issue 7 – Unable to Approve or Deny Users from Entra Admin Center

### Symptom

The Access Review Reviewers page only displayed the assigned reviewer.

No approval or denial controls were available.

### Cause

Access Review configuration is managed through the Entra admin center, but reviewer decisions are completed through Microsoft My Access.

### Resolution

Opened Microsoft My Access using the assigned reviewer account.

### Result

All three user decisions were successfully submitted.

---

## Issue 8 – Denied User Remained in Finance Group

### Symptom

IAM Test User 2 remained a member of the Finance access group after being denied.

### Cause

Automatic application of review results had intentionally been disabled.

### Resolution

IAM Test User 2 was manually removed from:

`GRP-AccessReview-Finance`

### Result

Only approved users remained:

- IAM Test User 1
- IAM Test User 3

## Key Troubleshooting Takeaways

- Confirm licensing before beginning advanced Entra labs.
- Expect short cloud processing delays.
- Validate Conditional Access policy state.
- Use Report-only before enforcement.
- Generate fresh authentication events after changes.
- Review historical logs in context.
- Allow enough time for access reviews.
- Use Microsoft My Access for reviewer decisions.
- Always validate remediation after governance decisions.