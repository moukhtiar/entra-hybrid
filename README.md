# Hybrid Identity Lab with Microsoft Entra ID

This lab demonstrates how to synchronize on-premises Active Directory identities with Microsoft Entra ID using Entra Connect Sync. We will build a secure hybrid identity setup, exploring user, group, and device management capabilities.

## Project Structure

```
entra-hybrid-lab/
├── screenshots/
│   ├── 01-vnet-review-create.png
│   ├── 02-vm-networking.png
│   ├── 03-vm-summary.png
│   ├── 04-add-ad-ds-role.png
│   ├── 05-ad-ds-install-complete.png
│   ├── 06-promote-dc-domain.png
│   ├── 07-dc-install-summary.png
│   ├── 08-ad-users-groups.png
│   ├── 09-aad-sync-ou.png
│   ├── 10-entra-connect-setup.png
│   ├── 11-entra-connect-install.png
│   ├── 12-ou-filtering.png
│   ├── 13-sync-complete.png
│   ├── 15-entra-synced-users.png
├── step-by-step-guide.md
```

## Use Case

> Explore Microsoft Entra ID hybrid identity with on-premises Active Directory Domain Services and Entra Connect Sync.

- Synchronize on-prem AD users and groups
- Filter synchronization using Organizational Units
- Post-configuration management via Entra Admin Center

## Automation

A deployment skeleton is available in `automation/main.bicep` to provision the Azure network and VM infrastructure required for the hybrid lab.

## Screenshots

All relevant screenshots are available in the `screenshots/` folder and are referenced in the step-by-step guide.

## Report

A written lab report with outcomes and recommendations is included in `Report.md`.

## Author

**Muktar Mohamed** – [LinkedIn](https://www.linkedin.com/in/muktar-mo/) – Cloud Security Lab Projects  
For educational and professional documentation purposes.
