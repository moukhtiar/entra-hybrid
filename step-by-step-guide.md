# Microsoft Entra Hybrid Identity — Implementation Guide

![Cloud](https://img.shields.io/badge/Cloud-Microsoft%20Azure-0078D4)
![Identity](https://img.shields.io/badge/Identity-Microsoft%20Entra%20ID-5E5ADB)
![Directory](https://img.shields.io/badge/Directory-Active%20Directory-003366)
![Hybrid](https://img.shields.io/badge/Hybrid-Entra%20Connect-0A84FF)
![OS](https://img.shields.io/badge/OS-Windows%20Server-0067B8)

---

## Overview

This guide documents the deployment and configuration process for a hybrid identity environment using Active Directory Domain Services (AD DS), Microsoft Entra Connect Sync, and Microsoft Entra ID.

The objective was to synchronize on-premises Active Directory users and groups with Microsoft Entra ID while validating hybrid identity functionality.

---

## Environment Details

| Component | Value |
|---|---|
| Virtual Machine | `DC1` |
| Operating System | Windows Server 2019 |
| Domain | `contoso.local` |
| Subnet | `directory-subnet` |
| Synchronization Tool | Microsoft Entra Connect |

---

## 1. Virtual Network Deployment

Created an Azure Virtual Network with a dedicated subnet for directory services.

### Configuration

- Virtual Network created in Azure
- Subnet configured:
  - `directory-subnet (10.1.1.0/24)`

![VNet](./screenshots/01-vnet-review-create.png)

---

## 2. Windows Server VM Deployment

Provisioned a Windows Server 2019 virtual machine to host Active Directory Domain Services.

### Configuration

- VM Name: `DC1`
- Connected to:
  - `directory-subnet`

![VM Networking](./screenshots/02-vm-networking.png)

![VM Summary](./screenshots/03-vm-summary.png)

---

## 3. Active Directory Domain Services Installation

Installed the AD DS server role using Server Manager.

### Actions Performed

- Opened Server Manager
- Added Active Directory Domain Services role
- Completed role installation

![AD DS Role](./screenshots/04-add-ad-ds-role.png)

![AD DS Complete](./screenshots/05-ad-ds-install-complete.png)

---

## 4. Domain Controller Promotion

Promoted the server to a domain controller and created a new Active Directory forest.

### Configuration

- Forest Root Domain:
  - `contoso.local`

![Promote DC](./screenshots/06-promote-dc-domain.png)

![Promotion Summary](./screenshots/07-dc-install-summary.png)

---

## 5. Active Directory User and Group Creation

Created test users and groups inside Active Directory.

### Objects Created

| Type | Name |
|---|---|
| User | `ali` |
| Group | `CloudUsers` |

![AD Users](./screenshots/08-ad-users-groups.png)

---

## 6. Organizational Unit (OU) Configuration

Created a dedicated Organizational Unit for synchronization testing.

### OU Configuration

- OU Name:
  - `AAD-Sync`

Users intended for synchronization were moved into the OU.

![OU Setup](./screenshots/09-aad-sync-ou.png)

---

## 7. Microsoft Entra Connect Installation

Installed Microsoft Entra Connect Sync on the domain controller VM.

### Installation

- Downloaded Microsoft Entra Connect
- Completed installation and initial setup

![Entra Setup](./screenshots/10-entra-connect-setup.png)

![Install Progress](./screenshots/11-entra-connect-install.png)

---

## 8. Synchronization Configuration

Configured synchronization settings and applied OU filtering.

### Synchronization Settings

- OU Filtering enabled
- Selected OU:
  - `AAD-Sync`

![OU Filtering](./screenshots/12-ou-filtering.png)

![Sync Complete](./screenshots/13-sync-complete.png)

---

## 9. Validation in Microsoft Entra ID

Validated successful synchronization in Microsoft Entra admin center.

### Validation Performed

- Confirmed synced users appeared in Microsoft Entra ID
- Verified synchronization status

![Synced Users](./screenshots/15-entra-synced-users.png)

---

## Key Takeaways

- Hybrid identity requires coordination between on-premises and cloud identity systems
- OU filtering provides better synchronization control
- Microsoft Entra Connect simplifies hybrid identity integration
- Proper Active Directory structure improves identity management

---

## Status

Implementation completed successfully and synchronization validated in Microsoft Entra ID.
