output "drg_id" {
  description = "ID of the Dynamic Routing Gateway"
  value       = oci_core_drg.main.id
}

output "vcn_ids" {
  description = "IDs of all VCNs"
  value = {
    internet   = oci_core_vcn.internet.id
    gen        = oci_core_vcn.gen.id
    workload_x = oci_core_vcn.workload_x.id
  }
}

output "subnet_ids" {
  description = "Key subnet IDs"
  value = {
    internet_public        = oci_core_subnet.internet_public.id
    internet_interfacing   = oci_core_subnet.internet_interfacing.id
    gen_public             = oci_core_subnet.gen_public.id
    gen_interfacing        = oci_core_subnet.gen_interfacing.id
    workload_x_web         = oci_core_subnet.workload_x_web.id
    workload_x_interfacing = oci_core_subnet.workload_x_interfacing.id
  }
}

output "drg_attachment_ids" {
  description = "DRG attachment IDs"
  value = {
    internet   = oci_core_drg_attachment.internet.id
    gen        = oci_core_drg_attachment.gen.id
    workload_x = oci_core_drg_attachment.workload_x.id
  }
}
