# Deployment Notes

## Project Objective

Deploy Active Directory Domain Services and promote Windows Server into the first Domain Controller for the CyberLab enterprise environment.

---

# Step 1

## Install Active Directory Domain Services

Purpose

Install the services required to support centralized identity management.

Actions

- Opened Server Manager
- Selected Add Roles and Features
- Installed Active Directory Domain Services
- Installed required RSAT management tools

Result

AD DS successfully installed.

---

# Step 2

## Create New Forest

Forest Name

corp.cyberlab.local

Purpose

Create the highest level container for the CyberLab enterprise environment.

Result

New Active Directory forest successfully created.

---

# Step 3

## Configure Domain Controller Options

Configuration

- Forest Functional Level: Windows Server 2016
- Domain Functional Level: Windows Server 2016
- DNS Server Installed
- Global Catalog Enabled
- Read Only Domain Controller Disabled
- DSRM Password Configured

Purpose

Configure the initial Domain Controller using Microsoft best practices.

Result

Configuration completed successfully.

---

# Step 4

## DNS Delegation

Observation

Windows displayed a DNS delegation warning.

Reason

The deployment represents the first Domain Controller in a brand-new forest.

Resolution

No action required.

---

# Step 5

## NetBIOS Configuration

NetBIOS Name

CORP

Purpose

Provide backward compatibility with legacy Windows systems.

Result

Configuration accepted.

---

# Step 6

## Prerequisite Validation

Verified

- Forest configuration
- Domain configuration
- DNS configuration
- Functional levels

Result

All prerequisite checks passed successfully.

---

# Step 7

## Promote Domain Controller

Actions

- Installed Active Directory database
- Installed DNS
- Created forest
- Promoted Windows Server
- Restarted server

Result

SFG-DC01 successfully promoted into the first Domain Controller.

---

# Final Validation

Verified

- Active Directory installed
- DNS installed
- AD DS visible in Server Manager
- Domain Controller operational

Project Status

Completed