variable "subscription_id" {
  type = string
  description = "Azure subscription ID"
}

variable "location" {
  type = string
  description = "Azure region"
  default = "Central US"
}

variable "project" {
  type = string
  description = "Project name"
  default = "nimbusdata"
}

variable "enviroment" {
  type = string
  description = "Deployment environment"
  default = "dev"
}

variable "tags" {
  type = map(string)
  description = "Tags for all resources"
  default = {
    enviroment = "dev"
    date = "july-2025"
    createdBy = "Daniel Villeda"
    method = "terraform"
  }
}

variable "admin_sql_password" {
  description = "The administrator password for the SQL server"
  type        = string
  sensitive   = true
}
