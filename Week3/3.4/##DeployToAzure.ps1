New-AzResourceGroupDeployment -Name SzkolaChmury `
-ResourceGroupName "rg-007-szkolachmury-dev-001" `
-TemplateUri "https://raw.githubusercontent.com/ostalski1992/AzureArchitect/master/Week3/3.4/00-linked.json" `
-TemplateParameterUri "https://raw.githubusercontent.com/ostalski1992/AzureArchitect/master/Week3/3.4/zz-parameters.json"

