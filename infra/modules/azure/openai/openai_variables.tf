
####################
####  VARIABLES ####
####################


variable "resource_group_name" {
  description = "resource group name"
  type        = string
}

variable "location" {
  description = "location"
  type        = string
}

variable "openai_name" {
  description = "Account name used for Azure"
  type        = string
}
variable "deployment_name" {
  description = "Name for the deployment"
  type        = string
}

variable "subscription_id" {
  description = "ID subscription"
  type        = string
}
variable "model_version" {
  description = "Version"
  type        = string
  default     = "latest"
}
variable "model_name" {
  description = "name model MiniGPT-4o"
  type        = string
  default     = "latest"
}
variable "model_format" {
  description = "format del modelo MiniGPT-4o"
  type        = string
  default     = "latest"
}