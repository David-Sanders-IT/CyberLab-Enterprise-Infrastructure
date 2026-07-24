# Deployment Notes

## Project Objective

Build a scalable enterprise Active Directory environment capable of supporting identity administration for CyberLab.

---

# Step 1

## Active Directory Users and Computers

Opened Active Directory Users and Computers (ADUC).

Purpose

Manage users, groups, computers, and Organizational Units.

Result

Verified successful Active Directory deployment.

---

# Step 2

## Organizational Unit Design

Created the following Organizational Units.

Corporate

Administrative Accounts

Computers

Departments

Groups

Disabled Accounts

Service Accounts

Contractors

Purpose

Create a scalable enterprise Active Directory structure.

---

# Step 3

## Department Structure

Created departmental Organizational Units.

Executive

Human Resources

Information Technology

Finance

Marketing

Operations

Sales

Each department contains:

Users

Groups

Computers

Purpose

Support delegated administration and Group Policy.

---

# Step 4

## Enterprise Users

Created departmental users.

Executive

- Sarah Johnson
- Robert Miller

Finance

- Olivia Brown

Human Resources

- Emily Davis

Information Technology

- David Sanders
- Michael Chen

Marketing

- James Wilson

Operations

- Daniel Garcia

Sales

- Sophia Martinez

Purpose

Simulate a real enterprise workforce.

---

# Step 5

## Administrative Identity

Created:

adm.david.sanders

Purpose

Separate privileged administration from normal user activities.

Implements Microsoft's Principle of Least Privilege.

---

# Step 6

## Security Groups

Created:

IT_Admins

HelpDesk

Executive_Users

HR_Users

Finance_Users

Marketing_Users

Operations_Users

Sales_Users

Purpose

Implement Role-Based Access Control.

---

# Step 7

## Group Membership

Assigned users to department security groups.

Example

David Sanders

↓

IT_Admins

Result

Permissions can now be assigned to groups instead of users.

---

## Project Status

Completed