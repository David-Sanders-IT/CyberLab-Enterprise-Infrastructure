# Troubleshooting Log

## Issue

Windows 11 client received an APIPA address after VMware DHCP was disabled.

### Root Cause

Microsoft DHCP server had not yet been authorized in Active Directory.

### Resolution

- Authorized DHCP server
- Verified authorization
- Renewed DHCP lease
- Confirmed successful lease assignment

---

## Issue

VMware DHCP conflicted with Windows DHCP.

### Resolution

Disabled VMware DHCP service while retaining NAT networking.

---

## Final Status

Microsoft DHCP successfully assigned client leases and integrated with the Active Directory environment.