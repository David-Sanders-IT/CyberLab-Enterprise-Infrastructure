# Troubleshooting Log

## Issue

Reverse Lookup Zone was not present after Active Directory deployment.

### Resolution

Created an Active Directory-integrated Reverse Lookup Zone using secure dynamic updates.

---

## Issue

PTR records were not initially available.

### Resolution

Executed:

```cmd
ipconfig /registerdns
```

Successfully forced dynamic DNS registration.

---

## Issue

Reverse DNS required validation.

### Resolution

Validated using:

```cmd
nslookup 192.168.121.10

Resolve-DnsName 192.168.121.10
```

Both confirmed successful PTR resolution.

---

## Issue

Enterprise DNS health required verification.

### Resolution

Executed:

```cmd
dcdiag /test:dns
```

All Microsoft DNS diagnostics completed successfully.

---

## Final Status

Enterprise DNS infrastructure deployed, validated, and fully operational.