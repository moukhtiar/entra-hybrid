# Entra Hybrid Lab Report

## Objective

Set up a Microsoft Entra hybrid identity lab by provisioning an Azure virtual network and Windows Server VM, then synchronizing on-premises AD DS accounts to Microsoft Entra ID using Entra Connect.

## Summary

The lab covers:
- Azure VNet and subnet creation
- Windows Server VM deployment for AD DS
- Active Directory Domain Services installation and domain controller promotion
- User and OU creation for synchronization
- Entra Connect installation and OU filtering
- Verification of successful inbound sync to Entra ID

## Key Outcomes

- `DC1` was deployed inside a dedicated `directory-subnet`.
- Active Directory Domain Services was installed and promoted to `contoso.local`.
- A dedicated OU named `AAD-Sync` was created.
- Entra Connect was configured to sync only objects in the `AAD-Sync` OU.
- Synced users were verified in the Microsoft Entra admin center.

## Automation

This lab includes an Azure infrastructure skeleton in `automation/main.bicep` to provision the network and VM resources.

Note: AD DS installation and Entra Connect setup are manual steps that depend on the Windows Server VM environment.

## Recommendations

- Add an Azure Bastion or VPN gateway for secure VM management instead of exposing RDP directly to the internet.
- Use managed identities for automation and avoid embedded passwords where possible.
- Document the specific Entra Connect sync status and any object filter configuration used.
