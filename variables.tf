
variable "az-tenant-id" {
  type = string
}

variable "az-subscription-id" {
  type = string
}

variable "az-client-id" {
  type = string
}

variable "az-client-secret" {
  type = string
}

variable "adb-workspace-url" {
  description = "Azure Databricks Workspace URL"
  default     = "https://adb-8018907867659718.18.azuredatabricks.net"

}
variable "adb-workspace-id" {
  description = "Azure Databricks Workspace ID"
  default     = "/subscriptions/fa6b09d8-2223-4dc0-a49d-7291e6df9ac7/resourceGroups/data-product/providers/Microsoft.Databricks/workspaces/adb-dataproduct-ws"
}


variable "policy_id" {
  description = "The ID of the policy to use for the cluster"
  default     = "default"
}

variable "spark_version" {
  description = "The Spark version to use for the cluster"
  default     = null

}

variable "node_type_id" {
  description = "The ID of the node type to use for the cluster"
  default     = null

}

variable "driver_node_type_id" {
  description = "The ID of the driver node type to use for the cluster"
  default     = null
}

variable "num_workers" {
  description = "The number of workers to use for the cluster"
  default     = "0"

}

variable "auto_scaling" {
  description = "The number of workers to use for the cluster"
  type        = list(string)
  default     = ["1", "2"]

}

variable "autotermination_minutes" {
  description = "The number of minutes to wait before terminating the cluster"
  default     = "60"
}

variable "deploy_worker_instance_pool" {
  description = "Whether to deploy a worker instance pool"
  type        = bool
  default     = false
}

variable "instance_pool_id" {
  description = "The ID of the instance pool to use for the cluster"
  default     = null
}


