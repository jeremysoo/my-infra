# VCN for Workload Y
resource "oci_core_vcn" "this" {
  cidr_block     = var.cidr_block
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_name
}

# Web Subnet
resource "oci_core_subnet" "web" {
  vcn_id         = oci_core_vcn.this.id
  cidr_block     = var.web_subnet_cidr
  compartment_id = var.compartment_ocid
  display_name   = "${var.vcn_name}-web"
}

# Interfacing Subnet
resource "oci_core_subnet" "interfacing" {
  vcn_id         = oci_core_vcn.this.id
  cidr_block     = var.interfacing_subnet_cidr
  compartment_id = var.compartment_ocid
  display_name   = "${var.vcn_name}-interfacing"
}

# DRG Attachment
resource "oci_core_drg_attachment" "this" {
  drg_id       = var.drg_id
  vcn_id       = oci_core_vcn.this.id
  display_name = "${var.vcn_name}-attachment"
}

terraform {
  required_providers {
    oci = {
      source  = "registry.opentofu.org/oracle/oci"
      version = "= 5.47.0"
    }
  }
}
