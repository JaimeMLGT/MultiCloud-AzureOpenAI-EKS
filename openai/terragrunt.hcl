# include {
#   path = find_in_parent_folders()
# }

terraform {
  source = "../infra/modules/azure/openai"
}

inputs = {
  deployment_name = "newazureOpenAI"
  resource_group_name = "rg-newazureOpenAI"
  model_version = "turbo-2024-04-09"
  model_name = "gpt-4"
  model_format = "OpenAI"
  openai_name   = "openAIintegrationAWS"
  location       = "swedencentral"
  subscription_id = "subscription id from Azure"
}
