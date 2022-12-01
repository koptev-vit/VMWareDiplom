Get–VM #получить список вирутальных машин на хосте
Start-VM -VM TestVM01 #Запустить виртуальную машину по имени TestVM01
Restart-VMGuest -VM TestVM01 -Confirm:$False #Корректная перезагрузка ВМ (через агента VMware tools)
Shutdown-VMGuest -VM TestVM01 -Confirm:$False #Выключить ВМ
Get-VM| Get-Snapshot| Format-List #Вывести список снапшотов для конкретной ВМ
New-VM –Name testVM -VMHost msk-esxi1 –ResourcePool Production –DiskGB 10 –DiskStorageFormat Thin –Datastore MSA2000_2_Prod1 #Создание новой ВМ имя - testVM, хост - msk-esxi1, ResourcePool - ?, Размер диска - 10 Гб, формат диска - тонкий(есть think вроде), датастор - MSA2000_2_Prod1
Get-VM | Copy-VMGuestFile -Source C:\PS\get-info.ps1 -Destination C:\PS\ - LocalToGuest -GuestUser administrator -GuestPassword p@$$w0rdes2 #Чтобы скопировать определенный файл на все ВМ