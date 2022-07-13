output "cluster_id" {
  description = "databricks cluster id"
  value       = databricks_cluster.shared_autoscaling.id
}
