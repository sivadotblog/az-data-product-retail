variable "policy_id" {
  description = "The ID of the policy to use for the cluster"

}

variable "spark_version" {
  description = "The Spark version to use for the cluster"

}

variable "node_type_id" {
  description = "The ID of the node type to use for the cluster"


}

variable "driver_node_type_id" {
  description = "The ID of the driver node type to use for the cluster"

}

variable "num_workers" {
  description = "The number of workers to use for the cluster"
  default     = "1"

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

}



