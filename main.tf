
data "databricks_node_type" "smallest1" {
  local_disk = true
}

data "databricks_spark_version" "latest_lts" {
  long_term_support = true
}

module "databricks_workspace_management" {
  source = "./adb-ws-mgmt"

  # ------------------------------------------------
  # Cluster
  # ------------------------------------------------
  policy_id     = var.policy_id
  spark_version = data.databricks_spark_version.latest_lts.id
  #  node_type_id                = var.node_type_id == "smallest" ? local.smallest_node_type : var.node_type_id                      #var.node_type_id
  #  driver_node_type_id         = var.driver_node_type_id == "smallest" ? local.smallest_driver_node_type : var.driver_node_type_id #var.driver_node_type_id
  node_type_id                = "Standard_DS3_v2"
  driver_node_type_id         = "Standard_DS3_v2"
  num_workers                 = var.num_workers
  auto_scaling                = var.auto_scaling
  autotermination_minutes     = var.autotermination_minutes
  deploy_worker_instance_pool = var.deploy_worker_instance_pool
  instance_pool_id            = var.instance_pool_id


}
