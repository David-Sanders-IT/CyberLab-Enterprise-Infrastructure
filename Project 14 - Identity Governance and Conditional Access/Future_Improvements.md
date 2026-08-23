# Future Improvements

## Project 14 – Microsoft Entra Identity Governance & Conditional Access

## Approval-Based PIM

The current lab requires MFA and justification for User Administrator activation.

A future version could require approval from a second administrator before privileged access is activated.

## PIM Ticket Integration

Require a service ticket or change request number during privileged role activation.

This would provide stronger traceability between privileged access and ITSM processes.

## Risk-Based Conditional Access

Additional policies could evaluate:

- User risk
- Sign-in risk
- Suspicious authentication activity
- Unfamiliar sign-in locations

## Device-Based Access

Future policies could require:

- Microsoft Intune compliant devices
- Microsoft Entra joined devices
- Hybrid Microsoft Entra joined devices

## Named Locations

Trusted corporate or lab locations could be configured and incorporated into Conditional Access policies.

## Authentication Strength

Future policies could require stronger authentication methods for sensitive administrative operations.

Examples include:

- Microsoft Authenticator
- FIDO2 security keys
- Passkeys

## Expanded Access Reviews

Additional access reviews could cover:

- Privileged groups
- Enterprise applications
- Guest identities
- Administrative roles
- Additional department groups

## Automatic Access Review Remediation

A future review could enable automatic result application.

Denied users would then be automatically removed after the review completes.

## Entitlement Management

Access packages could be implemented to provide:

- Request-based access
- Approval workflows
- Expiration
- Automatic removal
- Department-specific resource bundles

## Lifecycle Workflows

Microsoft Entra Lifecycle Workflows could be added to automate:

- Joiner processes
- Mover processes
- Leaver processes

## Microsoft Graph Automation

Microsoft Graph PowerShell could automate:

- Conditional Access deployment
- Governance reporting
- PIM audits
- Group membership analysis
- Access review reporting
- Sign-in log collection

## SIEM Integration

Microsoft Sentinel could ingest Entra identity logs to provide:

- Centralized monitoring
- Identity threat detection
- Alerting
- Investigation
- Security dashboards