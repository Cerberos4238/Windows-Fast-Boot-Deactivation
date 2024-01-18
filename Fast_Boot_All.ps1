#Déclaration des variables et du chemin de la clé de registre
$value= ""
$Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System'

$value = Get-ItemPropertyValue -Path $key -Name FastBoot -ErrorAction SilentlyContinue

#Vérification si la propriété Fastboot est présente ou non
if ($value -eq "0") {
    Write-host `r`n"Le demarrage rapide est inactif"
    Exit 0
}
Else{
    Write-host `r`n"Le demarrage rapide est actif"

        #Variable chemin du registre 
$HKLM_path = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System'

#Se placer dans le registre souhaité
Set-Location -Path $HKLM_path


#Création de la propriété Fastboot pour la désactivée.
New-ItemProperty -Path $HKLM_path -Name 'FastBoot' -Value "0" -PropertyType DWORD -Force

Write-host `r`n"Le demarrage rapide est maintenant inactif"
    
}