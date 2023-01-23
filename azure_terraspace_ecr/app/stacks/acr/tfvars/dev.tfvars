// *** Resorce Group Values ***
resource_group_name = "demoproject-acr-rg"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Azure Container Registery (ACR) Values ***
  acr_name            = "kaandemoprojectacr"
  sku                 = "Premium"
  admin_enabled       = true
