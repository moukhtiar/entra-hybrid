param(
  [string]$ResourceGroupName = 'rg-entra-hybrid-01',
  [string]$Location = 'eastus',
  [string]$TemplateFile = 'automation/main.bicep'
)

Write-Host "Creating or updating resource group: $ResourceGroupName in $Location"
az group create --name $ResourceGroupName --location $Location | Out-Null

Write-Host "Deploying the hybrid identity infrastructure shell..."
az deployment group create --resource-group $ResourceGroupName --template-file $TemplateFile

Write-Host "Deployment shell complete."
