variable "resource_group_name" {
  description = "Azure Resource Group Name"
  default     = ""
}

variable "name" {
  description = "Storage Account Name"
  default     = ""
}

variable "location" {
  description = "Location of Storage Account"
  default     = ""
}


variable "account_tier" {
  description = "Storage Account Tier"
  default     = "Standard"
}

variable "account_replication_type" {
  description = "LRS/GRS/RAGRS"
  default     = "RAGRS"
}
variable "account_kind" {
  description = "Blob or Storage or StorageV2"
  default     = "StorageV2"
}

variable "enable_https_traffic_only" {
  description = "bool true/false"
  default     = true
}

variable "virtual_network_subnet_ids" {
  description = "Subnet Ids to Allow Access"
  type        = "list"
  default     = [""]
}

variable "bypass" {
  description = "List of allowed services"
  type        = "list"
  default     = ["Logging", "Metrics", "AzureServices"]
}

variable "default_action" {
  description = "To enable Firewall set as 'Deny' otherwise 'Allow'"
  default     = "Allow"
}

variable "tag_environment" {
  description = "Tag: Cluster Environment"
  default     = ""
}

variable "tag_region" {
  description = "Tag: Cluster Environment"
  default     = ""
}

variable "tag_product" {
  description = "Tag: Cluster Product Lensferry/Nexus"
  default     = ""
}
