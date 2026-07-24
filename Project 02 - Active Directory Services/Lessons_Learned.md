# Lessons Learned

## Active Directory Depends on DNS

DNS is required because clients use it to locate Domain Controllers.

---

## Forests Are the Highest Level

Every domain belongs to a forest.

---

## Domain Controllers Authenticate Users

A Domain Controller verifies user identities before granting access.

---

## Global Catalog Speeds Searches

The Global Catalog allows users and computers to locate Active Directory objects efficiently.

---

## DNS Delegation Warnings Are Normal

A DNS delegation warning is expected when creating the first forest in a new environment.

---

## Documentation Matters

Recording every deployment step makes troubleshooting, knowledge transfer, and interviewing much easier.