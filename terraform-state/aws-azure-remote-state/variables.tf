variable "location" {
  type        = string
  description = "Location of the resource"
  default     = "Brazil South"
}

variable "account_tier" {
  type        = string
  description = "Tier of the storage account"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Type of replication for the storage account"
  default     = "LRS"
}