# Step-by-Step Lab Guide: Microsoft Entra ID Hybrid Identity Sync

This guide walks through synchronizing on-premises AD users with Microsoft Entra ID using Entra Connect Sync.

---

## 1. Build a Virtual Network

- Azure Portal → Virtual Networks → + Create
- Subnet: `Directory-subnet` (`10.1.1.0/24`)
![VNet](./screenshots/01-vnet-review-create.png)

---

## 2. Provision Windows Server 2019 VM

- VM Name: `DC1`
- Subnet: `Directory-subnet`
![VM Networking](./screenshots/02-vm-networking.png)
![VM Summary](././screenshots/03-vm-summary.png)

---

## 3. Install Active Directory Domain Services

- Open Server Manager → Add Roles → Select AD DS
![AD DS Role](./screenshots/04-add-ad-ds-role.png)
![AD DS Complete](./screenshots/05-ad-ds-install-complete.png)

---

## 4. Promote VM to Domain Controller

- Domain: `contoso.local`
![Promote DC](./screenshots/06-promote-dc-domain.png)
![Promotion Summary](./screenshots/07-dc-install-summary.png)

---

## 5. Create Users and Groups

- Users: `ali`
- Groups: `CloudUsers`
![AD Users](./screenshots/08-ad-users-groups.png)

---

## 6. Create OU and Move Users

- OU: `AAD-Sync`
![OU Setup](./screenshots/09-aad-sync-ou.png)

---

## 7. Install Entra Connect Sync

- Download: https://aka.ms/EntraConnect
![Entra Setup](./screenshots/10-entra-connect-setup.png)
![Install Progress](./screenshots/11-entra-connect-install.png)

---

## 8. Configure Synchronization

- Use OU Filtering → Select `AAD-Sync`
![OU Filtering](./screenshots/12-ou-filtering.png)
![Sync Complete](./screenshots/13-sync-complete.png)

---

## 9. Post-Configuration in Entra ID

- View synced users
![Synced Users](./screenshots/15-entra-synced-users.png)


---

*Lab Complete!*
