Connect-AzAccount
New-AzResourceGroup -Name 'rg-007-szkolachmury-dev-002' -Location "westeurope"

New-AzResourceGroupDeployment -Name SzkolaChmury `
-ResourceGroupName "rg-007-szkolachmury-dev-002" `
-TemplateUri "https://raw.githubusercontent.com/ostalski1992/AzureArchitect/master/Week3/3.4/00-linked.json" `
-TemplateParameterUri "https://raw.githubusercontent.com/ostalski1992/AzureArchitect/master/Week3/3.4/zz-parameters.json"

