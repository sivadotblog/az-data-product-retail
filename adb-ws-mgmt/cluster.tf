
/* Not working yet
data "databricks_spark_version" "latest" {
  spark_version = 3

}
*/

resource "databricks_cluster" "shared_autoscaling" {
  policy_id               = var.policy_id
  spark_version           = var.spark_version
  node_type_id            = var.deploy_worker_instance_pool != true ? var.node_type_id : null
  instance_pool_id        = var.deploy_worker_instance_pool == true ? var.instance_pool_id : null #future release
  driver_node_type_id     = var.deploy_worker_instance_pool != true ? var.driver_node_type_id : null
  num_workers             = var.num_workers != null ? var.num_workers : null
  autotermination_minutes = var.autotermination_minutes
  dynamic "autoscale" {
    for_each = var.num_workers == null && var.auto_scaling != null ? [var.auto_scaling] : []
    content {
      min_workers = autoscale.value[0]
      max_workers = autoscale.value[1]
    }

  }
}
