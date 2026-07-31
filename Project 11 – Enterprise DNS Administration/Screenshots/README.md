# Project Screenshots

This folder contains validation screenshots documenting the deployment, configuration, testing, troubleshooting, and verification of the Enterprise DNS Administration project.

Each screenshot represents a completed administrative task or validation step performed during the implementation.

---

## Screenshot Index

| Screenshot | Description |
|------------|-------------|
| 01_DNS_Manager.png | DNS Manager opened and DNS Server verified |
| 02_Forward_Lookup_Zone.png | Active Directory-integrated Forward Lookup Zones identified |
| 03_DNS_Zone_Records.png | Review of DNS zone records including SOA, NS, A Records, DomainDnsZones, ForestDnsZones, and Active Directory folders |
| 04_TCP_SRV_Records.png | Verification of LDAP, Kerberos, Global Catalog, and other SRV records |
| 05_Reverse_Lookup_Zone.png | Reverse Lookup Zones reviewed prior to deployment |
| 06_Reverse_Lookup_Zone_Created.png | Active Directory-integrated Reverse Lookup Zone created |
| 07_PTR_Records.png | Initial Reverse Lookup Zone review before dynamic registration |
| 08_PTR_Record_Registered.png | PTR record dynamically registered after DNS update |
| 09_nslookup_Forward_Lookup.png | Forward DNS lookup validated using nslookup |
| 10_nslookup_Reverse_Lookup.png | Reverse DNS lookup validated using nslookup |
| 11_Display_DNS_Cache.png | DNS client cache reviewed after flushing and rebuilding cache |
| 12_Resolve_DnsName_A_Record.png | Forward DNS resolution validated using PowerShell Resolve-DnsName |
| 13_Resolve_DnsName_PTR.png | Reverse DNS resolution validated using PowerShell Resolve-DnsName |
| 14_dcdiag_DNS_Test.png | Microsoft DNS diagnostics completed successfully using dcdiag |
| 15_Client_Name_Resolution.png | Windows 11 client successfully resolved the domain controller through DNS |
| 16_DNS_Environment_Complete.png | Final enterprise DNS environment showing completed Forward and Reverse Lookup Zones |

---

## Validation Summary

This project validates:

- Active Directory Integrated DNS
- Forward Lookup Zones
- Reverse Lookup Zones
- Secure Dynamic DNS Updates
- A Records
- PTR Records
- NS Records
- SOA Records
- SRV Records
- LDAP Service Discovery
- Kerberos Service Discovery
- Global Catalog Discovery
- Dynamic DNS Registration
- Forward DNS Resolution
- Reverse DNS Resolution
- PowerShell DNS Administration
- Enterprise DNS Troubleshooting
- Microsoft DNS Health Validation
- Client Name Resolution

---

## Outcome

The DNS infrastructure was successfully deployed, configured, validated, and tested within a Windows Server Active Directory environment.

Both graphical administration tools and command-line utilities were used to verify enterprise DNS functionality and Active Directory integration.