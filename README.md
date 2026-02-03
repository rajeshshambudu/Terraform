###
az login
terraform init
terraform plan
terraform apply


##############

variables.tf → declares inputs

terraform.tfvars → real values

main.tf → infrastructure logic

backend.tf → remote state

outputs.tf → shows results

References (azurerm_resource_group.rg.name) create dependencies automatically
