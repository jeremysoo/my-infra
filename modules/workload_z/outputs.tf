# VCN ID
output "vcn_id" {
  value = oci_core_vcn.this.id
}

# Web Subnet ID
output "web_subnet_id" {
  value = oci_core_subnet.web.id
}

# Interfacing Subnet ID
output "interfacing_subnet_id" {
  value = oci_core_subnet.interfacing.id
}

# DRG Attachment ID
output "drg_attachment_id" {
  value = oci_core_drg_attachment.this.id
}
