provider "azurerm" {
  
  features {}
  subscription_id = var.subscription_id
}
#AzureOpen AI Account
resource "azurerm_cognitive_account" "openai" {
  name                = var.openai_name
  location            = var.location
  resource_group_name = azurerm_resource_group.openai_rg.name
  kind                = "OpenAI"
  sku_name            = "S0"
}
#Open AI resource Group
resource "azurerm_resource_group" "openai_rg" {
  name     = var.resource_group_name
  location = var.location
}
#Modelo minigpt4o escogido
resource "azurerm_cognitive_deployment" "minigpt4o" {
  name = var.deployment_name
  cognitive_account_id = azurerm_cognitive_account.openai.id

  model {
    format  = var.model_format
    name    = var.model_name
    version = var.model_version
  }

  sku {
    name = "Standard"
  }
}