Opis sytuacji 
Jesteś architektem w firmie o europejskim zasięgu i rozpoczynasz w swojej firmie budowanie rozwiązań opartych o Microsoft Azure. 
Jako architekt ustaliłeś kilka pryncypiów projektowych, które powinny być respektowane przy każdym wdrożeniu: 
Każdy projekt powinien używać konwencji nazw dla grup i zasobów zgodnych z konwencją firmy 
Infrastruktura, budowana w Azure pod środowiska czy aplikacje powinna być zawsze budowana z wykorzystaniem Azure Resource Managera i template’ów. Jeśli jest to duże wdrożenie, powinny być użyte tzw. Linked Templates. 
Jeśli to konieczne, należy zbudować własny model ról za pomocą RBAC 
Docelowo, wszystkie kluczowe ustawienia, tak jak np. nazwy lokalnych administratorów i hasła powinny być pobierane z Azure KeyVault.

Zadanie 1 - Konwencja nazewnicza 
 „Zbuduj prostą konwencję nazewniczą dla min. takich zasobów jak Grupa Zasobów, VNET, Maszyn Wirtualna, Dysk, Konta składowania danych. Pamiętaj o ograniczeniach w nazywaniu zasobów, które występują w Azure” 
  
Rozwiązanie: 
Ograniczenia dla podanych zasobów: 
Entity 
Scope 
Length 
Valid Characters 
resourcegroups 
subscription 
1-90 
Alphanumerics, underscores, parentheses, hyphens, periods, and unicode characters that match the regex documentation. 
 
Can't end with period. 
virtualNetworks 
resource group 
2-64 
Alphanumerics, underscores, periods, and hyphens. 
 
Start with alphanumeric. End alphanumeric or underscore. 
virtualMachines 
resource group 
1-15 (Windows) 
1-64 (Linux) 
Can't use: 
\/"'[]:|<>+=;,?*@& 
 
Can't start with underscore. Can't end with period or hyphen. 
disks 
resource group 
1-80 
Alphanumerics and underscores. 
storageAccounts 
global 
3-24 
Lowercase letters and numbers. 
 
 
Konwencja nazewnicza: 
• <project code> - Unikalny kod projektu; np. 007 
• <service name> - Nazwa serwisu/aplikacji 
• <environment> - Idendyfikator środowiska; np. prod, dev, test 
• <###> - numeracja zasobu 
Resource 
Pattern 
Resource group 
rg-<project code>-<service name>-<environment> 
virtualMachines 
vm-<project code>-<service name>-<environment>-<###> 
virtualNetwork 
vnet-<project code>-<service name>-<environment>-<###> 
subnet 
snet-<project code>-<service name>-<environment>-<###> 
Network interface (NIC) 
nic-<project code>-<service name>-<environment>-<###> 
Network security group 
nsg-<project code>-<service name>-<environment>-<###> 
Disks 
disk-<project code>-<service name>-<environment>-<###> 
Storage 
stg<project code><service name><environment><###> 
 
 
 
 
Linki: 
https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging#naming-rules-and-restrictions 
 
https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules 
  
