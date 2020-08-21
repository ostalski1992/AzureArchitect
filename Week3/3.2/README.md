Opis sytuacji Jesteś architektem w firmie o europejskim zasięgu i rozpoczynasz w swojej firmie budowanie rozwiązań opartych o Microsoft Azure. Jako architekt ustaliłeś kilka pryncypiów projektowych, które powinny być respektowane przy każdym wdrożeniu: Każdy projekt powinien używać konwencji nazw dla grup i zasobów zgodnych z konwencją firmy Infrastruktura, budowana w Azure pod środowiska czy aplikacje powinna być zawsze budowana z wykorzystaniem Azure Resource Managera i template’ów. Jeśli jest to duże wdrożenie, powinny być użyte tzw. Linked Templates. Jeśli to konieczne, należy zbudować własny model ról za pomocą RBAC Docelowo, wszystkie kluczowe ustawienia, tak jak np. nazwy lokalnych administratorów i hasła powinny być pobierane z Azure KeyVault.

## Zadanie 2 – ARM Template 
<br >
"Zbuduj prosty ARM Template (możesz wykorzystać już gotowe wzorce z GitHub), który wykorzystuje koncepcję Linked Templates. Template powinien zbudować środowisko złożone z: 
jednej sieci VNET  podzielonej na dwa subnety.  W każdy subnecie powinna powstać najprostsza maszyna wirtualna z systemem Ubuntu 18.04 a na każdym subnecie powinny zostać skonfigurowane NSG.” 
 
<br >
Linki

<br >
https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-4.5.0 
https://www.youtube.com/watch?v=Ge_Sp-1lWZ4 
