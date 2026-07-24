# Architecture

## Active Directory Organizational Structure

corp.cyberlab.local

│

Corporate

├── Administrative Accounts

├── Departments

│ ├── Executive

│ ├── Human Resources

│ ├── Information Technology

│ ├── Finance

│ ├── Marketing

│ ├── Operations

│ └── Sales

├── Computers

├── Groups

│ ├── Security Groups

│ └── Distribution Groups

├── Disabled Accounts

├── Contractors

└── Service Accounts

---

## Identity Architecture

Users

↓

Security Groups

↓

Permissions

↓

Resources

This follows Microsoft's Role-Based Access Control (RBAC) model.