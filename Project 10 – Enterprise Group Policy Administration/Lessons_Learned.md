# Lessons Learned

## Project Summary

This project demonstrated how enterprise administrators deploy, validate, and troubleshoot centralized Windows security policies using Group Policy.

Rather than simply creating Group Policy Objects, the project emphasized proper Active Directory design, Organizational Unit targeting, deployment validation, and troubleshooting.

---

## Technical Lessons

- Group Policy Objects should be organized according to their purpose.
- Computer policies should target Computer Organizational Units.
- User policies should target User Organizational Units.
- Proper OU placement is critical for successful policy deployment.
- Validation is as important as configuration.

---

## Troubleshooting Lessons

During validation, the Corporate Computer Security Baseline initially failed to apply.

Using gpresult identified that the Windows 11 workstation remained in the default Active Directory Computers container.

Moving the workstation into the Corporate → Computers → Desktops Organizational Unit resolved the issue.

This reinforced the importance of verifying Active Directory object placement before troubleshooting policy settings.

---

## Enterprise Lessons

Enterprise Group Policy administration involves:

- Planning
- Architecture
- Deployment
- Validation
- Troubleshooting

Each phase is equally important for maintaining a secure Windows environment.

---

## Skills Strengthened

- Active Directory
- Group Policy
- Windows Administration
- Windows Security
- Enterprise Troubleshooting
- Technical Documentation