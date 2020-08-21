Opis sytuacji 
Jesteś architektem w firmie o europejskim zasięgu i rozpoczynasz w swojej firmie budowanie rozwiązań opartych o Microsoft Azure. 
Jako architekt ustaliłeś kilka pryncypiów projektowych, które powinny być respektowane przy każdym wdrożeniu: 
Każdy projekt powinien używać konwencji nazw dla grup i zasobów zgodnych z konwencją firmy 
Infrastruktura, budowana w Azure pod środowiska czy aplikacje powinna być zawsze budowana z wykorzystaniem Azure Resource Managera i template’ów. Jeśli jest to duże wdrożenie, powinny być użyte tzw. Linked Templates. 
Jeśli to konieczne, należy zbudować własny model ról za pomocą RBAC 
Docelowo, wszystkie kluczowe ustawienia, tak jak np. nazwy lokalnych administratorów i hasła powinny być pobierane z Azure KeyVault.


Zadanie 1 - Konwencja nazewnicza 
„Zbuduj prostą konwencję nazewniczą dla min. takich zasobów jak Grupa Zasobów, VNET, Maszyn Wirtualna, Dysk, Konta składowania danych. Pamiętaj o ograniczeniach w nazywaniu zasobów, które występują w Azure” 
  

Konwencja nazewnicza: 
• <project code> - Unikalny kod projektu; np. 007 
• <service name> - Nazwa serwisu/aplikacji 
• <environment> - Idendyfikator środowiska; np. prod, dev, test 
• <###> - numeracja zasobu 
 

| Resource | Pattern |
| --- | --- |
| Resource group | `rg-<project code>-<service name>-<environment>-<###>` |
| Virtual Machine | `vm-<project code>-<service name>-<environment>-<###>` |
| Virtual Network  | `vnet-<project code>-<service name>-<environment>-<###>` |
| Subnet  | `snet-<project code>-<service name>-<environment>-<###>` |
| Network Interface  | `nic-<project code>-<service name>-<environment>-<###>` |
| Network Security Group  | `nsg-<project code>-<service name>-<environment>-<###>` |
| Disk  | `disk-<project code>-<service name>-<environment>-<###>` |
| Storage  | `stg-<project code>-<service name>-<environment>-<###>` |



 
 
 
Linki: 
https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging#naming-rules-and-restrictions 
 
https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules 
  
