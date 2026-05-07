# Microsoft Entra Hybrid Identity Project

## Overview

Built a hybrid identity environment that synchronizes on-premises Active Directory users and groups with Microsoft Entra ID using Entra Connect Sync.

This project demonstrates how organizations can extend existing on-prem identity infrastructure into Microsoft Entra ID while keeping user management centralized.

---

## Business Scenario

Many organizations still manage users and groups in on-premises Active Directory, but they also need access to Microsoft 365, Azure, and cloud applications.

This project simulates that setup by deploying a domain controller, creating AD users and groups, configuring Entra Connect Sync, and validating synchronized identities in Microsoft Entra ID.

---

## Architecture Highlights

- Windows Server domain controller deployed in Azure
- Active Directory Domain Services configured
- Test domain created for hybrid identity simulation
- Users and groups created in on-prem AD
- Entra Connect Sync installed and configured
- OU filtering used to control which identities sync to Entra ID
- Synchronized users validated in Microsoft Entra admin center

---

## Project Structure

```txt
entra-hybrid/
├── README.md
├── architecture/
├── images/
├── docs/
├── bicep/
└── scripts/
