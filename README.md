# Microsoft Entra Hybrid Identity Project

![Cloud](https://img.shields.io/badge/Cloud-Microsoft%20Azure-0078D4)
![Identity](https://img.shields.io/badge/Identity-Microsoft%20Entra%20ID-5E5ADB)
![Directory](https://img.shields.io/badge/Directory-Active%20Directory-003366)
![Hybrid](https://img.shields.io/badge/Hybrid-Entra%20Connect-0A84FF)
![OS](https://img.shields.io/badge/OS-Windows%20Server-0067B8)
![IaC](https://img.shields.io/badge/IaC-Bicep-1E5BD7)
![Scripting](https://img.shields.io/badge/Scripting-PowerShell-5391FE)

---

## Overview

Built a hybrid identity environment that synchronizes on-premises Active Directory users and groups with Microsoft Entra ID using Microsoft Entra Connect Sync.

This project simulates how organizations integrate traditional on-prem identity infrastructure with cloud identity services while keeping centralized user management.

---

## Business Scenario

Many organizations still rely on on-premises Active Directory for identity management while also using Microsoft 365, Azure, and other cloud services.

This project demonstrates a hybrid identity setup by deploying a domain controller in Azure, configuring Active Directory Domain Services (AD DS), installing Entra Connect Sync, and validating synchronized users in Microsoft Entra ID.

---

## Architecture Highlights

- Windows Server domain controller deployed in Azure
- Active Directory Domain Services configured
- Test domain created for hybrid identity simulation
- Users and groups created in on-prem AD
- Microsoft Entra Connect Sync installed and configured
- OU filtering used to control synchronized identities
- Synced users validated in Microsoft Entra admin center

---

## Architecture Flow

```txt
On-prem Active Directory (AD DS)
                ↓
Microsoft Entra Connect Sync
                ↓
Microsoft Entra ID
                ↓
Microsoft 365 / Azure / Cloud Applications
```

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
```

---

## Technologies Used

- Microsoft Azure
- Microsoft Entra ID
- Active Directory Domain Services (AD DS)
- Microsoft Entra Connect Sync
- Windows Server
- Azure Virtual Network
- PowerShell
- Azure Bicep

---

## Identity Features Implemented

- Hybrid identity synchronization
- Organizational Unit (OU) filtering
- On-prem AD user and group management
- Identity synchronization validation
- Centralized identity administration
- Secure domain controller deployment

---

## Screenshots

The `images/` folder includes:

- Azure VM deployment
- AD DS installation
- Domain controller promotion
- Active Directory users and groups
- Microsoft Entra Connect setup
- OU filtering configuration
- Synced users in Microsoft Entra ID

---

## Documentation

Additional implementation and troubleshooting documentation:

- `docs/implementation-guide.md`
- `docs/troubleshooting.md`
- `docs/identity-sync-report.md`
- `docs/lessons-learned.md`

---

## Key Takeaways

- Hybrid identity remains widely used in enterprise environments
- OU filtering helps control which identities are synchronized to the cloud
- Microsoft Entra Connect Sync simplifies hybrid identity integration
- Proper identity planning is important for secure synchronization
- This project improved my understanding of identity flow between AD DS and Microsoft Entra ID

---

## Future Improvements

Planned enhancements include:

- Conditional Access testing
- Password Hash Sync validation
- Multi-Factor Authentication (MFA)
- Hybrid identity troubleshooting scenarios
- Group-based access control testing

---

## Status

Completed — continuously improving with additional identity and security scenarios.
