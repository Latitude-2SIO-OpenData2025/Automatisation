Write-Host "Bienvenue dans le script PowerShell d'automatisation."
Write-Host "Veuillez sélectionner l'action à effectuer :"
Write-Host "1. Installer IIS"
Write-Host "2. Configurer le pare-feu"
Write-Host "0. Quitter"

$choice = Read-Host "Votre choix"

switch ($choice) {
    1 {
        Write-Host "Installation d'IIS..."
        Install-WindowsFeature -name Web-Server -IncludeManagementTools
        Write-Host "IIS installé avec succès."
    }
    2 {
        Write-Host "Configuration du pare-feu..."
        New-NetFirewallRule -DisplayName "Autoriser HTTP" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Allow
        Write-Host "Pare-feu configuré avec succès."
    }
    0 {
        Write-Host "Fin du script."
        exit
    }
    default {
        Write-Host "Option invalide."
    }
}
