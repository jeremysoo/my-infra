#################################
# VCNs (VPC equivalent)
#################################

resource "oci_core_vcn" "internet" {
  cidr_block     = "10.0.0.0/16"
  compartment_id = var.compartment_ocid
  display_name   = "internet-vcn"
}

resource "oci_core_vcn" "gen" {
  cidr_block     = "10.1.0.0/16"
  compartment_id = var.compartment_ocid
  display_name   = "gen-vcn"
}

resource "oci_core_vcn" "workload_x" {
  cidr_block     = "10.2.0.0/16"
  compartment_id = var.compartment_ocid
  display_name   = "workload-x-vcn"
}

#################################
# Subnets
#################################

resource "oci_core_subnet" "internet_public" {
  vcn_id         = oci_core_vcn.internet.id
  cidr_block     = "10.0.1.0/24"
  compartment_id = var.compartment_ocid
  display_name   = "internet-public"
}

resource "oci_core_subnet" "internet_interfacing" {
  vcn_id         = oci_core_vcn.internet.id
  cidr_block     = "10.0.2.0/24"
  compartment_id = var.compartment_ocid
  display_name   = "internet-interfacing"
}

resource "oci_core_subnet" "gen_public" {
  vcn_id         = oci_core_vcn.gen.id
  cidr_block     = "10.1.1.0/24"
  compartment_id = var.compartment_ocid
  display_name   = "gen-public"
}

resource "oci_core_subnet" "gen_interfacing" {
  vcn_id         = oci_core_vcn.gen.id
  cidr_block     = "10.1.2.0/24"
  compartment_id = var.compartment_ocid
  display_name   = "gen-interfacing"
}

resource "oci_core_subnet" "workload_x_web" {
  vcn_id         = oci_core_vcn.workload_x.id
  cidr_block     = "10.2.1.0/24"
  compartment_id = var.compartment_ocid
  display_name   = "workload-x-web"
}

resource "oci_core_subnet" "workload_x_interfacing" {
  vcn_id         = oci_core_vcn.workload_x.id
  cidr_block     = "10.2.2.0/24"
  compartment_id = var.compartment_ocid
  display_name   = "workload-x-interfacing"
}

#################################
# DRG (TGW equivalent)
#################################

resource "oci_core_drg" "main" {
  compartment_id = var.compartment_ocid
  display_name   = "main-drg"
}

#################################
# DRG Attachments
#################################

resource "oci_core_drg_attachment" "internet" {
  drg_id       = oci_core_drg.main.id
  vcn_id       = oci_core_vcn.internet.id
  display_name = "internet-attachment"
}

resource "oci_core_drg_attachment" "gen" {
  drg_id       = oci_core_drg.main.id
  vcn_id       = oci_core_vcn.gen.id
  display_name = "gen-attachment"
}

resource "oci_core_drg_attachment" "workload_x" {
  drg_id       = oci_core_drg.main.id
  vcn_id       = oci_core_vcn.workload_x.id
  display_name = "workload-x-attachment"
}
