# Hybrid Identity Sync Report

![Cloud](https://img.shields.io/badge/Cloud-Microsoft%20Azure-0078D4)
![Identity](https://img.shields.io/badge/Identity-Microsoft%20Entra%20ID-5E5ADB)
![Directory](https://img.shields.io/badge/Directory-Active%20Directory-003366)
![Hybrid](https://img.shields.io/badge/Hybrid-Entra%20Connect-0A84FF)
![OS](https://img.shields.io/badge/OS-Windows%20Server-0067B8)
![IaC](https://img.shields.io/badge/IaC-Bicep-1E5BD7)
![Scripting](https://img.shields.io/badge/Scripting-PowerShell-5391FE)

---

## Objective

Built a Microsoft Entra hybrid identity environment by deploying a Windows Server domain controller in Azure and synchronizing on-premises Active Directory identities with Microsoft Entra ID using Microsoft Entra Connect Sync.

---

## Environment Summary

The project included:

- Azure Virtual Network and subnet deployment
- Windows Server VM provisioning
- Active Directory Domain Services (AD DS) installation
- Domain controller promotion
- User and Organizational Unit (OU) creation
- Microsoft Entra Connect Sync installation and configuration
- OU-based synchronization filtering
- Identity synchronization validation in Microsoft Entra ID

---

## Key Outcomes

- `DC1` deployed inside a dedicated `directory-subnet`
- Active Directory Domain Services configured successfully
- Domain controller promoted to `contoso.local`
- Dedicated `AAD-Sync` OU created for synchronization testing
- Microsoft Entra Connect configured to synchronize only selected OU objects
- Synced users verified successfully in Microsoft Entra admin center

---

## Hybrid Identity Configuration

### On-Premises Environment

- Windows Server configured as domain controller
- AD DS deployed and operational
- Test users and groups created in Active Directory
- OU structure configured for controlled synchronization

### Microsoft Entra Connect

- Installed on the domain controller VM
- Connected to Microsoft Entra ID tenant
- Configured with OU filtering
- Inbound synchronization validated successfully

---

## Infrastructure as Code

The project includes Azure Bicep templates for deploying the base infrastructure components.

### Deployment Files

```txt
bicep/
├── main.bicep
└── parameters.json
```

### Automated Resources

- Resource Group
- Virtual Network
- Subnets
- Windows Server VM
- Network configuration

### Manual Configuration

The following steps were completed manually inside the Windows Server environment:

- AD DS installation
- Domain controller promotion
- Microsoft Entra Connect installation
- OU filtering configuration
- Synchronization validation

---

## Security Considerations

- Identity synchronization limited through OU filtering
- Dedicated subnet used for directory services
- Administrative access restricted to authorized users
- Hybrid identity configuration validated before synchronization

---

## Recommendations

- Replace direct RDP exposure with Azure Bastion or VPN-based management
- Implement Conditional Access policies for synchronized accounts
- Enable Multi-Factor Authentication (MFA)
- Use managed identities where applicable
- Monitor Entra Connect synchronization health regularly

---

## Key Takeaways

- Hybrid identity remains common in enterprise environments
- OU filtering provides better control over synchronized identities
- Proper AD structure simplifies cloud identity management
- Hybrid identity requires both infrastructure and identity planning
- Microsoft Entra Connect plays a critical role in synchronization reliability

---

## Status

Completed — future enhancements will include Conditional Access testing, Password Hash Sync validation, and advanced hybrid identity troubleshooting scenarios.
