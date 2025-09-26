output "compartment_id" {
  description = "compartment id"
  value = null_resource.compartment.triggers.ocid
}
