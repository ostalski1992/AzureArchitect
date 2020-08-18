Connect-AzAccount
New-AzResourceGroup -Name 'rg-007-szkolachmury-dev-001' -Location "westeurope"
New-AzResourceGroupDeployment -ResourceGroupName "rg-007-szkolachmury-dev-001" -TemplateUri https://raw.githubusercontent.com/ostalski1992/AzureArchitect/master/Week3/3.2/00-linked.json
